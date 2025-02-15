local bunker_research = gui.get_tab("GUI_TAB_SELF"):add_tab("Bunker Research Unlocker")

local individual_unlocks_tab = bunker_research:add_tab("Unlock One By One")

local function add_unlock_button(tab, name, stat_id)
    tab:add_button(name, function()
        script.run_in_fiber(function()
            script.execute_as_script("shop_controller", function()
                stats.set_packed_stat_bool(stat_id, true)
                gui.show_message("Bunker Research Unlocker", name .. " has been unlocked!")
            end)
        end)
    end)
end

local function unlock_all_research()
    script.run_in_fiber(function()
        script.execute_as_script("shop_controller", function()
            local unlocks = {
                { "APC SAM Battery", 15381 },
                { "Ballistic Equipment", 15382 },
                { "Half-track 20mm Quad Autocannon", 15428 },
                { "Weaponized Tampa Dual Remote Minigun", 15429 },
                { "Weaponized Tampa Rear-Firing Mortar", 15430 },
                { "Weaponized Tampa Front Missile Launchers", 15431 },
                { "Dune FAV 40mm Grenade Launcher", 15432 },
                { "Dune FAV 7.62mm Minigun", 15433 },
                { "Insurgent Pick-Up Custom .50 Cal Minigun", 15434 },
                { "Insurgent Pick-Up Custom Heavy Armor Plating", 15435 },
                { "Technical Custom 7.62mm Minigun", 15436 },
                { "Technical Custom Ram-bar", 15437 },
                { "Technical Custom Brute-bar", 15438 },
                { "Technical Custom Heavy Chassis Armor", 15439 },
                { "Oppressor Missiles", 15447 },
                { "Fractal Livery Set", 15448 },
                { "Digital Livery Set", 15449 },
                { "Geometric Livery Set", 15450 },
                { "Nature Reserve Livery", 15451 },
                { "Naval Battle Livery", 15452 },
                { "Anti-Aircraft Trailer Dual 20mm Flak", 15453 },
                { "Anti-Aircraft Trailer Homing Missile Battery", 15454 },
                { "Mobile Operations Center Rear Turrets", 15455 },
                { "Incendiary Rounds", 15456 },
                { "Hollow Point Rounds", 15457 },
                { "Armor Piercing Rounds", 15458 },
                { "Full Metal Jacket Rounds", 15459 },
                { "Explosive Rounds", 15460 },
                { "Pistol Mk II Mounted Scope", 15461 },
                { "Pistol Mk II Compensator", 15462 },
                { "SMG Mk II Holographic Sight", 15463 },
                { "SMG Mk II Heavy Barrel", 15464 },
                { "Heavy Sniper Mk II Night Vision Scope", 15465 },
                { "Heavy Sniper Mk II Thermal Scope", 15466 },
                { "Heavy Sniper Mk II Heavy Barrel", 15467 },
                { "Combat MG Mk II Holographic Sight", 15468 },
                { "Combat MG Mk II Heavy Barrel", 15469 },
                { "Assault Rifle Mk II Holographic Sight", 15470 },
                { "Assault Rifle Mk II Heavy Barrel", 15471 },
                { "Carbine Rifle Mk II Holographic Sight", 15472 },
                { "Carbine Rifle Mk II Heavy Barrel", 15473 },
                { "Proximity Mines", 15474 },
				{ "Weaponized Tampa Heavy Chassis Armor", 15491 },
				{ "Brushstroke Camo Mk II Weapon Livery", 15492 },
				{ "Skull Mk II Weapon Livery", 15493 },
				{ "Sessanta Nove Mk II Weapon Livery", 15494 },
				{ "Perseus Mk II Weapon Livery", 15495 },
				{ "Leopard Mk II Weapon Livery", 15496 },
				{ "Zebra Mk II Weapon Livery", 15497 },
				{ "Geometric Mk II Weapon Livery", 15498 },
                { "Boom! Mk II Weapon Livery", 15499 }
            }

            for _, unlock in ipairs(unlocks) do
                stats.set_packed_stat_bool(unlock[2], true)
            end

            gui.show_message("Bunker Research Unlocker", "All research items have been unlocked!")
        end)
    end)
end

bunker_research:add_button("Unlock All Bunker Research", unlock_all_research)

