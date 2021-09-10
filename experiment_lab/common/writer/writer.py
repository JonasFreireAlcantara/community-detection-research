import abc


class Writer(abc.ABC):
    """Class to represent writers."""

    def __init__(self, object_to_be_write, path):
        self.object_ready_to_be_write = self.prepare_object(object_to_be_write)
        self.path = path

    @abc.abstractmethod
    def prepare_object(self, obj):
        """
        This function acts as a staging function, the return here will
        be used as input to the write function.
        :param obj: the object to prepare.
        :return: the object ready to be write.
        """

    @abc.abstractmethod
    def write(self):
        """
        Writes the object into the target place.
        """
