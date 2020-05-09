--
-- Name:        clion.lua
-- Purpose:     Define the clion action(s).
-- Author:      Ryan Pusztai
-- Modified by: Andrea Zanellato
--              Andrew Gough
--              Manu Evans
--              Jason Perkins
--              Yehonatan Ballas
-- Created:     2013/05/06
-- Copyright:   (c) 2008-2020 Jason Perkins and the Premake project
--

local p = premake

p.modules.clion = {}
p.modules.clion._VERSION = p._VERSION

local clion = p.modules.clion
local project = p.project


function clion.generateWorkspace(wks)
    p.eol("\r\n")
    p.indent("  ")
    
    p.generate(wks, wks.location .. "/.idea/misc.xml", clion.workspace.generate)
end

function clion.cleanWorkspace(wks)
    p.clean.file(wks, wks.location .. "/.idea/misc.xml")
end

include("clion_workspace.lua")

include("_preload.lua")

return clion
