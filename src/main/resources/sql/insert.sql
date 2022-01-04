INSERT INTO characteristic_types (name)
VALUES ('health');
INSERT INTO characteristic_types (name)
VALUES ('training');
INSERT INTO characteristic_types (name)
VALUES ('happiness');
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('low', 0, 40, 'if the dragon`s health is low for a long time, then it can get sick or even die', 1);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('average', 40, 80, null, 1);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('high', 80, 100, null, 1);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('wild', 0, 10, 'the dragon was tamed and brought to the farm recently.', 2);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('elementary', 10, 40,
        'A must-have for every dragon on the farm. The dragon becomes obedient and less aggressive. The dragon can participate in breeding.',
        2);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('intermediate', 40, 80, 'The dragon can be given for a while', 2);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('advanced', 80, 100, 'It can be transferred to a new owner', 2);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('low', 0, 30, 'if the dragon`s happiness is low for a long time, then it can escape from the farm', 3);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('average', 30, 70, null, 3);
INSERT INTO characteristic_levels (name, min_value, max_value, description, char_type_id)
VALUES ('high', 70, 100, null, 3);

-- Dragon's food
INSERT INTO food (name)
VALUES ('Rocks');
INSERT INTO food (name)
VALUES ('Lava');
INSERT INTO food (name)
VALUES ('Fish');
INSERT INTO food (name)
VALUES ('Ham');
INSERT INTO food (name)
VALUES ('Iron ore');
INSERT INTO food (name)
VALUES ('Flowers');
INSERT INTO food (name)
VALUES ('Vanaheim Fruit');
INSERT INTO food (name)
VALUES ('Geodes');
INSERT INTO food (name)
VALUES ('Fire Weed');
INSERT INTO food (name)
VALUES ('Mutton');
INSERT INTO food (name)
VALUES ('Yak');
INSERT INTO food (name)
VALUES ('Moss');
INSERT INTO food (name)
VALUES ('Dragon hatchlings');
INSERT INTO food (name)
VALUES ('Honeycomb');
INSERT INTO food (name)
VALUES ('Wild Boar');
INSERT INTO food (name)
VALUES ('Eels');
INSERT INTO food (name)
VALUES ('Chickens');
INSERT INTO food (name)
VALUES ('Fruit');
INSERT INTO food (name)
VALUES ('Berries');
INSERT INTO food (name)
VALUES ('Crab');
INSERT INTO food (name)
VALUES ('Death Songs');
INSERT INTO food (name)
VALUES ('Worms');
INSERT INTO food (name)
VALUES ('Grubs');
INSERT INTO food (name)
VALUES ('Sea Slugs');
INSERT INTO food (name)
VALUES ('Honeycombs');

-- Dragon's classes
INSERT INTO classes (name, description)
VALUES ('Boulder',
        'Boulder Class dragons are tough and associated with the earth. They can eat rocks, which many of them melt within their stomachs and regurgitate as lava blasts. Although they have small wings compared to their body size, they are able to fly as fast and as high as most other dragons can.');
INSERT INTO classes (name, description)
VALUES ('Mystery',
        'Little is known about the Mystery Class dragons, due to their stealthy and sneaky nature. Dragons in this class are generally more feared than those in other classes. This Class tends to include the most diverse and interesting range of dragons out of all, most of which exhibit extremely rare and unique traits.');
INSERT INTO classes (name, description)
VALUES ('Sharp',
        'Sharp Class dragons are vain and prideful, and all of them possess sharp body parts. Most of these dragons can fire extremely sharp and poisonous projectiles from their bodies, which can quickly be regenerated. Sharp class dragons adore being stroked and generally made a fuss of. They especially love being complimented, due to their nature.');
INSERT INTO classes (name, description)
VALUES ('Stoker',
        'Stoker Class dragons are hot-headed fire breathers. A notable characteristic of these dragons is their high shot limit and firepower. Some of them are capable of setting themselves, or a part of their body on fire. When Stoker Class dragons become sick or exhausted, they might loose their ability to produce flames.');
INSERT INTO classes (name, description)
VALUES ('Strike',
        'Strike Class dragons are characterized by their extreme speed, high jaw strength, and superior intelligence. Some members of this Class possess pinpoint accuracy and unique abilities that allow them to navigate in their respective environment/atmosphere.');
INSERT INTO classes (name, description)
VALUES ('Tidal',
        'Almost all Tidal Class dragons live in ocean, although some of them have amphibian biology allowing them to survive on land. Few of these dragons are cable of creating flames, but many can generate electricity. Dragons of this class are generally larger than those of other classes. Despite this, they are usually very peaceful ocean dwellers who prefer to be left alone and when trained, are exceedingly loyal. According to Hiccup, Tidal Class dragons don''t react well to signs of aggression.');
INSERT INTO classes (name, description)
VALUES ('Tracker',
        'Tracker Class dragons have a highly acute sense of smell and taste that enables them to effortlessly track down and find anything.');
INSERT INTO classes (name, description)
VALUES ('Unknown',
        'Some species of dragons have not yet been officially classified into any class and may be sorted in the future. The reasons for this lack of information varies.');

