Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.AvailableJobs = {                                     -- Only used when not using qb-jobs.
    ['trucker'] = { ['label'] = 'Trucker', ['isManaged'] = false },
    ['taxi'] = { ['label'] = 'Taxi', ['isManaged'] = false },
    ['tow'] = { ['label'] = 'Tow Truck', ['isManaged'] = false },
    ['reporter'] = { ['label'] = 'News Reporter', ['isManaged'] = false },
    ['garbage'] = { ['label'] = 'Garbage Collector', ['isManaged'] = false },
    ['bus'] = { ['label'] = 'Bus Driver', ['isManaged'] = false },
    ['hotdog'] = { ['label'] = 'Hot Dog Stand', ['isManaged'] = false }
}

Config.Cityhalls = {
    { -- Cityhall 1
        coords = vec3(-265.0, -963.6, 31.2),
        showBlip = true,
        blipData = {
            sprite = 487,
            display = 4,
            scale = 0.65,
            colour = 0,
            title = 'City Services'
        },
        licenses = {
            ['id_card'] = {
                label = 'ID Card',
                cost = 5000,
            },
            ['driver_license'] = {
                label = 'Driver License',
                cost = 1000
            },
            ['weaponlicense'] = {
                label = 'Weapon License',
                cost = 50000000,
                metadata = 'weapon'
            },
        }
    },
}

Config.Peds = {
    -- Cityhall Ped
    {
        model = 'a_m_m_hasjew_01',
        coords = vec4(-262.79, -964.18, 30.22, 181.71),
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        cityhall = true,
        zoneOptions = { -- Used for when UseTarget is false
            length = 3.0,
            width = 3.0,
            debugPoly = false
        }
    },
}
