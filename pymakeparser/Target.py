class Target:

    def __init__(self, name, rules=None, variables=None):
        self.name = name
        self.rules = rules or []
        self.variables = variables or {}