-- Boulder Class species
INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Dark Grey or Brown with Pale underbelly',
        'Magma slobber from trifurcated jaws',
        'Filled with spikes;Triple-split jaw;Tough rock-like skin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Catastrophic Quaken', 1, null, false,
        'Curling into a boulder;Creating a shockwave',
        'day', 'autumn', 3, 10, 1, 0.7);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 1);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Crimson with purple details and light underside',
        'Molten lava', 'Metallic, moose-like antlers;Axe-shaped tail;Rock-shaped spines');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Crimson Goregutter', 1, null, false,
        'Blazing antlers;Ear-splitting call',
        'day', 'spring', 4, 12, 2, 0.1);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 2);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Bright red and yellow with dirty brown plates',
        'Large-scale lava spew',
        'Spiky lobes and protrusions on back and tail;Large, round head;Tiny forelegs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Eruptodon', 1, null, false,
        'Burrowing through the crust of a dormant volcano;Eating extremely large amounts of lava;Stopping and causing volcanic eruptions;Lava-proof skin;Heat-resistant saliva',
        'day', 'spring', 4, 12, 3, 0.3);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 3);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Mainly red with yellow spots;Orange',
        'Pulse blasts',
        'Double-horned head;Long body;Spines along the back;Yellow rings along body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Grapple Grounder', 1, null, false,
        'Strangling victims', 'night', 'summer', 2, 7, 4, 0.12);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 4);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 4);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Icy blue and white', 'Liquid nitrogen',
        'Covered in snow and ice;Cold-blooded;Icicles below chin;Spikey ridges along the back, jaws, and limbs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Groncicle', 1,
        'Groncicles are a peaceful, friendly, non-aggressive species. Having been the first dragons to ever be peaceful with humans (with the ancient Vikings of Icestorm Island), they are naturally kind with people. So, it won`t be difficult to tame this dragon.',
        true,
        'Freezes water around it as it swims;Condenses the water vapor in the clouds', 'night', 'winter',
        4, 16, 5, 0.87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 5);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 5);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Reddish brown',
        'Heptane/oxygen + rock = Lava blast',
        'Eyes lower on head;Clubbed tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hotburple', 1,
        'Hotburples are one of the easiest dragons to tame, due to their indolent, sedentary and docile nature', true,
        'Sleep-flying;Immense jaw strength;Biting through dragon-proof metal', 'day', 'summer', 3, 9, 6, 0.83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 6);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 6);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (5, 6);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 6);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Stony grey with mossy green highlights',
        'Funeral pyre fire',
        'Large body covered in scutes, rounded tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sentinel', 1,
        'To those who showcase the right intentions, Sentinels appear to be less hostile. Although their instinct to guard and protect is strong, a Sentinel will use its intelligence to know who is a friend and who is not. By helping them guard the area and proving that you are of no threat, Sentinels will grant you the respect and lower their aggression, even allowing you in and out of the island. Their trust can be earnt.',
        true,
        'Wing blasts;Remaining motionless for days at a time;Extremely developed senses except for sight;Hibernation',
        'day', 'autumn', 1, 11, 7, 0.12);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 7);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 7);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Chartreuse;Aquamarine with purple to brown stripes',
        'Brightly-colored fire',
        'Pointed chin;Head frill;Paddle-shaped tail;Stubby arms');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shovelhelm', 1,
        'Shovelhelms can be coaxed with fish. If they are curious, let them help you build something. Like the majority of Boulder Class dragons, Shovelhelms are amiable with generally friendly personalities, unless feeling threatened: they also don''t like to jump straight into a fight, indicating that training one would presumably be fairly straightforward.',
        true,
        'Digging with chin;Hammering with head', 'day', 'summer', 2, 19, 8, 0.97);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 8);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 8);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Blue and red;Green and orange',
        'Crystal-flecked fireballs',
        'Spiked tail bludgeon;Nasal horn;Diamond-sharp teeth');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snafflefang', 1,
        'Snafflefangs are relatively easy to tame, as they are calm and peaceful dragons. If a person saves a Snafflefang`s life, the dragon will be forever thankful and will stay close to its savior.',
        true, null, 'day', 'summer', 2, 9, 9, 0.22);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 9);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 9);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Bright red back and wings with a white belly',
        'Small balls of fire',
        'Six legs;Huge clawed forearms;Small spines along the back;Small wings;A horn on chin and nose');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thunderpede', 1,
        'This dragon is difficult to tame, you need to bring a lot of delicacies and be patient.',
        true, 'Pulverizing boulders', 'day', 'spring', 3, 13, 10, 0.27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 10);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Grayish steel green body with red spikes',
        'Concentric rings of fire',
        'Large head and mouth with rotating teeth inside;Sharp spines;White bulging eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Whispering Death', 1,
        'Whispering Deaths are almost untrainable. They are very destructive and aggressive in nature, attacking anything in their way and are generally feared by other dragons and humans in general. The only way to train a Whispering Death would be to capture it and take your time until you eventually gain its trust or by raising one as a hatchling',
        true, 'Tunneling;Spine shot;Rotating teeth;Vacuum effect;Immunity to dragon nip', 'day', 'autumn',
        1, 7, 11, 0.82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 11);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 11);

