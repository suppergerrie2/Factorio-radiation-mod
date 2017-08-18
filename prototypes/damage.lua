local radiationDamage = table.deepcopy(data.raw["damage-type"]["acid"])

radiationDamage.name = "radiation"
radiationDamage.type= "damage-type"

data:extend{radiationDamage}