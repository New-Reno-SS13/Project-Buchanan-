//In this document: Pistol calibre cartridges values for damage and penetration.

//////////////////////
// AMMUNITION TYPES //
//////////////////////
/*
FMJ (full metal jacket)		=	Baseline
+P/+P+ = used by simplemobs
SHOCK = low-severity emp, -damage base, bonus burn damage (5-10)
Incin = -damage, sets target on fire
Acid = Heavy -damage, coats target in small amount of acid (1-5u)
Uranium = Irradiates, high AP, lower damage
Micro-Shrapnel = Wound bonus, embed bonus, high falloff for both
Contaminated = -damage, spawns a gas cloud that heavily reduces healing efficiency
Improvised = -1 to -4 damage
Civilian round				=	-10% damage. AP reduced by 50%
*/

/*
Ammo groupings for specialty:
5mm/22lr: Shock
Small Pistol calibers (38 357 9mm): Acid/Incin
Large Pistol Calibers (44 45 10mm): Incin
Very Large pistol (45-70): Knockback, Acid
autorifle calibers (5.56 7.62):
Micro-Shrapnel (wound/embed)
heavy rifle calibers (12.7, 14mm, 7.62):
Uranium, Contaminated
*/

// Explanation: Two major ammo stats, AP and Damage. Bullets placed in classes. Light rounds for example balanced with each other, one more AP, one more Damage.
// Balance between classes mostly done on the gun end, bigger rounds typically fire slower and have more recoil. They are not supposed to be totally equal either.

////////////////////
// .22 LONG RIFLE //
////////////////////		-very light round

/obj/item/projectile/bullet/c22
	name = ".22lr bullet"
	damage = 14
	sharpness = SHARP_EDGED
	bare_wound_bonus = 10
	is_reflectable = TRUE

/obj/item/projectile/bullet/c22/rubber
	name = ".22lr rubber bullet"
	damage = 3
	stamina = 24
	sharpness = SHARP_NONE

/obj/item/projectile/bullet/c22/shock
	name = ".22lr shock bullet"
	damage = 14
	wound_bonus = 0
	sharpness = SHARP_NONE

/obj/item/projectile/bullet/c22/shock/on_hit(atom/target, blocked = FALSE)
	..()
	target.emp_act(15)//5 severity is very, very low

/obj/item/projectile/bullet/c38
	name = ".38 bullet"
	damage = 19
	sharpness = SHARP_EDGED
	wound_bonus = 8
	is_reflectable = TRUE

/obj/item/projectile/bullet/c38/rubber
	name = ".38 rubber bullet"
	damage = 5
	stamina = 29
	wound_bonus = 0
	sharpness = SHARP_NONE

/obj/item/projectile/bullet/c38/improv
	damage = 13
	wound_bonus = 6

/obj/item/projectile/bullet/c38/acid
	name = ".38 acid-tipped bullet"
	damage = 10
	var/acid_type = /datum/reagent/toxin/acid/fluacid
	is_reflectable = FALSE

/obj/item/projectile/bullet/c38/acid/Initialize()
	. = ..()
	create_reagents(5, NO_REACT, NO_REAGENTS_VALUE)
	reagents.add_reagent(acid_type, 5)

/obj/item/projectile/bullet/c38/acid/on_hit(atom/target, blocked = FALSE)
	..()
	if(isliving(target))
		var/mob/living/M = target
		reagents.reaction(M, TOUCH)
		reagents.trans_to(M, reagents.total_volume)


/obj/item/projectile/bullet/c38/incendiary
	name = ".38 incendiary bullet"
	damage = 10
	var/fire_stacks = 1

/obj/item/projectile/bullet/c38/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()


/obj/item/projectile/bullet/c9mm
	name = "9mm FMJ bullet"
	damage = 16.5
	sharpness = SHARP_EDGED
	wound_bonus = 10
	is_reflectable = TRUE

