from errbot import BotPlugin, botcmd


class RedisPlugin(BotPlugin):
    def callback_message(self, message):
        """
        This method is called always that a messages is created on the room
        we are going to use this when a message is about join/left users
        generate information about the users present on chatroom and
        store that information on REDIS.
        """
        pass
