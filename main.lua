
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

   point = vector:new(128, 64)
   point:print()

   vectorz = class(vector)
   function vectorz:init(x, y, z)
      vector:super(x, y)
      self.z = z
   end
   function vectorz:print()
      print(self.x..", "..self.y..", "..self.z)
   end

   pointz = vectorz:new(13, 47, 56)
   pointz:print()

   pointz2 = vectorz:new(2354, 667, 875)
   pointz2:print()

end

function love.update()



end
