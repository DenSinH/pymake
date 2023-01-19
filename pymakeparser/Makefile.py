from .pymake import data
from .pymake import parser
from .pymake import parserdata

from .Rule import Rule
from .Target import Target


class Makefile:

    def __init__(self, filepath):
        self.filepath = filepath
        self._mkfile = data.Makefile()
        self._mkfile.include(filepath)
        self._mkfile.finishparsing()
        self.targets = {}

        self._get_targets()

    def _resolve_all(self):
        """
        Resolve all pymake targets in makefile
        """
        resolved = set()
        while True:
            for name, target in self._mkfile.targets():
                if name in resolved:
                    continue
                target.resolvevpath(self._mkfile)
                resolved.add(name)
                break
            else:
                break

    def _get_targets(self):
        """
        resolve all and convert pymake targets to custom targets
        """
        self._resolve_all()

        for name, target in self._mkfile.targets():
            rules = []
            for rule in target.rules:
                commands = [command.cline for command in rule.getcommands(target, self._mkfile)]
                rules.append(Rule(commands=commands, prerequisites=list(rule.prerequisites)))

            variables = {}
            for var_name in target.variables._map:
                variables[var_name] = target.variables.get(var_name)[2].resolvestr(self._mkfile, target.variables)

            self.targets[name] = Target(
                name, rules, variables
            )
