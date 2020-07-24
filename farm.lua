--[[hoe space to plant seeds
plant seeds
apply bone meal until fully grown
chop plant to get drops
repeat to farm the crops and get drops from the plant
when inventory full put crops in chest
when out of bone meal get more from chest]]

function selectItem(itemName)
  local cont=true
  local i=1
  while cont do
    if turtle.getItemDetail(i).name==itemName then
      turtle.select(i)
      cont=false
    end
    i=i+1
    if i>16 then
      print("Warning Item "..itemName.." not found in inventory!")
      cont = false
    end
  end
end

function BoneMeal()
  cont=true
  while cont do
    cont=turtle.place()
  else
    cont=false
  end
end

print("how deep?")
nDeeep=tonumber(io.read())

for q=1,nDeeep do
  turtle.dig()
  turtle.select(2)
  turtle.place()
  turtle.select(1)
BoneMeal()
end
