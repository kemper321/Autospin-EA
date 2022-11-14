local hash = "21d5a9bd8f0c21306ac44369eaf52808a85a6b40bc26d06c53477c36f9553b5842273a0c18e669994cce7fbbb7c0bc31"
local repstorage = game.GetService(game, "ReplicatedStorage")
local spell_lib = repstorage.SpellLibrary
if tostring(getscripthash(spell_lib)) ~= hash then return print("Module Script Updated, Refusing To Execute") end
local spells = require(spell_lib)
local info = {
   MagicCircle = "Gravity", -- Change to whatever u want
   Anim = "Cast",
   Charge = true,
   CanMove = true,
   Spin = false,
   CastTime = -1,
   MaxCharge = 10^1000,
   ChargeMultiplier = 10^1000,
   Range = 10^1000,
   EndLag = 0,
   MaxChargeEndlag = 0,
}

for i,v in next, spells do
   for i2,v2 in next, info do
       if spells[i][i2] then
           spells[i][i2] = v2
       end
   end
end
