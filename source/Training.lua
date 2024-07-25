local BANNER = [[


    ___   __       ___              ______                     
   /   | / /____  / (_)__  _____   / ____/________  __  ______ 
  / /| |/ __/ _ \/ / / _ \/ ___/  / / __/ ___/ __ \/ / / / __ \
 / ___ / /_/  __/ / /  __/ /     / /_/ / /  / /_/ / /_/ / /_/ /
/_/  |_\__/\___/_/_/\___/_/      \____/_/   \____/\__,_/ .___/ 
                                                      /_/      


]]

local Responses = {
	noCommandFound = {
		"Sorry, I didn't catch that. Could you try again?",
		"I'm not sure what you mean. Could you rephrase that?",
		"Apologies, I didn't understand your message.",
		"I didn't catch that. Could you please clarify?",
		"I'm sorry, I couldn't interpret your request."
	},
	functionError = {
		"Oops, there was an error while trying to perform that action.",
		"I encountered an issue while attempting to complete your request.",
		"Sorry, I couldn't execute that command due to a technical problem.",
		"There seems to be a problem. Please try again later.",
		"I'm sorry, something went wrong. Let's try that again."
	},
	greeting = {
		"Hello! How can I assist you today?",
		"Hello! Navi here to assist! How can I help you today?",
		"Hi there! What can I do for you?",
		"Hey! Need any help?",
		"Greetings! How can I be of service?"
	},
	turnOnLights = {
		"Lights are now on. Enjoy the brightness!",
		"I've turned on the lights. The room is brighter now.",
		"Lights activated. Everything is illuminated!",
		"The room is getting brighter as I turn on the lights.",
		"Illuminating the space. Lights are on!"
	},
	turnOffLights = {
		"Lights are now off. Enjoy the peace!",
		"I've turned off the lights. The room is dimmer now.",
		"Lights deactivated. It's now darker.",
		"The room is dimming down as I turn off the lights.",
		"Darkness engulfs the room. Lights are off!"
	},
	dimLights = {
		"I dimmed the lights. The room is getting cozy!",
		"Lights are now dimmed. Enjoy the cozy atmosphere!",
		"Dimming the lights for a cozy ambiance.",
		"The room is getting cozy as I lower the brightness.",
		"Reducing the light intensity. The room feels more relaxing now."
	},
}
local CommandPatterns = {
	turnOnLights = {
		"lumos",
		"turn on the lights",
		"lights on",
		"activate lights",
		"switch on the lights",
		"switch on lights",
		"lights up",
		"illuminate",
		"light up",
		"brighten the room",
		"engage lights"
	},
	turnOffLights = {
		"nox",
		"turn off the lights",
		"lights off",
		"deactivate lights",
		"switch off the lights",
		"switch off lights",
		"lights down",
		"darken the room",
		"extinguish lights",
		"turn the lights out"
	},
	dimLights = {
		"dim the lights",
		"lower the lights",
		"reduce brightness",
		"dim lights",
		"reduce light",
		"lower brightness",
		"it's too bright"
	},
	greeting = {
		"hello",
		"hi",
		"hey",
		"greetings",
		"good day",
		"howdy",
		"hey there"
	}
}


return {CommandPatterns = CommandPatterns, Responses = Responses}
