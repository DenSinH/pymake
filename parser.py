import pymake.data
import pymake.parser as parser
import pymake.parserdata as parserdata
from pymake.data import StringExpansion


def parse_file(fname):
    print(f"Parsing {fname}")
    with open(fname, "r") as f:
        s = f.read()

    dummy = pymake.data.Makefile()
    stmts = parser.parsestring(s, fname)
    for stmt in stmts:
        print(type(stmt), stmt)
        if isinstance(stmt, parserdata.SetVariable):
            if not isinstance(stmt.vnameexp, StringExpansion):
                raise NotImplementedError("Resolving non-trivial variable names")
            print(stmt.vnameexp.s, stmt.value)
        elif isinstance(stmt, parserdata.Rule):
            print(stmt.targetexp, stmt.depexp)
        elif isinstance(stmt, parserdata.Command):
            print(stmt.exp.resolvestr(dummy, pymake.data.Variables()))


if __name__ == '__main__':
    import sys
    from pymake.command import main

    dir = r"D:\Projects\CProjects\pokeruby-port\decomp\pokeruby"
    # main(sys.argv[1:], {}, dir, None)
    mkfile = pymake.data.Makefile()
    mkfile.include(f"{dir}/misc.mk")
    mkfile.finishparsing()

    resolved = set()
    while True:
        for name, target in mkfile.targets():
            if name in resolved:
                continue
            target.resolvevpath(mkfile)
            resolved.add(name)
            break
        else:
            break

    for name, target in mkfile.targets():
        target.resolvevpath(mkfile)
        print(f"{name}:")
        for rule in target.rules:
            for command in rule.getcommands(target, mkfile):
                print("    ", command.cline)
        for var_name in target.variables._map:
            print(f"    ", var_name, target.variables.get(var_name)[2].resolvestr(mkfile, target.variables))
