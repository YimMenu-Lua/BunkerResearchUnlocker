natives.load_natives()

local function IsOnline() 
    return NETWORK.NETWORK_IS_SESSION_STARTED() and not NETWORK.NETWORK_IS_IN_TRANSITION() and not STREAMING.IS_PLAYER_SWITCH_IN_PROGRESS() 
end

-- Create the Bunker Research Submenu and Group
local Bunker_Menu = menu.get_submenu("Bunker Research"):add_category("Main")
local Bunker_Group = menu.create_group("Research Unlocker", 20)

-- Attach the group to the YimMenu renderer
Bunker_Menu:imgui(function()
    if IsOnline() then 
        Bunker_Group:draw() 
    else 
        ImGui.TextDisabled("Please join a freemode session to use the Bunker Research panel.") 
    end
end)

-- Array of 51 Bunker Research items and their packed bool IDs
local research_items = {
    { name = "APC SAM Battery", id = 15381 },
    { name = "Ballistic Equipment", id = 15382 },
    { name = "Half-track 20mm Quad Autocannon", id = 15428 },
    { name = "Weaponized Tampa Dual Remote Minigun", id = 15429 },
    { name = "Weaponized Tampa Rear-Firing Mortar", id = 15430 },
    { name = "Weaponized Tampa Front Missile Launchers", id = 15431 },
    { name = "Dune FAV 40mm Grenade Launcher", id = 15432 },
    { name = "Dune FAV 7.62mm Minigun", id = 15433 },
    { name = "Insurgent Pick-Up Custom .50 Cal Minigun", id = 15434 },
    { name = "Insurgent Pick-Up Custom Heavy Armor Plating", id = 15435 },
    { name = "Technical Custom 7.62mm Minigun", id = 15436 },
    { name = "Technical Custom Ram-bar", id = 15437 },
    { name = "Technical Custom Brute-bar", id = 15438 },
    { name = "Technical Custom Heavy Chassis Armor", id = 15439 },
    { name = "Oppressor Missiles", id = 15447 },
    { name = "Fractal Livery Set", id = 15448 },
    { name = "Digital Livery Set", id = 15449 },
    { name = "Geometric Livery Set", id = 15450 },
    { name = "Nature Reserve Livery", id = 15451 },
    { name = "Naval Battle Livery", id = 15452 },
    { name = "Anti-Aircraft Trailer Dual 20mm Flak", id = 15453 },
    { name = "Anti-Aircraft Trailer Homing Missile Battery", id = 15454 },
    { name = "Mobile Operations Center Rear Turrets", id = 15455 },
    { name = "Incendiary Rounds", id = 15456 },
    { name = "Hollow Point Rounds", id = 15457 },
    { name = "Armor Piercing Rounds", id = 15458 },
    { name = "Full Metal Jacket Rounds", id = 15459 },
    { name = "Explosive Rounds", id = 15460 },
    { name = "Pistol Mk II Mounted Scope", id = 15461 },
    { name = "Pistol Mk II Compensator", id = 15462 },
    { name = "SMG Mk II Holographic Sight", id = 15463 },
    { name = "SMG Mk II Heavy Barrel", id = 15464 },
    { name = "Heavy Sniper Mk II Night Vision Scope", id = 15465 },
    { name = "Heavy Sniper Mk II Thermal Scope", id = 15466 },
    { name = "Heavy Sniper Mk II Heavy Barrel", id = 15467 },
    { name = "Combat MG Mk II Holographic Sight", id = 15468 },
    { name = "Combat MG Mk II Heavy Barrel", id = 15469 },
    { name = "Assault Rifle Mk II Holographic Sight", id = 15470 },
    { name = "Assault Rifle Mk II Heavy Barrel", id = 15471 },
    { name = "Carbine Rifle Mk II Holographic Sight", id = 15472 },
    { name = "Carbine Rifle Mk II Heavy Barrel", id = 15473 },
    { name = "Proximity Mines", id = 15474 },
    { name = "Weaponized Tampa Heavy Chassis Armor", id = 15491 },
    { name = "Brushstroke Camo Mk II Weapon Livery", id = 15492 },
    { name = "Skull Mk II Weapon Livery", id = 15493 },
    { name = "Sessanta Nove Mk II Weapon Livery", id = 15494 },
    { name = "Perseus Mk II Weapon Livery", id = 15495 },
    { name = "Leopard Mk II Weapon Livery", id = 15496 },
    { name = "Zebra Mk II Weapon Livery", id = 15497 },
    { name = "Geometric Mk II Weapon Livery", id = 15498 },
    { name = "Boom! Mk II Weapon Livery", id = 15499 }
}

Bunker_Group:imgui(function()
    
    ImGui.Text("Management")
    ImGui.Separator()
    ImGui.Spacing()
    
    -- Master Unlock Button (Scaled to 768px to cover 380 + spacing + 380)
    if ImGui.Button("Unlock All Bunker Research", 768) then
        script.run_in_callback(function()
            for _, item in ipairs(research_items) do
                stats.set_packed_bool(item.id, true)
            end
            notify.success("Success", "All 51 research items have been unlocked!")
        end)
    end
    
    ImGui.Spacing()
    ImGui.Spacing()
    ImGui.Text("Individual Unlocks")
    ImGui.Separator()
    ImGui.Spacing()

    -- Generate a 2-Column Grid with larger 380px buttons
    for i, item in ipairs(research_items) do
        if ImGui.Button(item.name, 380) then
            script.run_in_callback(function()
                stats.set_packed_bool(item.id, true)
                notify.info("Research Unlocked", item.name)
            end)
        end
        
        -- Place the next button on the same line if the current index is odd
        if i % 2 ~= 0 and i ~= #research_items then
            ImGui.SameLine()
        end
    end
    
end)