-- Mystery Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Pale green;Purple;Orange',
        'Oxygen-acetylene',
        'Metal armor;Pair of twisted horns;Chain-whip tail;Long claws;Long spikes on knees');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Armorwing', 2,
        'Not much is known about training Armorwings, but like most dragons, bonding with them requires trust. While they appear aggressive and somewhat stand-offish, helping them again and proving yourself as no threat will assure them that the human is trustworthy. This is seen when Hiccup passed Bandit a piece of scrap metal and the Armorwing gladly accepted it, dipping its head in gratitude.',
        true, 'Magnetic body;Whipping tail;Blinding flames', 'night', 'summer', 2, 14, 12, 0.92);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 12);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Pale green with white bones as armor',
        'Billowing flames',
        'Bone armor;Clubbed tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Boneknapper', 2,
        'According to Gobber, to train a Boneknapper, one must give it whatever it desires. It will then become like "an overgrown puppy dog".',
        true, 'Bone armor;Thundering roar', 'day', 'summer', 1, 7, 13, 0.28);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 13);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Brown and bronze;Green and yellow',
        'Exploding, uncontrollable flames',
        'Armored body;Ram-like horns;Small rows of spines along back;Short legs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Buffalord', 2, null,
        false,
        'Inflating its body to an immense size;Shooting spines from any part of its body;Extremely potent saliva',
        'day', 'winter', 5, 17, 14, 0.43);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 14);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 14);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 14);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Black with yellow stripes',
        'Bright green fire',
        'Glands that produce flammable mucus on back and tail;Collapsible skeleton;Upper beak;Absence of wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Cavern Crasher', 2, null, false,
        'Fitting through small spaces;Producing a special flammable mucus from its back;Burrowing',
        'day', 'summer', 4, 13, 15, 0.65);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 15);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green with a cream underbelly',
        'Hot, corrosive, viscous acid',
        'Side horns protruding from head;Antennae with leaf-like lobes;Underbite;Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Changewing', 2,
        'They enjoy mimicry, so if one tries to mimic them, be it by their noises or their movements, they will find the individual fascinating.',
        true, 'Camouflage;Prehensile tail;Hypnosis', 'day', 'summer', 4, 14, 16, 0.77);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 16);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 16);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (14, 16);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (15, 16);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Striking colors of blue, yellow, and orange',
        'Amber-like substance that hardens quickly',
        'Colorful wings;Fins on the head;Long spines along the back;Long horns;Barbles');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Death Song', 2,
        'It is unknown if adult Death Songs can be trained, but it proved to be possible with a baby Death Song, Garff, who with the riders after they sang to it. Fishlegs also discovered from Garff that Death Songs can be calmed using dragon nip, though they do not take it as willingly as other dragons.',
        true, 'Siren-like luring song;Spitting amber to immobilize its prey;Immunity to eels', 'night', 'spring', 4, 12,
        17, 0.29);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (16, 17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 17);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Dark blue and red',
        'Flaming facsimiles',
        'Spiky head;Small forelimbs;Finned tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Dramillion', 2,
        'Despite their near-extinction status due to the Dragon Hunters, most Dramillions can be trained very easily. In order for one to tame a Dramillion, showing the dragon that you mean no harm is enough for it to let the guard down. Like most dragons, a Dramillion''s trust can be earned by touching it gently on the snout or helping it if needed.',
        true, 'Mimic fire from other dragons;Hunting in packs;Sharing fire reserves;Camouflage', 'day', 'summer',
        3, 17, 18, 0.92);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 18);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Bioluminescent neon blue with a lighter underbelly',
        'Paralyzing toxic mist',
        'Wing tendrils;Split tail;Translucent wings;Barbells;Ghostlike glow');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Flightmare', 2,
        'It remains unclear as to whether or not Flightmares can be trained, as their extreme aggression and hostility towards anyone in order protect their food source makes it virtually impossible to even approach one, much less train it. However, if one is willing to make an attempt at bonding with a Flightmare, approach alone and with caution, as multiple present individuals will quickly make the solitary dragon feel outnumbered, and show the Flightmare you are not a threat to either it nor its glowing food source.',
        true, 'Glows brighter when consuming glowing algae;Loud banshee-like scream;Can freeze victims with its mist',
        'night', 'winter', 2, 13, 19, 0.64);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 19);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 19);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Light brown with green shades',
        'Lava and acid',
        'Wood-like skin;Covered in foliage and trees;Beard-like tendrils;Double nasal horn;Hair-like appendages');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Foreverwing', 2,
        null, false, 'Telepathy;Camouflage;Commanding dragons;Creating calming compounds',
        'day', 'spring', 20, 130, 20, 0.46);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Mainly green, blue, or gold with spots ',
        'Ammonium nitrate mixed with anhydrous hydrazine',
        'Two heads;Horns;Split tail;Lobs along necks, back, and tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hideous Zippleback', 2,
        'To train a Zippleback, you must feed both heads at once, then play with the dragon to keep it occupied. Another way to train one is to save a Zippleback''s life. If this is done, they will be completely loyal to the person no matter what until they can repay the favor.',
        true, 'Flaming ouroboros; Transmitting brains',
        'day', 'winter', 4, 15, 21, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 21);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 21);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (14, 21);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Purple with dark spots and yellow underside',
        'Incendiary slobber',
        'Small thin spines on the back;Small curved nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hobgobbler', 2,
        'This dragons seems to be pretty docile as Valka was holding one of the rescued Hobgobblers to examine his health. One of them even ordered his packmates to attack Ragnar the Rock to save Gobber''s life.',
        true, 'Feeding frenzy;Multiplying;Covering themselves with their own slobber to slip through tight spots',
        'day', 'autumn', 4, 11, 22, 0.83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 22);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Green with brown spots',
        'Purple particles with healing properties',
        'Horns;Double-frilled tail fin;Frill along back;Slender neck;Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Prickleboggle', 2,
        null, false, 'Healing powers;Defensive skin',
        'day', 'spring', 2, 15, 23, 0.54);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 23);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'GGreen and beige',
        'Fusing blasts',
        'Large head;Long neck;Prehensile tail;Spikes along side of body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sandbuster', 2,
        null, false, 'Burrowing',
        'night', 'summer', 5, 15, 24, 0.65);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue with black stripes',
        'Amber-like substance',
        'Colorful wings;Fins on the head;Long spines along back;Long horns;Barbles');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Slithersong', 2,
        'Not much is mentioned about training the Slithersong, apart from the fact that it is incredibly hard to do so, deemed ''impossible'' and only for the most elite of trainers.',
        true,
        'Siren-like luring song;Mimicking sounds;Immobilizing its prey;Immunity to eels;Blinding',
        'night', 'autumn', 2, 12, 25, 0.13);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 25);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red with black and yellow stripes',
        'Venom spit',
        'Long snake-like body;Irregular spikes on the head;Small claws on wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Slitherwing', 2,
        'The Slitherwing`s extremely aggressive and instinct-driven nature and high levels of toxicity render it very difficult, if not impossible, to train. Even so, according to Rise of Berk, Slitherwings are able to be trained, although it requires some time and introductions to humans.',
        true,
        'Spilling poison secreted from the skin;Extremely foldable wings;Immunity to a Death Song`s amber and call',
        'day', 'winter', 2, 13, 26, 0.81);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 26);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Dark and light grey',
        'Smoke and extremely hot air',
        'Yellow eyes;Skull-like head;Smoke-like tail;Spines along back;Nasal horn flanked by two smaller ones');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Smothering Smokebreath', 2,
        'Create a fancy nest, made of the best scrap metal you can find. Whether the Smokebreaths decide to move in or take it apart is up to them, though.',
        true, 'Creating a veil of smoke;Creating nests from metal',
        'night', 'spring', 1, 15, 27, 0.22);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (20, 27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 27);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Green with red and yellow spots',
        'Methane mist;Acid',
        'Four heads;Leaf-like spines;Triple split jaws;Antennae;Forked tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snaptrapper', 2,
        'Just like Hideous Zipplebacks, Snaptrappers'' trust can be earned if all heads are treated in equal measure. They can also be tamed if approached while playing in mud.',
        true, 'Baits victim with a sweet smell;Emitting obnoxious odors',
        'day', 'summer', 6, 16, 28, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 28);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sandy yellow;Light, pale brown',
        'Corrosive, possibly even sweet, acid',
        'Very small eyes;Long tail;Stripes all over body;Tree-like tongue');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sweet Death', 2,
        null, false, 'Can create a sweet odor to lure prey Tunneling',
        'night', 'autumn', 4, 11, 29, 0.64);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Dark gray;Silver and black;White and golden',
        'Varied depending on metal type',
        'Magnetic skin;Metal armor over body;Red-hot glowing mouth;Spear-tipped tail;Metal spikes along neck and back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sword Stealer', 2,
        null,
        false, 'Magnetic skin attracts various types of metals;Fire type varies depending on metal',
        'night', 'spring', 2, 9, 30, 0.92);


