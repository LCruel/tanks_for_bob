data:extend(
{
--Buildings/Components
  {
    type = "item",
    name = "tank-assembling-machine",
    icon = "__tanks_for_bob__/graphics/icons/tank-assembling-machine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "y[assembling-machine-2]",
    place_result = "tank-assembling-machine",
    stack_size = 50
  },
  {
    type = "item",
    name = "tank-ammo-assembling-machine",
    icon = "__tanks_for_bob__/graphics/icons/tank-ammo-assembling-machine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "z[assembling-machine-2]",
    place_result = "tank-ammo-assembling-machine",
    stack_size = 50
  },
  {
    type = "item",
    name = "tank-light-chasis-wlsk",
    icon = "__tanks_for_bob__/graphics/icons/tank-light-chasis-wlsk.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "tank-vehicle-upgrades",
	order = "a[tank-vehicle-upgrades]-a[tank-light-chasis-wlsk]",
    stack_size = 1
  },
--Tank Ammo Components
	{
    type = "item",
    name = "tank-ammo-universal-casing",
    icon = "__tanks_for_bob__/graphics/icons/universal-casing.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "tank-ammo-components",
    order = "a[tank-ammo-components]-a[universal-casing]",
    stack_size = 100
	},
	{
    type = "item",
    name = "tank-ammo-universal-explosive",
    icon = "__tanks_for_bob__/graphics/icons/universal-explosive.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "tank-ammo-components",
    order = "a[tank-ammo-components]-b[universal-explosive]",
    stack_size = 100
	},
    {
    type = "item",
    name = "land-mine-poison",
    icon = "__base__/graphics/icons/land-mine.png",
    flags = {"goes-to-quickbar"},
    damage_radius = 5,
    subgroup = "gun",
    order = "f[land-mine]",
    place_result = "land-mine-poison",
    stack_size = 20,
    trigger_radius = 1
  },
--fish-kit
  {
    type = "capsule",
    name = "fish-kit",
    icon = "__tanks_for_bob__/graphics/icons/fish-kit.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
		ammo_category = "capsule",
        cooldown = 10,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects = 
              {
                type = "damage",
                damage = {type = "physical", amount = -20}
              }
            }
          }
        }
      }
    },
    subgroup = "tank-ammo-infantry",
    order = "z[tank-ammo]",
    stack_size = 100
  },
}
)