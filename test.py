from pymakeparser import Makefile
import os

if __name__ == '__main__':
    file = os.path.abspath("./test.mk")

    os.chdir(r"D:\Projects\CProjects\pokeruby-port\decomp\pokeruby")
    mkfile = Makefile(file)

    for target in mkfile.targets.values():
        print("target:", target.name)
        for rule in target.rules:
            for command in rule.commands:
                print("    ", command)
            for pr in rule.prerequisites:
                print("       ", pr)

    print("\nVariables:\n")

    for var, val in mkfile._mkfile.variables._map.items():
        print(var, val)