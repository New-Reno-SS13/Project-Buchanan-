/*
---Fallout 13---
*/

/* here are the ammo sizes since nobody ever wrote these down
electron chargepack = 2400, this is currently only used in the RCW
mfc = 2000
ec = 1600

each one goes up by 4,000 power. why? nobody fucking knows lmao

also: most hitscan weapons have more charge than their normal projectile counterparts, since the actual projectiles are lower in damage and AP. this is to represent spammability.
*/


``PISTOL``


    /obj/item/ammo_casing/energy/laser/pistol/wattz
	projectile_type = /obj/item/projectile/beam/laser/pistol/wattz
	e_cost = 80

	/obj/item/ammo_casing/energy/laser/pistol/wattz/hitscan
	projectile_type = /obj/item/projectile/beam/laser/pistol/wattz/hitscan
	e_cost = 80

	/obj/item/ammo_casing/energy/laser/pistol/wattz/magneto
	projectile_type = /obj/item/projectile/beam/laser/pistol/wattz/magneto
	e_cost = 580

	/obj/item/ammo_casing/energy/laser/pistol/wattz/magneto/hitscan
	projectile_type = /obj/item/projectile/beam/laser/pistol/wattz/magneto/hitscan
	e_cost = 80

	/obj/item/ammo_casing/energy/laser/pistol/aer7
	projectile_type = /obj/item/projectile/beam/laser/pistol/aer7
	e_cost = 100
	fire_sound = 'sound/f13weapons/aep7fire.ogg'

    /obj/item/ammo_casing/energy/laser/pistol/aer7/hitscan 
	projectile_type = /obj/item/projectile/beam/laser/pistol/aer7/hitscan
	e_cost = 100


	/obj/item/ammo_casing/energy/laser/pistol/recharger
	projectile_type = /obj/item/projectile/beam/laser/pistol/recharger
	e_cost = 100 //20 shots
	fire_sound = 'sound/f13weapons/aep7fire.ogg'

	/obj/item/ammo_casing/energy/laser/pistol/recharger/hitscan
	projectile_type = /obj/item/projectile/beam/laser/pistol/recharger/hitscan
	e_cost = 100 //20 shots
	fire_sound = 'sound/f13weapons/aep7fire.ogg'


	/obj/item/ammo_casing/energy/laser/pistol/compbeam
	projectile_type = /obj/item/projectile/beam/laser/pistol/compbeam
	e_cost = 100
	harmful = FALSE


	/obj/item/ammo_casing/energy/laser/pistol/gammagun
	projectile_type = /obj/item/projectile/beam/laser/pistol/gamma
	e_cost = 200
	fire_sound = 'sound/weapons/laser3.ogg'


	``RIFLES``
	

	/obj/item/ammo_casing/energy/laser/rifle/solar
	projectile_type = /obj/item/projectile/beam/laser/rifle/solar
	e_cost = 100
	fire_sound = 'sound/f13weapons/laser_pistol.ogg'

    /obj/item/ammo_casing/energy/laser/rifle/solar/hitscan
	projectile_type = /obj/item/projectile/beam/laser/rifle/solar/hitscan
	e_cost = 100

	/obj/item/ammo_casing/energy/laser/rifle/musket
	projectile_type = /obj/item/projectile/beam/laser/rifle/musket
	e_cost = 400
	fire_sound = 'sound/f13weapons/aer9fire.ogg'
	fire_sound = 'sound/weapons/laser3.ogg'
	

	/obj/item/ammo_casing/energy/laser/rifle/wattz2k
	projectile_type = /obj/item/projectile/beam/laser/rifle/wattz2k
   e_cost = 100
   
   /obj/item/ammo_casing/energy/laser/rifle/wattz2k/hitscan
	projectile_type = /obj/item/projectile/beam/laser/rifle/wattz2k/hitscan
	e_cost = 100

    /obj/item/ammo_casing/energy/laser/rifle/aer9
	projectile_type = /obj/item/projectile/beam/laser/rifle/aer9
	e_cost = 80
	fire_sound = 'sound/f13weapons/aer9fire.ogg'

    /obj/item/ammo_casing/energy/laser/rifle/aer9
	projectile_type = /obj/item/projectile/beam/laser/rifle/aer9/hitscan
	e_cost = 80

	/obj/item/ammo_casing/energy/laser/rifle/aer12
	projectile_type = /obj/item/projectile/beam/laser/rifle/aer12
	e_cost = 100
	fire_sound = 'sound/f13weapons/aer9fire.ogg'

    /obj/item/ammo_casing/energy/laser/rifle/aer12/hitscan
	projectile_type = /obj/item/projectile/beam/laser/rifle/aer12/hitscan
	e_cost = 100
	fire_sound = 'sound/f13weapons/aer9fire.ogg'
	
	/obj/item/ammo_casing/energy/laser/rifle/aer14
	projectile_type = /obj/item/projectile/beam/laser/rifle/aer14
	e_cost = 166
	fire_sound = 'sound/f13weapons/aer14fire.ogg'

    /obj/item/ammo_casing/energy/laser/rifle/aer14/hitscan
	projectile_type = /obj/item/projectile/beam/laser/rifle/aer14/hitscan
	e_cost = 166

	/obj/item/ammo_casing/energy/laser/rifle/laer
	projectile_type = /obj/item/projectile/beam/laser/rifle//laer
	e_cost = 200
	fire_sound = 'sound/f13weapons/laerfire.ogg'

	/obj/item/ammo_casing/energy/laser/rifle/rcw
	projectile_type = /obj/item/projectile/beam/laser/rifle/rcw
	e_cost = 100
	fire_sound = 'sound/f13weapons/rcwfire.ogg'

    /obj/item/ammo_casing/energy/laser/rifle/rcw/hitscan
	projectile_type = /obj/item/projectile/beam/laser/rifle/rcw/hitscan
	e_cost = 100

    /obj/item/ammo_casing/energy/laser/rifle/tribeam
	projectile_type = /obj/item/projectile/beam/laser/rifle/tribeam
	pellets = 3
	variance = 20
	select_name = "scatter"
	e_cost = 200
	fire_sound = 'sound/f13weapons/tribeamfire.ogg'

    /obj/item/ammo_casing/energy/laser/rifle/tribeam/hitscan
	projectile_type = /obj/item/projectile/beam/laser/tribeam/hitscan
	pellets = 3
	variance = 45
	select_name = "tribeam"
	e_cost = 200

	/obj/item/ammo_casing/energy/laser/gatling
	projectile_type = /obj/item/projectile/beam/laser/gatling
	e_cost = 5

	/obj/item/ammo_casing/energy/laser/gatling/hitscan
	projectile_type = /obj/item/projectile/beam/laser/gatling/hitscan
	e_cost = 5



