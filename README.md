# Atelier Navi
by Atelier Group

Navi is Atelier’s rule-based chat assistant to help you out with your day-to-day actions. Works just like an AI, mainly scripted by AI, trained by humans.

## Contributing
Anyone is welcomed to contribute to Atelier Navi. Below are some things you'll need to know first if you want to contribute.

### How Navi understands commands
Navi's Training module consists of several types of **command patterns** and **responses** that Navi can respond with. In Navi, actions that you want Navi to perform are called **Commands**. When asked to perform a action according to a message, Navi checks the message and matches it with all **command patterns** in the Training module.

For example, the message is "switch off lights". If there is a command pattern in the Training module which is exactly "switch off lights" and is associated with the **turnOffLights** command, then Navi will turn off the lights.

### How to contribute to Navi's Training module
Command patterns in Navi's Training module is associated with a **command shortcode**. You can help Navi understand more types of messages by adding new command patterns to Navi's Training module.

That's all, thank you and happy contributing!