-- Sharp Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Black with brown horns',
        'Orange blasts',
        'Short forearms;Horns;Barbells;Tail that resembles a scythe');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Devilish Dervish', 3,
        'Training Devilish Dervishes is said to be very hard due to their stubborn and unruly behavior, only for the most elite of trainers.',
        true, 'Slicing through trees and anything in its path',
        'day', 'summer', 5, 15, 31, 0.25);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 31);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Creamy underbelly and a variety of bright colors',
        'Blasts of blue fire',
        'Spikes at the back of head;Stocky build;Striped tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Egg Biter', 3,
        null, false, 'Strong bite',
        'night', 'winter', 1, 6, 32, 0.19);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Purple;Red and purple',
        'Teeth darts',
        'Snake-like body;Lots of horns and spikes;Shark like-teeth');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Grim Gnasher', 3,
        null, false, 'Regenerating and shooting teeth;Immunity to Slitherwing venom',
        'day', 'spring', 1, 12, 33, 0.94);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Light woody-brown',
        'Average fireballs',
        'Elongated body;Axe-like snout;Spiky back and tail;Six legs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hackatoo', 3,
        null, false, 'Cuts through trees with its sharp snout',
        'night', 'summer', 3, 12, 34, 0.32);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 34);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Greyish green and orange with dark red wings',
        'Rain-resistant fireballs',
        'Large sharp fins on the back and head;Nasal horn;Elongated neck;Short tendrils under the chin;Larger lower jaw');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Raincutter', 3,
        'Raincutters are relatively easy to train, as they are calm and peaceful dragons. If a person saves a Raincutters''s life, the dragon will be forever thankful and will often bring gifts to its savior, as it was the case with Thump and Valka.',
        true, 'Aerodynamic fins used for flight and offense;Picking up food with its long neck',
        'day', 'autumn', 5, 15, 35, 0.36);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 35);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (22, 35);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (23, 35);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Silver;Metallic rust',
        'Bright blue fire',
        'Horn on snout;Sharp spines;Spikes on the edge of wings;Reflective scales');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Razorwhip', 3,
        'These aggressive dragons are hard to train, due to their reclusive nature. However, trusting the dragon, and showing that you are worthy of its trust will win over this dragon''s heart. Heather, for example, nursed her to health when she was badly injured and made use of the dragon training methods the other riders taught her, presumably placing her hand against its snout to form a bond via a physical bond.',
        true,
        'Sharp and telescopic prehensile tail that can be used as a whip;Precise and easily maneuverable in flight;Poisonous tears;Shooting tail barbs',
        'day', 'winter', 3, 12, 36, 0.02);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 36);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (24, 36);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Purple and blue',
        'Flammable drool',
        'Zippleback-like lobs along back;Nadder-based structure;Round head');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Scuttleclaw', 3,
        'Scuttleclaws are extremely easy to train, especially as juveniles. They don''t seem to mind if someone is riding them, and they will continue to play in the air. Even inexperienced riders, such as Eret, can have a partial control of the direction of flight of a Scuttleclaw.',
        true, 'Powerful bite',
        'day', 'autumn', 1, 6, 37, 0.71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 37);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue and purple with gem-like blue spines',
        'Frost',
        'Two small horns under its chin;Striped body;Thin and sharp claws;Spines along the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shivertooth', 3,
        null,
        false, 'Slices enemies with its sharp scales;Saliva and scales with healing properties',
        'night', 'winter', 4, 11, 38, 0.24);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green',
        'Acid blast',
        'Razor-sharp stinger;Red stripes (Lead Stinger);Sail fin on head;Small pair of wings on back;Extendable webbed feet;Theropod-like stature');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Speed Stinger', 3,
        'Speed Stingers were said to be too aggressive to be trained. However, in School of Dragons, it is revealed they can be trained, though only at a young age.',
        true, 'Paralyzing sting;Incredible night vision;Water running',
        'night', 'summer', 1, 9, 39, 0.72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 39);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Woody-brown body, cream underbelly',
        'Sustained and blazing torus of fire',
        'Two pairs of wings;Head frills;"Smashed" face;Three tail fins');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Stormcutter', 3,
        'Generally, a docile and gentle dragon, training a Stormcutter is easy. All it takes is mutual trust, respect, and a love for dragons, which is shown when Valka meets Cloudjumper. The Stormcutter will be more than willing to accept you after that, making the training process pretty easy.',
        true, 'Exceptional maneuverability and diving;Prehensile claws;Twisting head about 180°',
        'day', 'winter', 5, 17, 40, 0.82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 40);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue with red patterns',
        'Thick stream of fire',
        'Thorn-like spikes on the head frill;Double nasal horn;Long neck with short thorns');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thornridge', 3,
        null, false, null,
        'night', 'spring', 2, 14, 41, 0.92);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 41);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Woody-brown with lighter underbelly',
        'Oil-based fire',
        'Huge razor-sharp wings;No legs;Long and twisted horns;Slender body and neck;Tendrils under the chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Timberjack', 3,
        'A Timberjack`s long wings make it impossible for the dragon to scratch its back. However, it has been discovered that if humans scratch any hard-to-reach places for it, the Timberjack will be willing to form a bond with them.',
        true, 'Wing slice;Fire nova attack;Uses its massive wings as shields',
        'night', 'summer', 5, 9, 42, 0.27);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 42);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Blue with yellow pattern',
        'Super-heated air;Streams of fire',
        'Long sharp horn on snout and chin;Long neck;Spines along the neck;Spots on body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Windstriker', 3,
        false,
        true, 'Skydiving',
        'day', 'autumn', 5, 18, 43, 0.72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 43);