``PLASMA``


``PLASMA RIFLE/ANYKIND``



	/obj/item/ammo_casing/energy/plasma
	projectile_type = /obj/item/projectile/f13plasma
	select_name = "plasma burst"
	fire_sound = 'sound/weapons/plasma_cutter.ogg'
	e_cost = 200

    /obj/item/ammo_casing/energy/plasma/scatter
	projectile_type = /obj/item/projectile/f13plasma/scatter
	pellets = 3
	variance = 14
	select_name = "scatter"
	e_cost = 200


	``PISTOL``


    /obj/item/ammo_casing/energy/plasma/pistol
	projectile_type = /obj/item/projectile/f13plasma/pistol
	fire_sound = 'sound/f13weapons/plasma_pistol.ogg'
	e_cost = 200 //8 shots

    /obj/item/ammo_casing/energy/plasma/pistol/worn
	projectile_type = /obj/item/projectile/f13plasma/pistol/worn
	e_cost = 200 //8 shots

    /obj/item/ammo_casing/energy/plasma/pistol/glock
	projectile_type = /obj/item/projectile/f13plasma/pistol/glock
	e_cost = 160

    /obj/item/ammo_casing/energy/plasma/pistol/glock/extended
	e_cost = 80 //20 shots

    /obj/item/ammo_casing/energy/plasma/pistol/alien
	projectile_type = /obj/item/projectile/f13plasma/pistol/alien
	select_name = "alien projectile"
	icon_state = "ion"
	fire_sound = 'sound/f13weapons/plasma_pistol.ogg'
	e_cost = 1000 //four shots and you're out. use them wisely.

    /obj/item/ammo_casing/energy/plasma/miner
	projectile_type = /obj/item/projectile/f13plasma/repeater/mining
	select_name = "mining plasma stream"
	fire_sound = 'sound/f13weapons/plasma_rifle.ogg'
	e_cost = 2.4 //this seems very low but the weapon fires 5 5-damage shots per burst and only fires in bursts

// BETA // Obsolete
/obj/item/ammo_casing/energy/laser/pistol/lasertest
	projectile_type = /obj/item/projectile/beam/laser/pistol/lasertesting














	``unused`
	/obj/item/ammo_casing/energy/laser/ultra_pistol
	projectile_type = /obj/item/projectile/beam/laser/ultra_pistol
	e_cost = 80 //20 shots
	fire_sound = 'sound/f13weapons/aep7fire.ogg'

    /obj/item/ammo_casing/energy/laser/ultra_rifle
	projectile_type = /obj/item/projectile/beam/laser/ultra_rifle
	e_cost = 80 //20 shots
	fire_sound = 'sound/f13weapons/aep7fire.ogg'
`
    /obj/item/ammo_casing/energy/laser/lasgun/hitscan/focused
	projectile_type = /obj/item/projectile/beam/laser/lasgun/hitscan/focused
	e_cost = 400 //5 shots

	/obj/item/ammo_casing/energy/laser/autolaser/shock
	projectile_type = /obj/item/projectile/energy/teslacannon/oasis
	fire_sound = 'sound/weapons/taser.ogg'
	e_cost = 70 //35 shots

	/obj/item/ammo_casing/energy/miningplasma
	projectile_type = /obj/item/projectile/plasma
	select_name = "plasma burst"
	fire_sound = 'sound/weapons/plasma_cutter.ogg'
	e_cost = 100

    /obj/item/ammo_casing/energy/plasma/adv
	projectile_type = /obj/item/projectile/plasma/adv
	delay = 10
	e_cost = 10

    /obj/item/ammo_casing/energy/plasma/weak
	projectile_type = /obj/item/projectile/plasma/weak
	e_cost = 100