--[[
if turtle has less than 10 boneMeal then get boneMeal from right chest
check for seeds in the turtle
hoe space to plant seeds
plant seeds
apply bone meal until fully grown
chop plant to get drops

Loop continues until: out of seeds, or out of boneMeal]]

--assume the only dye in the turtle or in the chest is boneMeal

local seeds="minecraft:wheat_seeds"
local boneMeal="minecraft:dye"

function selectItem(itemName)
  local cont=true
  local i=1
  while cont do
    if turtle.getItemCount(i)>0 then
      if turtle.getItemDetail(i).name==itemName then
        turtle.select(i)
        cont=false
        return true
      end
    end
    i=i+1
    if i==16 and cont then
      print("Warning Item "..itemName.." not found in inventory!")
      cont = false
      return false
    end
  end
end

function countItem(itemName)
  count=0
  for i=1,16 do
    if turtle.getItemCount(i)>0 then
      if turtle.getItemDetail(i).name==itemName then
        count=count+turtle.getItemCount(i)
      end
    end
  end
  return count
end

function BoneMeal()
  local boneMeal="minecraft:dye"
  local cont=true
  while cont do
    selectItem(boneMeal)
    cont=turtle.place()
  end
end 

function boneGet()
    local boneMeal="minecraft:dye"
    if countItem(boneMeal)<10 then
      turtle.turnRight()
      if turtle.suck()==false then
        return false
      else
        return true
      end
      turtle.turnLeft()
    else
      return true
    end
end

function seedCheck()
  local seeds="minecraft:wheat_seeds"
  local out=selectItem(seeds)
  if out==true then
    return true
  else
    return false
  end
end

--print("how deep?")
--nDeeep=tonumber(io.read())

local cont
-- if seedCheck() then
--   print("Seed check is true")
-- else
--   print("seed Check is false")
-- end



if seedCheck() and boneGet() then
  cont=true
else
  cont=false
  print("seeds or BoneMeal not found")
end

while cont do
  turtle.dig()
  selectItem(seeds)
  turtle.place()
  BoneMeal()
  turtle.dig()

  bGet=boneGet()
  sCheck=seedCheck()

  if bGet==false or sCheck==false then
    cont=false
  end
end
