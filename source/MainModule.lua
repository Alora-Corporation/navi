local BANNER = [[


    ___   __       ___              ______                     
   /   | / /____  / (_)__  _____   / ____/________  __  ______ 
  / /| |/ __/ _ \/ / / _ \/ ___/  / / __/ ___/ __ \/ / / / __ \
 / ___ / /_/  __/ / /  __/ /     / /_/ / /  / /_/ / /_/ / /_/ /
/_/  |_\__/\___/_/_/\___/_/      \____/_/   \____/\__,_/ .___/ 
                                                      /_/      

Introducing Navi, Atelier's rule-based chat assistant to help you out with your day-to-day actions. Navi translates normal sentences into API commands using large database of rules and patterns. Navi is technically not AI, but is programmed to work just like one.

Navi is mainly scripted by AI, but is trained by humans!

To learn how to use Navi, visit ateliergrp.gitbook.io/docs/navi

]]

local Navi = {}

function Navi:translateToCommand(textToTranslate:string):string
	local Training = require(script.Training)
	local CommandPatterns = Training.CommandPatterns

	-- Convert text to lowercase for case-insensitive matching
	local lowerText = textToTranslate:lower()

	-- Remove common prefixes
	for _, prefix in ipairs(Training.Prefixes) do
		if lowerText:sub(1, #prefix) == prefix then
			lowerText = lowerText:sub(#prefix + 1)
			break
		end
	end

	-- Check each command pattern
	for command, patterns in pairs(CommandPatterns) do
		for _, pattern in ipairs(patterns) do
			if lowerText == pattern then
				return command
			end
		end
	end

	-- If no match found, return nil or handle accordingly
	return nil
end


function Navi:respond(message:string)
	local Training = require(script.Training)
	local Responses = Training.Responses
	local Config = require(script.Configuration)

	local response = {
		Success = false,
		CommandExecuted = nil,
		Response = nil
	}

	--// Find out the command
	local command = Navi:translateToCommand(message)

	if command == nil then
		response.Response = Responses.noCommandFound[math.random(#Responses.noCommandFound)]
		return response
	end
	
	--// Return if command is greeting
	if command == "greeting" then
		response.Response = Responses[command][math.random(#Responses[command])]
		response.Success = true
		return response
	end

	--// Execute the configured function
	if type(Config.Commands[command]) == "function" then
		local func = Config.Commands[command]
		local Success, Result = pcall(func)

		if Success then
			response.Response = Responses[command][math.random(#Responses[command])]
			response.Success = true
			response.CommandExecuted = command
		else
			response.Response = Responses.functionError[math.random(#Responses.functionError)]
		end
	else
		response.Response = Responses.functionError[math.random(#Responses.functionError)]
	end

	return response
end

return Navi
