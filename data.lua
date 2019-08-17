-- Copyright (c) 2019 Optera

local scale = 2

-- update all oriented lights (head light) for the "car" entity
if data.raw["car"]["car"] and data.raw["car"]["car"].light then
  for k, v in pairs(data.raw["car"]["car"].light) do
    if v.type and v.type == "oriented" then
      if v.shift then
        v.shift[1] = v.shift[1] * scale
        v.shift[2] = v.shift[2] * scale
      end
      v.size = v.size * scale
    end
  end
end
