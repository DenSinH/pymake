

class Rule:

    def __init__(self, commands=None, prerequisites=None):
        self.commands = commands or []
        self.prerequisites = prerequisites or []