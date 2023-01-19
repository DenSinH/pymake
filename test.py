from pymakeparser import Makefile
import os

if __name__ == '__main__':
    file = os.path.abspath("./test.mk")
    mkfile = Makefile(file)

    for target in mkfile.targets.values():
        print(target.name)
        for rule in target.rules:
            for command in rule.commands:
                print("    ", command)
            for pr in rule.prerequisites:
                print("       ", pr)