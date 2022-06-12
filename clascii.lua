
-- Clascii v0.1
-- Created by Moncii
-- MIT liscense

clascii = function(extends)

   local object = {}
   object.__index = object

   if(extends ~= nil) then
      setmetatable(object, extends)
      if(object.init ~= nil) then
         object:init()
      end
   end

   function object:new(...)

      -- TODO Inheritance

      instance = setmetatable({}, self)

      if(instance.init ~= nil) then
         instance:init(...)
      end

      return instance

   end

   return object

end

return clascii
