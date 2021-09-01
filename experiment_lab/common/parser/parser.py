import abc


class Parser(abc.ABC):
    """Class to represent parsers."""

    def __init__(self, object_to_be_parsed):
        self.object_ready_to_be_parsed = self.prepare_object(object_to_be_parsed)

    @abc.abstractmethod
    def prepare_object(self, obj):
        """
        This function acts as a staging function, the return here will
        be used as input to the parse function.
        :param obj: the object to prepare.
        :return: the object ready to be parsed.
        """

    @abc.abstractmethod
    def parse(self):
        """
        Parses the object into the target object.
        :return: the object parsed.
        """