add_unlock_button(individual_unlocks_tab, "APC SAM Battery", 15381)
add_unlock_button(individual_unlocks_tab, "Ballistic Equipment", 15382)
add_unlock_button(individual_unlocks_tab, "Half-track 20mm Quad Autocannon", 15428)
add_unlock_button(individual_unlocks_tab, "Weaponized Tampa Dual Remote Minigun", 15429)
add_unlock_button(individual_unlocks_tab, "Weaponized Tampa Rear-Firing Mortar", 15430)
add_unlock_button(individual_unlocks_tab, "Weaponized Tampa Front Missile Launchers", 15431)
add_unlock_button(individual_unlocks_tab, "Dune FAV 40mm Grenade Launcher", 15432)
add_unlock_button(individual_unlocks_tab, "Dune FAV 7.62mm Minigun", 15433)
add_unlock_button(individual_unlocks_tab, "Insurgent Pick-Up Custom .50 Cal Minigun", 15434)
add_unlock_button(individual_unlocks_tab, "Insurgent Pick-Up Custom Heavy Armor Plating", 15435)
add_unlock_button(individual_unlocks_tab, "Technical Custom 7.62mm Minigun", 15436)
add_unlock_button(individual_unlocks_tab, "Technical Custom Ram-bar", 15437)
add_unlock_button(individual_unlocks_tab, "Technical Custom Brute-bar", 15438)
add_unlock_button(individual_unlocks_tab, "Technical Custom Heavy Chassis Armor", 15439)
add_unlock_button(individual_unlocks_tab, "Oppressor Missiles", 15447)
add_unlock_button(individual_unlocks_tab, "Fractal Livery Set", 15448)
add_unlock_button(individual_unlocks_tab, "Digital Livery Set", 15449)
add_unlock_button(individual_unlocks_tab, "Geometric Livery Set", 15450)
add_unlock_button(individual_unlocks_tab, "Nature Reserve Livery", 15451)
add_unlock_button(individual_unlocks_tab, "Naval Battle Livery", 15452)
add_unlock_button(individual_unlocks_tab, "Anti-Aircraft Trailer Dual 20mm Flak", 15453)
add_unlock_button(individual_unlocks_tab, "Anti-Aircraft Trailer Homing Missile Battery", 15454)
add_unlock_button(individual_unlocks_tab, "Mobile Operations Center Rear Turrets", 15455)
add_unlock_button(individual_unlocks_tab, "Incendiary Rounds", 15456)
add_unlock_button(individual_unlocks_tab, "Hollow Point Rounds", 15457)
add_unlock_button(individual_unlocks_tab, "Armor Piercing Rounds", 15458)
add_unlock_button(individual_unlocks_tab, "Full Metal Jacket Rounds", 15459)
add_unlock_button(individual_unlocks_tab, "Explosive Rounds", 15460)
add_unlock_button(individual_unlocks_tab, "Pistol Mk II Mounted Scope", 15461)
add_unlock_button(individual_unlocks_tab, "Pistol Mk II Compensator", 15462)
add_unlock_button(individual_unlocks_tab, "SMG Mk II Holographic Sight", 15463)
add_unlock_button(individual_unlocks_tab, "SMG Mk II Heavy Barrel", 15464)
add_unlock_button(individual_unlocks_tab, "Heavy Sniper Mk II Night Vision Scope", 15465)
add_unlock_button(individual_unlocks_tab, "Heavy Sniper Mk II Thermal Scope", 15466)
add_unlock_button(individual_unlocks_tab, "Heavy Sniper Mk II Heavy Barrel", 15467)
add_unlock_button(individual_unlocks_tab, "Combat MG Mk II Holographic Sight", 15468)
add_unlock_button(individual_unlocks_tab, "Combat MG Mk II Heavy Barrel", 15469)
add_unlock_button(individual_unlocks_tab, "Assault Rifle Mk II Holographic Sight", 15470)
add_unlock_button(individual_unlocks_tab, "Assault Rifle Mk II Heavy Barrel", 15471)
add_unlock_button(individual_unlocks_tab, "Carbine Rifle Mk II Holographic Sight", 15472)
add_unlock_button(individual_unlocks_tab, "Carbine Rifle Mk II Heavy Barrel", 15473)
add_unlock_button(individual_unlocks_tab, "Proximity Mines", 15474)
add_unlock_button(individual_unlocks_tab, "Weaponized Tampa Heavy Chassis Armor", 15491)
add_unlock_button(individual_unlocks_tab, "Brushstroke Camo Mk II Weapon Livery", 15492)
add_unlock_button(individual_unlocks_tab, "Skull Mk II Weapon Livery", 15493)
add_unlock_button(individual_unlocks_tab, "Sessanta Nove Mk II Weapon Livery", 15494)
add_unlock_button(individual_unlocks_tab, "Perseus Mk II Weapon Livery", 15495)
add_unlock_button(individual_unlocks_tab, "Leopard Mk II Weapon Livery", 15496)
add_unlock_button(individual_unlocks_tab, "Zebra Mk II Weapon Livery", 15497)
add_unlock_button(individual_unlocks_tab, "Geometric Mk II Weapon Livery", 15498)
add_unlock_button(individual_unlocks_tab, "Boom! Mk II Weapon Livery", 15499)
