-- Copyright (c) 2019 Optera

-- update all oriented lights (head light) for the "car" entity
if data.raw["car"]["car"] and data.raw["car"]["car"].light then
  for k, v in pairs(data.raw["car"]["car"].light) do
    if v.type and v.type == "oriented" then
      v.shift = {1.2, -28}
      v.size = 4
    end
  end
end