-- Stoker Class species

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Golden brown body and tan spots',
        'Firecomb: A topical and flammable gel',
        'Four or five pair of legs;Glowing body;Long twisted horns for the Queen');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Fireworm', 4, null, false,
        'White-hot skin;Queens have venom to reignite the flame of other Stoker Class dragons',
        'night', 'summer', 6, 10, 44, 0.12);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 44);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Multi-colored',
        'Swirling explosions of fire',
        'Membranes between the fingers;Dark-colored stripes;Thick spiked tail;Gecko-like appearance');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Flame Whipper', 4,
        null, false,
        'Wall climbing;Detachable tail;Stretchable tongue;Uses the tongue to aim its fire (increasing the accuracy);Paralyzing poison stored in its tail',
        'day', 'spring', 1, 7, 45, 0.73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 45);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green or blue with black stripes',
        'Acid blast',
        'Striped pattern on body;Spike-like frill;Horn on nose');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Gobsucker', 4,
        null, false,
        'Can produce flammable gas from its rear end to aid in taking off, building speed, flying straight, and defense',
        'night', 'winter', 2, 15, 46, 0.48);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Dull green with red to purplish-red',
        'Methane',
        'Three pairs of eyes;Massive size;Clubbed tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Green Death', 4,
        null,
        false, 'Magma-proof skin',
        'day', 'autumn', 4, 10, 47, 0.59);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Purple;Yellow;Red',
        'Ethane expectorant',
        'Large head frill;Tail fin;Underbite');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Hobblegrunt', 4,
        'Hobblegrunts are relatively easy to train, as they are calm and peaceful dragons. If a person saves a Hobblegrunt''s life, the dragon will be forever thankful and will stay close to its savior,',
        true,
        'Color changing skin based on mood;Detecting frill;Altering other dragons'' mood by changing its color;Predicting the future',
        'day', 'summer', 3, 17, 48, 0.62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 48);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Green with white underbelly',
        'Sonic roar',
        'Row of triangular spines along back;Four spines on tail tip;Rounded head and snout;Wide build');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Large Shadow Wing', 4,
        null, false, 'Summoning Small Shadow Wings to attach onto its wings and become its artillery guns',
        'night', 'spring', 2, 13, 49, 0.72);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red', 'Kerosene gel',
        'Double-clawed wings;Two pairs of long horns;Sharp spines;Snake-like neck;Snake-like tail with frills;Barbels;Nasal horn;Flammable gel on skin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Monstrous Nightmare', 4,
        'The best way to earn the trust of a Monstrous Nightmare is simply to show it the respect it deserves. Placing a gentle hand on its snout and showing you are not a threat to it is the best way to go. Hiccup even shown to Hookfang that he was no threat to him as he toss his helmet and dagger away. While Nightmares are generally tough, tenacious and rebellious, mutual respect and trust will certainly help both parties in the long run.',
        true, 'Self-immolation;Wing blast;Jaw expansion',
        'day', 'autumn', 4, 12, 50, 0.88);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 50);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (20, 50);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 50);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 50);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Black and dark green',
        'Several discreet fire streams',
        'Double nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Night Terror', 4,
        'Night Terrors are highly trainable dragons both individually or in a group. Throughout the Dragons: Race to the Edge series, Night Terrors are seen being trained to do simple tricks like fetch, trained to utilize their natural alarm instincts to protect the island, and trained to form various shapes in a group.',
        true, 'Creates massive flocks to appear as a larger dragon to scare off predators',
        'night', 'winter', 1, 6, 51, 0.67);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 51);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'blue with red spikes',
        'Methane',
        'Clubbed tail;Three pairs of eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Red Death', 4,
        null, false, 'Emits homing signal to control other dragons',
        'day', 'spring', 4, 13, 52, 0.06);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 52);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 52);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 52);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Purple and white',
        'Blue explosive flames',
        'Diamond-shaped wing lobes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Silver Phantom', 4,
        null, false, 'Camouflage above the clouds',
        'day', 'autumn', 5, 14, 53, 0.13);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 53);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 53);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (24, 53);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Orange with red spots and purple chin',
        'Scarlet flames',
        'Two sets of wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Singetail', 4,
        null, false, 'Articulated eyes',
        'day', 'spring', 4, 13, 54, 0.06);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 54);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 54);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 54);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Blue and purple',
        'Explosive molten lava',
        'Row of triangular spines along the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Small Shadow Wing', 4,
        null, false, 'Dive-bombing',
        'night', 'winter', 4, 9, 55, 0.23);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 55);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 55);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 55);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'highlights on back and pale belly',
        'Propane fire',
        'Arrow-shaped tail tip');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Terrible Terror', 4,
        'They seem to be fairly easy to train. Giving them a light to chase can help out for training as this could be great beginner dragon for young Vikings. Or another way of training Terrible Terrors just to feed them, and, showing great trust, the Terror went to sleep next to him. As long as you prove to be of no threat to it, Terrors are easy and docile companions.',
        true, 'Amazing accuracy',
        'day', 'summer', 2, 11, 56, 0.72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 56);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 56);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 56);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Bright yellow with pale blue',
        'Green and orange flames',
        'Large crown-like head frill');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Threadtail', 4,
        null, false, 'Poisonous skin',
        'day', 'winter', 1, 8, 57, 0.28);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 57);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 57);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red',
        'Cyclonic jets of flame',
        'Large wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Typhoomerang', 4,
        'Training a Typhoomerang is easiest when the dragon is young. As a baby, they are rather impressionable and trustworthy. However, if one manages to successfully catch its attention and prove that they are of no harm, the Typhoomerang will slowly bond with them.',
        true, 'Flaming cyclone',
        'day', 'autumn', 2, 14, 58, 0.89);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 58);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 58);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 58);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Red and black',
        'Rabid acid flame bursts',
        'Protruding retractable tusks');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Deathgripper', 5,
        'Deathgrippers are extremely difficult to train, but a person can train one by imprinting on it as a hatchling immediately after it emerges from the egg.',
        true, 'Sedative sting',
        'night', 'spring', 4, 13, 59, 0.57);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 59);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'White with a blue and pink tint',
        'Acetylene and oxygen-shaped plasma charges',
        'Cat-like eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Blue monster', 5,
        'Due to not having too much contact with humans, Light Furies are very aggressive towards them. However, a Light Fury''s trust can be slowly earned. If a person helps a Light Fury or saves its life, the dragon will return the favor, and will from then on be a friend.',
        true, 'Cloaking via plasma blasts',
        'day', 'winter', 4, 13, 60, 0.05);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 60);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 60);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 60);


INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'White with a blue and pink tint',
        'Acetylene and oxygen-shaped plasma charges',
        'Cat-like eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Light Fury', 5,
        'Due to not having too much contact with humans, Light Furies are very aggressive towards them. However, a Light Fury''s trust can be slowly earned. If a person helps a Light Fury or saves its life, the dragon will return the favor, and will from then on be a friend.',
        true, 'Cloaking via plasma blasts',
        'day', 'winter', 4, 13, 61, 0.05);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 61);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 61);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 61);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Jet black',
        'Acetylene and oxygen-shaped plasma charges',
        'Cat-like eyes');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Night Fury', 5,
        'A wild Night Fury will likely just fly away and ignore you unless you catch its interest or prevent its flight. It is preferable to catch it without hurting it. Another way is to find its egg and train it from when it hatches.',
        true, 'Dive-bombing',
        'day', 'winter', 2, 12, 62, 0.06);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 62);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Dark gray with purple markings',
        'Lightning',
        'Sharp metallic spines on the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Skrill', 5,
        'Depending on the method, training a Skrill can be incredibly difficult or close to impossible. They are aggressive and stubborn, refusing to be trained even in times of crisis. However, by treating it with respect and showing it mercy instead of hurting it, thus showing that you can accept the Skrill for what it is, you can gain its trust.',
        true, 'Electrokinesis',
        'night', 'winter', 1, 8, 63, 0.42);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 63);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 63);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 63);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Shades of Green',
        'Unidentified breath weapon',
        'Huge wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Songwing', 5,
        null, false, 'Prehensile tail',
        'night', 'summer', 2, 9, 64, 0.28);


INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Snowy white with blue highlights',
        'Frost fusillade',
        'Long ledge under chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snow Wraith', 5,
        null, false, 'Thermal vision',
        'night', 'winter', 5, 15, 65, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 65);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 65);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (23, 65);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Brownish-black',
        'Continuous streams of flames',
        'Three tails that tie together to form one');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Triple Stryke', 5,
        'These dragons are fierce and vicious, thus they are extremely hard to train. However, these dragons do repay their debts. If shown mercy and kindness, the dragon will treat you with respect and compassion and will stop at nothing to protect you.',
        true, 'Unique venom in each stinger',
        'day', 'summer', 2, 7, 66, 0.66);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 66);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (15, 66);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 66);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Dark brown with pale belly',
        'Hail',
        'Fur-like scales');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Woolly Howl', 5,
        null, false, 'Belly blends in with the white clouds',
        'day', 'spring', 5, 21, 67, 0.12);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Snowy white',
        'Masses of water that freeze',
        'Large spikes protruding from back of neck');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Bewilderbeast', 6,
        null, false, 'Mind controlling dragons',
        'day', 'winter', 7, 17, 68, 0.23);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 68);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Blue with dark green spots',
        'water blast',
        'Large fin on the back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Fathomfin', 6,
        null, false, 'Expandable gullet',
        'day', 'spring', 2, 5, 69, 0.53);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 69);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Dark navy blue',
        'water blast',
        'Fins instead of legs');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Luminous Krayfin', 6,
        'Due to its sociable and intelligent nature, the Luminuous Krayfin appears to be trainable. What is unclear is whether a Krayfin is trainable if raised from an egg or if an adult is also trainable.',
        true, 'Swimming Speed',
        'night', 'autumn', 2, 11, 70, 0.49);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 70);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 70);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 70);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Deep purple',
        'huge blasts',
        'Long tendrils on chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Purple Death', 6,
        null, false, 'Creating seaquakes',
        'night', 'spring', 2, 11, 71, 0.45);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 71);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (22, 71);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Deep blue',
        'acid',
        'Long tail');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Submaripper', 6,
        null, false, 'Creating massive whirlpools to sink ships',
        'day', 'summer', 2, 10, 72, 0.37);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 72);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 72);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sandy brown',
        'Hardened balls',
        'Spikes on wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sand Wraith', 6,
        null, false, 'Camouflage',
        'day', 'spring', 1, 7, 73, 0.59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 73);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sea Green',
        'boiling hot water',
        'Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Scauldron', 6,
        'training a Scauldron is incredibly difficult and close to impossible due to their aggressive nature. If you want to train a Scauldron, the best way to start is simply to cover yourself in water or anything that smells like fish.',
        true, 'Venom',
        'night', 'winter', 2, 13, 74, 0.86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (16, 74);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Sea blue and black',
        'Electric stun charges',
        'Two heads');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Seashocker', 6,
        'You can train a Seashocker if you heal its injuries or get back to its pond.',
        true, 'Cutting ice with its dorsal blades',
        'day', 'spring', 7, 11, 75, 0.75);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 75);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Red with orange',
        'Cannonball-sized plasma charges',
        'Long but relatively small wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shellfire', 6,
        'It is currently unknown whether or not Shellfires can be trained, as Viggo''s Shellfire, the only known individual, was so agitated that, after being captured and forced to battle a Submaripper and Dragon Riders by the Dragon Hunters, it immediately retreated to the ocean''s depths, and has not been spotted since.',
        true, 'Expelling red algae from gills',
        'day', 'autumn', 2, 7, 76, 0.59);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 76);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 76);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (20, 76);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 76);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'green',
        'Bio-electricity',
        'Tendrils on the chin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Shockjaw', 6,
        null, false, 'Electrokinesis',
        'night', 'winter', 3, 13, 77, 0.56);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 77);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 77);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Sea green',
        'Streams of acid',
        'Fin-like wings');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Sliquifier', 6,
        null, false, 'Supersonic swimming speed',
        'day', 'summer', 4, 11, 78, 0.24);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 78);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Blue with yellow stripes',
        'Whirlpool',
        'Webbed feet');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Ancient submaripper', 6,
        'While it is unknown if a Submaripper can be fully trained, it can be tamed to a certain extent. If one helps or saves a Submaripper, the dragon will stop being aggressive and will even return the favour. The Submaripper''s undying loyalty will have been earned.',
        true, 'Gas bubbles',
        'day', 'spring', 2, 8, 79, 0.73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (5, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 79);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 79);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('small', 'Mainly blue',
        'Fire balls',
        'Expandable mouth');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thunderdrum', 6,
        'Training a Thunderdrum, especially as an adult is a challenge partly due to their difficult personality and deafness. Showing protection and gaining the Thunderdrum`s trust is an easier way to train it, as seen by Stoick and Thornado.',
        true, 'Expelling air from body to swim',
        'night', 'winter', 2, 17, 80, 0.84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 80);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 80);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 80);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 80);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Cyan',
        'Acid blasts',
        'Large fan-like tail fin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Tide Glider', 6,
        null, false, 'Healing saliva',
        'day', 'spring', 7, 23, 81, 0.13);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 81);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'red',
        'Balls of fire',
        'Long neck');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Windwalker', 6,
        null, false, 'Electrokinesis',
        'day', 'autumn', 2, 6, 82, 0.46);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (12, 82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 82);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Light Orange',
        'Massive balls of fire',
        'Large fan-like tail fin');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Moldruffle', 7,
        'To train a Deadly Nadder, one must very carefully approach the dragon from its tail. Then, you must gently smooth its spikes down. In addition, one can also train a Nadder by sneaking up on its blind spot, then scratching its chin affectionately.',
        true, 'Sharp long ranged vision',
        'night', 'summer', 5, 9, 83, 0.67);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (11, 83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (22, 83);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 83);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Variety of colors',
        'Magnesium fire',
        'Nasal horn');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Deadly Nadder', 7,
        'To train a Deadly Nadder, one must very carefully approach the dragon from its tail. Then, you must gently smooth its spikes down. In addition, one can also train a Nadder by sneaking up on its blind spot, then scratching its chin affectionately.',
        true, 'Spine shot',
        'day', 'summer', 2, 9, 84, 0.73);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (4, 84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 84);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Turquoise Green',
        'Sonic blasts',
        'Sail on back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Mudraker', 7,
        null, false, 'Sonic blasts that travel through the water at intense speeds',
        'night', 'spring', 2, 12, 85, 0.84);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (18, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 85);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (13, 85);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Green with brown trim',
        'Flaming rock "missiles"',
        'Jackhammer-like maw');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Rumblehorn', 7,
        'Rumblehorns always have their snouts to the ground, sniffing around for something edible. They can be aggressive, but they are friendly towards their riders. Their food of choice is unknown, but it is known that they are carnivorous. They are also highly intelligent and determined. They run like rhinoceroses.',
        true, 'Tracking',
        'day', 'winter', 5, 12, 86, 0.62);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (1, 86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (10, 86);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (9, 86);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('large', 'Different colored patterns',
        'Fire-sneeze that can melt nearly anything',
        'Colorful exterior');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Snifflehunch', 7,
        'Snifflehunches are relatively easy to train, as they are calm and friendly dragons. If a person saves a Snifflehunch''s life, the dragon will be forever thankful and will stay close to its savior',
        true, 'Sniffing out friends and foes',
        'day', 'spring', 2, 8, 87, 0.74);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (8, 87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (14, 87);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 87);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('gigantic', 'Blue with yellow stripes',
        'Whirlpool',
        'Webbed feet');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Submaripper horror', 7,
        'While it is unknown if a Submaripper can be fully trained, it can be tamed to a certain extent. If one helps or saves a Submaripper, the dragon will stop being aggressive and will even return the favour. The Submaripper''s undying loyalty will have been earned.',
        true, 'Creating whirlpools and tidal waves',
        'night', 'winter', 2, 6, 88, 0.35);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (3, 88);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (16, 88);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'Wide variety of colors',
        'Green/orange fire',
        'Sail on back');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Thunderclaw', 7,
        'Thunderclaws are relatively easy to train, as they are mostly peaceful dragons. If a person saves a Thunderclaw''s life, the dragon will be forever thankful and will stay close to its savior',
        true, 'Tracking',
        'night', 'autumn', 3, 11, 89, 0.82);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (2, 89);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 89);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (7, 89);

INSERT INTO dragon_appearance (size, color, fire_type, features)
VALUES ('medium', 'green',
        'Green or Orange Fireballs',
        'Bumps all over body');
INSERT INTO dragon_types (name, class_id, way_of_taming, trainable, abilities, active_time, mating_season,
                          hatching_age, puberty_age, appearance_id, rarity)
VALUES ('Windgnasher', 7,
        'Windgnashers are relatively easy to train, as they are calm and friendly dragons. If a person saves a Windgnasher''s life, the dragon will be forever thankful and will stay close to its savior',
        true, 'Tracking',
        'night', 'summer', 4, 13, 90, 0.17);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (19, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (25, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (21, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (17, 90);
INSERT INTO dragon_diet (food_id, dragon_type_id)
VALUES (6, 90);