/obj/item/projectile/bullet/c9mm/op //not in
	name = "9mm +P bullet"
	damage = 26.5
	sharpness = SHARP_EDGED
	wound_bonus = 15

/obj/item/projectile/bullet/c9mm/rubber
	name = "9mm rubber bullet"
	damage = 6
	stamina = 27
	wound_bonus = 0
	sharpness = SHARP_NONE

/obj/item/projectile/bullet/c9mm/acid
	name = "9mm acid-tipped bullet"
	damage = 10.5
	wound_bonus = 0
	sharpness = SHARP_NONE
	var/acid_type = /datum/reagent/toxin/acid/fluacid
	is_reflectable = FALSE

/obj/item/projectile/bullet/c9mm/acid/Initialize()
	. = ..()
	create_reagents(2.5, NO_REACT, NO_REAGENTS_VALUE)
	reagents.add_reagent(acid_type, 2.5)

/obj/item/projectile/bullet/c9mm/acid/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(isliving(target))
		var/mob/living/M = target
		reagents.reaction(M, TOUCH)
		reagents.trans_to(M, reagents.total_volume)

/obj/item/projectile/bullet/c9mm/incendiary
	name = "9mm incendiary bullet"
	damage = 11.5
	var/fire_stacks = 1

/obj/item/projectile/bullet/c9mm/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()

/obj/item/projectile/bullet/c9mm/improv
	damage = 11.5
	sharpness = SHARP_EDGED
	wound_bonus = 5

/obj/item/projectile/bullet/c9mm/simple //for simple mobs, separate to allow balancing
	name = "9mm bullet"
	damage = 26.5
	sharpness = SHARP_EDGED
	wound_bonus = 15




/obj/item/projectile/bullet/c10mm
	name = "10mm FMJ bullet"
	damage = 20
	sharpness = SHARP_EDGED
	wound_bonus = 14
	is_reflectable = TRUE

/obj/item/projectile/bullet/c10mm/simple
	name = "10mm FMJ bullet"
	damage = 30
	sharpness = SHARP_EDGED
	wound_bonus = 19

/obj/item/projectile/bullet/c10mm/rubber
	name = "10mm rubber bullet"
	damage = 6
	stamina = 28
	wound_bonus = 0
	sharpness = SHARP_NONE

/obj/item/projectile/bullet/c10mm/incendiary
	name = "10mm incendiary bullet"
	damage = 14
	var/fire_stacks = 1

/obj/item/projectile/bullet/c10mm/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()




/obj/item/projectile/bullet/c45
	name = ".45 FMJ bullet"
	damage = 18
	sharpness = SHARP_EDGED
	wound_bonus = 15
	is_reflectable = TRUE

/obj/item/projectile/bullet/c45/simple
	name = ".45 FMJ bullet"
	damage = 28
	sharpness = SHARP_EDGED
	wound_bonus = 20

/obj/item/projectile/bullet/c45/op //not in
	name = ".45 +P bullet"
	damage = 28
	sharpness = SHARP_EDGED
	wound_bonus = 20

/obj/item/projectile/bullet/c45/rubber
	name = ".45 rubber bullet"
	damage = 5
	stamina = 32
	sharpness = SHARP_NONE
	wound_bonus = 0

/obj/item/projectile/bullet/c45/incendiary
	name = ".45 incendiary bullet"
	damage = 12
	var/fire_stacks = 1

/obj/item/projectile/bullet/c45/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()



/obj/item/projectile/bullet/a357
	name = ".357 FMJ bullet"
	damage = 23
	sharpness = SHARP_EDGED
	armour_penetration = 0.1
	wound_bonus = 23


// 3 ricochets, more than enough to kill anything that moves
/obj/item/projectile/bullet/a357/ricochet
	name = ".357 ricochet bullet"
	damage = 17
	ricochets_max = 3
	ricochet_chance = 140
	ricochet_auto_aim_angle = 50
	ricochet_auto_aim_range = 6
	ricochet_incidence_leeway = 80

