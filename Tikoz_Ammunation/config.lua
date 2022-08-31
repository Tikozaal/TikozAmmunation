Config = {}

Config.PPA = true -- Si vous voulez que les employés puissent donné le permis de port d'arme dans le menu

Config.Commande = "ammu" -- Nom de la commande pour ouvrir le menu 

Config.Blip = {

    UseBlip = true,

    Pos = vector3(810.23, -2159.34, 28.62),

    Id = 110, -- Vous pouvez changer le blip et la couleur avec : https://docs.fivem.net/docs/game-references/blips/
    
    Taille = 1.0,
    
    Couleur = 47,

    Nom = "Ammunation"
}


Config.Pos = {

    Garage = vector3(822.24, -2147.53, 27.71),

    SpawnVehicule = vector4(822.02, -2142.42, 28.88, 4.86),

    DeleteVeh = vector3(822.02, -2142.42, 27.88),

    Shop = vector3(810.23, -2159.34, 28.62),

    Coffre = vector3(827.26, -2150.47, 28.62),

    Boss = vector3(808.09, -2157.02, 28.62)

}

listevehicule = {
    {name = "Sultan", label = "sultan"},
    {name = "Baller", label = "Baller7"}
}

Config.CategoryShop = { -- Vous pouvez choisir la catégorie que vous voulez dans le shop. true ou false

    Armeblanche = true,

    Pistolet = true,

    Mitraillette = true,

    FusilaPompe = true,

    FusilAssault = true,

    FusilMitrailleur = true,

    Sniper = true, 
    
    Lanceur = true,

    Grenade = true,

    Accessoire = true
    
}

listearmeblanche = { -- Vous pouvez choisir les items par catégorie, pour trouvé le nom de l'arme vous pouvez regardé sur : https://wiki.rage.mp/index.php?title=Weapons
    {name = "Couteau", label = "weapon_knife", prix = 100},
    {name = "Batte de baseball", label = "weapon_bat", prix = 150},
    {name = "Machette", label = "weapon_machete", prix = 250}
}

listepistolet = {
    {name = "Pistolet de combat", label = "weapon_combatpistol", prix = 750},
    {name = "Pistolet", label = "weapon_pistol", prix = 1000},
    {name = "Pistolet cal.50", label = "weapon_pistol50", prix = 1200}
}

listemitraillette = {
    {name = "Micro SMG", label = "weapon_microsmg", prix = 1500},
    {name = "Combat PDW", label = "weapon_combatpdw", prix = 1750},
    {name = "SMG", label = "weapon_smg", prix = 2000}
}

listepompe = {
    {name = "Canon scié", label = "weapon_sawnoffshotgun", prix = 1800},
    {name = "Fusil à pompe", label = "weapon_pumpshotgun", prix = 2000},
    {name = "Fusil à pompe tactique", label = "weapon_heavyshotgun", prix = 2500}
}

listeassault = {
    {name = "AK compact", label = "weapon_compactrifle", prix = 2500},
    {name = "AK-47", label = "weapon_assaultrifle", prix = 3000},
    {name = "Carabine", label = "weapon_carbinerifle", prix = 3500}
}

listefusilmitrailleur = {
    {name = "Fusil mitrailleur", label = "weapon_mg", prix = 5000},
    {name = "Fusil mitrailleur MK2", label = "weapon_combatmg_mk2", prix = 6000}
}

listesniper = {
    {name = "Sniper", label = "weapon_sniperrifle", prix = 5500},
    {name = "Sniper MK2", label = "weapon_heavysniper_mk2", prix = 6000}
}

listelanceur = {
    {name = "Feu d'artifice", label = "weapon_firework", prix = 3000},
    {name = "RPG", label = "weapon_rpg", prix = 6000}
}

listegrenade = {
    {name = "Grenade lacrymogène", label = "weapon_bzgas", prix = 500},
    {name = "Cocktail Molotov", label = "weapon_molotov", prix = 750},
    {name = "Grenade explosive", label = "weapon_grenade", prix = 1000}
}

listeaccessoire = { -- Les accessoires c'est pour les items. Exemple : Chargeur, silencieux, poignée..
    {name = "Eau", label = "water", prix = 500},
}


