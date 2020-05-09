--
-- Name:        _preload.lua
-- Purpose:     Define the CLion action.
-- Author:      Ryan Pusztai
-- Modified by: Andrea Zanellato
--              Andrew Gough
--              Manu Evans
--              Yehonatan Ballas
-- Created:     2013/05/06
-- Copyright:   (c) 2008-2020 Jason Perkins and the Premake project
--
require "cmake"

local p = premake

newaction
{
	-- Metadata for the command line and help system

	trigger         = "clion",
	shortname       = "CLion",
	description     = "Generate CLion project",
	toolset         = "clang",

	-- The capabilities of this action

	valid_kinds     = { "ConsoleApp", "WindowedApp", "Makefile", "SharedLib", "StaticLib", "Utility" },
	valid_languages = { "C", "C++" },
	valid_tools     = {
		cc = { "gcc", "clang", "msc" }
	},

	-- Workspace and project generation logic

	onWorkspace = function(wks)
		p.modules.cmake.generateWorkspace(wks)
		p.modules.clion.generateWorkspace(wks)
	end,
	onProject = function(prj)
		p.modules.cmake.generateProject(prj)
	end,

	onCleanWorkspace = function(wks)
		p.modules.cmake.cleanWorkspace(wks)
		p.modules.clion.cleanWorkspace(wks)
	end,
	onCleanProject = function(prj)
		p.modules.cmake.cleanProject(prj)
	end,
}


--
-- Decide when the full module should be loaded.
--

return function(cfg)
	return (_ACTION == "clion")
end