/obj/item/projectile/bullet/a357/acid
	name = ".357 acid-tipped bullet"
	damage = 17
	wound_bonus = 0
	sharpness = SHARP_NONE
	var/acid_type = /datum/reagent/toxin/acid/fluacid

/obj/item/projectile/bullet/a357/acid/Initialize()
	. = ..()
	create_reagents(5, NO_REACT, NO_REAGENTS_VALUE)
	reagents.add_reagent(acid_type, 2.5)

/obj/item/projectile/bullet/a357/acid/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(isliving(target))
		var/mob/living/M = target
		reagents.reaction(M, TOUCH)
		reagents.trans_to(M, reagents.total_volume)

/obj/item/projectile/bullet/a357/incendiary
	name = ".357 incendiary bullet"
	damage = 17
	var/fire_stacks = 1

/obj/item/projectile/bullet/a357/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()

/obj/item/projectile/bullet/a357/improv
	name = "poor .357 bullet"
	damage = 17
	sharpness = SHARP_EDGED
	wound_bonus = 15


/obj/item/projectile/bullet/m44
	name = ".44 FMJ bullet"
	damage = 28
	sharpness = SHARP_EDGED
	armour_penetration = 0.1
	wound_bonus = 28



/obj/item/projectile/bullet/m44/simple //for simple mobs, separate to allow balancing
	name = ".44 bullet"
	damage = 38
	sharpness = SHARP_EDGED
	armour_penetration = 0.1
	wound_bonus = 33

/obj/item/projectile/bullet/m44/incendiary
	name = ".44 incendiary bullet"
	damage = 22
	var/fire_stacks = 1

/obj/item/projectile/bullet/m44/incendiary/on_hit(atom/target, blocked = FALSE)
	. = ..()
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		M.adjust_fire_stacks(fire_stacks)
		M.IgniteMob()




/obj/item/projectile/bullet/mm14
	name = "14mm FMJ bullet"
	damage = 32
	sharpness = SHARP_EDGED
	armour_penetration = 0.2
	wound_bonus = 32

/obj/item/projectile/bullet/mm14/contam
	name = "14mm contaiminated bullet"
	damage = 26
	var/smoke_radius = 1

/obj/item/projectile/bullet/mm14/contam/Initialize()
	. = ..()
	create_reagents(15, NO_REACT, NO_REAGENTS_VALUE)
	reagents.add_reagent(/datum/reagent/toxin/metabtoxin, 15)

/obj/item/projectile/bullet/mm14/contam/on_hit(atom/target, blocked = FALSE)
	. = ..()
	var/location = get_turf(src)
	var/datum/effect_system/smoke_spread/chem/S = new
	S.attach(location)
	playsound(location, 'sound/effects/smoke.ogg', 50, 1, -3)
	if(S)
		S.set_up(src.reagents, smoke_radius, location, 0)
		S.start()

/*
/obj/item/projectile/bullet/mm14/uraniumtipped
	name = "14mm uranium-tipped bullet"
	damage = 26
	armour_penetration = 0.1
	irradiate = 500
*/





//45 Long Colt. Bouncy ammo but less damage then the Sequoia. It's in one of the Vet Ranger kits
/obj/item/projectile/bullet/a45lc
	name = ".45 LC bullet"
	damage = 26
	armour_penetration = 0.1
	sharpness = SHARP_EDGED
	wound_bonus = 25
	ricochets_max = 3
	ricochet_incidence_leeway = 130
	ricochet_decay_damage = 1.1 //48 damage on first bounce, 53 on second, 58 on third. Unless you bounce, the DPS dual wielding is lower then a single M29
	ricochet_decay_chance = 11
	ricochet_chance = 100 //100% if you have the vet's trait //bobnote bouncy bullet go bounce bounce
	ricochet_auto_aim_range = 4




