-- With code from Optera
	
local scale = 2

-- update all oriented lights (head light) for the "car" entity
if data.raw["car"]["car"] and data.raw["car"]["car"].light then
  for k, v in pairs(data.raw["car"]["car"].light) do
    if v.type and v.type == "oriented" then
      if v.shift then
        v.shift[1] = v.shift[1] * (scale * 0.60)        -- Shift up-down from center of car  (when car is facing right)
        v.shift[2] = v.shift[2] * (scale * 0.875)       -- Shift right-laft from center of car (when car is facing right)
-- The last part is a down scale to not make it too weird 
      end
      v.size = v.size * scale       -- multiplier of the cone size
    end
  end
end
