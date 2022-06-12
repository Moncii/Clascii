
class = require "clascii"

function love.load()

   math.randomseed(os.time())

   vector = class()
   function vector:init(x, y)
      self.x = x
      self.y = y
   end
   function vector:print()
      print(self.x..", "..self.y)
   end

   vectorZ = class(vector)
   function vectorZ:init(x, y, z)
      self.x = x
      self.y = y
      self.z = z
   end
   function vectorZ:print()
      print(self.x..", "..self.y..", "..self.z)
   end

   point = vector:new(128, 64)
   point:print()

   pointZ = vectorZ:new(32, 35, 21)
   pointZ:print()

end

function love.update()



end
