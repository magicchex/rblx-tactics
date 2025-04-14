local Unit = {}
Unit.__index = Unit
local Entity = require('./Entity')
function Unit.new(name: string)
	local constructor = setmetatable(Unit, Entity)
	constructor.new(name)
	return constructor
end
return Unit