/obj/item/projectile/bullet/needle
	name = "needle"
	icon_state = "cbbolt"
	damage = 30
	armour_penetration = 0.5
	var/piercing = FALSE


////////////////
//CODE ARCHIVE//
////////////////

/*
SYNDIE AMMO
/obj/item/projectile/bullet/p50
	name =".50 bullet"
	pixels_per_second = TILES_TO_PIXELS(25)
	damage = 70
	knockdown = 100
	dismemberment = 50
	armour_penetration = 0.85
	zone_accuracy_factor = 100		//guarunteed 100%
	var/breakthings = TRUE

/obj/item/projectile/bullet/p50/on_hit(atom/target, blocked = 0)
	if(isobj(target) && (blocked != 100) && breakthings)
		var/obj/O = target
		O.take_damage(80, BRUTE, "bullet", FALSE)
	return ..()

/obj/item/projectile/bullet/p50/soporific
	name =".50 soporific bullet"
	armour_penetration = 0
	damage = 0
	dismemberment = 0
	knockdown = 0
	breakthings = FALSE

/obj/item/projectile/bullet/p50/soporific/on_hit(atom/target, blocked = FALSE)
	if((blocked != 100) && isliving(target))
		var/mob/living/L = target
		L.Sleeping(400)
	return ..()

/obj/item/projectile/bullet/p50/penetrator
	name =".50 penetrator bullet"
	icon_state = "gauss"
	name = "penetrator round"
	damage = 60
	movement_type = FLYING | UNSTOPPABLE
	dismemberment = 0 //It goes through you cleanly.
	knockdown = 0
	breakthings = FALSE

/obj/item/projectile/bullet/p50/penetrator/shuttle //Nukeop Shuttle Variety
	icon_state = "gaussstrong"
	damage = 25
	pixels_per_second = TILES_TO_PIXELS(33.33)
	range = 16

NEEDLE INJECTION CODE
/obj/item/projectile/bullet/needle/Initialize()
	. = ..()
	create_reagents(50, NO_REACT, NO_REAGENTS_VALUE)

/obj/item/projectile/bullet/needle/on_hit(atom/target, blocked = FALSE, skip = FALSE)
	if(iscarbon(target))
		var/mob/living/carbon/M = target
		if(blocked != 100) // not completely blocked
			if(M.can_inject(null, FALSE, def_zone, piercing)) // Pass the hit zone to see if it can inject by whether it hit the head or the body.
				..()
				if(skip == TRUE)
					return BULLET_ACT_HIT
				reagents.reaction(M, INJECT)
				reagents.trans_to(M, reagents.total_volume)
				return TRUE
			else
				blocked = 100
				target.visible_message("<span class='danger'>\The [src] was deflected!</span>", \
									   "<span class='userdanger'>You were protected against \the [src]!</span>")

	..(target, blocked)
	DISABLE_BITFIELD(reagents.reagents_holder_flags, NO_REACT)
	reagents.handle_reactions()
	return BULLET_ACT_HIT

BOUNCING BULLET CODE
	ricochets_max = 2
	ricochet_chance = 50
	ricochet_auto_aim_angle = 10
	ricochet_auto_aim_range = 3
	wound_bonus = -20
	bare_wound_bonus = 10
	embedding = list(embed_chance=15, fall_chance=2, jostle_chance=2, ignore_throwspeed_threshold=TRUE, pain_stam_pct=0.4, pain_mult=3, jostle_pain_mult=5, rip_time=10)


SOPORIFIC ROUND CODE
/obj/item/projectile/bullet/p50/soporific/on_hit(atom/target, blocked = FALSE)
	if((blocked != 100) && isliving(target))
		var/mob/living/L = target
		L.Sleeping(400)
	return ..()
*/

// BETA STUFF // Obsolete
/obj/item/projectile/bullet/test
	name = "testing bullet"
	damage = 0
