--[[hoe space to plant seeds
plant seeds
apply bone meal until fully grown
chop plant to get drops
repeat to farm the crops and get drops from the plant
when inventory full put crops in chest
when out of bone meal get more from chest]]


function BoneMeal()
  cont=true
  while cont do
    cont=turtle.place()
  else
    cont=false
  end
end

print("how Deep?")
nDeeep=tonumber(io.read())

for q=1,nDeeep do
  turtle.dig()
  turtle.select(2)
  turtle.place()
  turtle.select(1)
BoneMeal()
end
