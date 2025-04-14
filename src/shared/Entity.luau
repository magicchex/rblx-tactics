--[=[
    @class Entity
    An abstract class for characters and game objects
    @prop name string
]=]
local Entity = {}
Entity.__index = Entity

function Entity.new(name: string)
	local constructor = setmetatable({}, Entity)
	if typeof(name) ~= 'string' then
		error('Entity class must specify a name parameter of type string!')
	end
	constructor.name = name
	return constructor
end

function Entity:getName(): string
	return self.name
end

return Entity
