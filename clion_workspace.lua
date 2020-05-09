--
-- Name:        clion_workspace.lua
-- Purpose:     Generate a CLion file.
-- Author:      Ryan Pusztai
-- Modified by: Andrea Zanellato
--              Manu Evans
--              Yehonatan Ballas
-- Created:     2013/05/06
-- Copyright:   (c) 2008-2020 Jason Perkins and the Premake project
--

local p = premake
local project = p.project
local clion = p.modules.clion

clion.workspace = {}
local m = clion.workspace

--
-- Generate a CLion file
--
function m.generate(wks)
	p.utf8()

	-- replacing CMakeLists.txt as the default root dir with the Premake script's path
	p.w('<?xml version="1.0" encoding="UTF-8"?>')
	p.w('<project version="4">')
	p.w('<component name="CMakeWorkspace" PROJECT_DIR="$PROJECT_DIR$">')
	p.w('	<contentRoot DIR="%s" />', _MAIN_SCRIPT_DIR)
	p.w('</component>')
	p.w('</project>')
end
