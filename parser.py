import pymake.data
import pymake.parser as parser
import pymake.parserdata as parserdata
from pymake.data import StringExpansion


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
