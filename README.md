# Level 0 NPCs

A WeiDU mod for BG:EE, BG:SoD, BG2:EE, and EET.

## Overview

Level 0 NPCs is a modern reimplementation of the classic mod [Level 1 NPCs](https://www.gibberlings3.net/mods/npcs/level1npcs/) designed to be compatible with the Enhanced Editions. It allows you to change class, kit and the primary attributes of joinable characters. The mod strives to provide the experience of its predecessor while drawing inspiration and its core mechanic from another great mod, [NPC_EE](https://github.com/UnearthedArcana/NPC_EE). Without these two mods, Level 0 NPCs wouldn't exist.

The mod allows you to re-spec any joinable NPC from Baldur's Gate I and II, and the Siege of Dragonspear expansion. All vanilla joinable characters are supported, with a few notable exceptions. Unlike the original Level 1 NPCs that fully reconstructed the character based on the player's choices, Level 0 NPCs outsources most of the complexity to the game engine.

It supports versions 2.5, 2.6.6 and 2.7.3 of the game, and installs on BG:EE (with or without the SoD expansion), BG2:EE, or the [Enhanced Edition Trilogy](https://github.com/Gibberlings3/EET).

## How it works

Each character has its own component during installation time. You may choose class and kit, redistribute primary attributes, and, optionally, select a racial enemy or assign some of the thieving skill points (if the chosen class allows it). When you encounter the character in the game, they will join with a level of 0, an XP value of 0, and a single Hit Point. Once they do, **you should level them up immediately**, before they gain any XP. You will be given the opportunity to choose the initial proficiencies and spells, and distribute the rest of the thieving skill points (if any).

The engine will then reset the character's various attributes to their proper values, assign the appropriate passive and active abilities of your chosen class and kit, and leave the character at level 1 with zero experience points. A few seconds after that, an automatic script will kick in and bring the character's total XP value close to that of your protagonist. You can now level up for the second time, which will be a regular level-up.

You can choose any class or kit for any character, including a multi-class. The mod ignores any restrictions and limitations due to race, alignment, primary attributes or other factors.

Only true classes are allowed when choosing a multi-class, with the exception of gnome characters – the mod auto-assigns an Illusionist kit to them (see [Game quirks](#game-quirks), point 4).

Ability scores range from 3 to 25. The mod does not enforce racial or class minimums and maximums. A warrior with Strength 18 is asked for the exceptional strength value. Scores you leave untouched keep their original values, exceptional strength included.

Thieving skill points come in two parts. Character creation hands out more points than any level-up does (e.g., 40 compared to 25 for unkitted thieves). The mod compensates for the difference during installation according to the preset of the chosen kit or class. The first level-up from level 0 to 1 then adds its own points for you to place, and the game applies the race and Dexterity bonuses on top.

Weapon proficiencies are entirely yours to pick during the first level-up, within the limits of the new class. The mod adds none on top, with the exception of the ranger's complimentary stars in two-weapon fighting.

Mages and bards come with a spellbook filled by the mod: two spells for every spell level the character's original XP unlocks, one more for a specialist, and the wild mage's own spells on top. Sorcerers and shamans pick their spells during the first level-up, just like at character creation. Clerics and druids learn their spells as usual and start with Cure Light Wounds memorized.

Characters keep their unique innate abilities and racial traits whatever the new class: drow magic resistance, Haer'Dalis's tiefling resistances, M'Khiin's infravision, and so on. Haer'Dalis also keeps his +1 THAC0 bonus and Sarevok his Deathbringer on-hit effect, as they did in Level 1 NPCs.

Personal items, the gear the game reserves for a single character, stay usable by that character under any class or kit.

The mod does not provide means to set up dual-class combinations of a specific, predefined configuration. Regular dual-classing in-game would still work, of course, if the character fits the necessary requirements (race, alignment, base and target class, etc.)

## Installation

Level 0 NPCs is a regular WeiDU mod that ships with the WeiDU binary appropriate for the chosen platform and architecture.

The mod is highly interactive and expects a lot of user input. Therefore, I recommend performing the installation by hand, by running the setup-level0npcs executable. I have not tested any of the automated mod installers.

If you want to re-spec any of the Siege of Dragonspear expansion characters, make sure you install Argent77's [DlcMerger](https://github.com/Argent77/A7-DlcMerger) mod first.

When it comes to the installation order, take care to install Level 0 NPCs as late as possible. The following categories of mods should go before Level 0 NPCs:

- any mods that tweak the base ruleset: vanilla classes and kits, item restrictions, thieving skills, weapon proficiencies, etc.;
- any mods that provide new kits or classes;
- any mods that change the vanilla joinable characters in any way;
- any mods that create new joinable characters (provided that you want to re-spec them, and Level 0 NPCs supports the character in question);
- any mods that add new spells or modify the existing ones;
- any mods that update or modify the existing items in any way;
- the EET if you choose to play the whole trilogy (it is safe to install Level 0 NPCs after the EET_end component).

## Compatibility

Generally, Level 0 NPCs tries to be as small and unobtrusive as possible.

For obvious reasons, don't try to mix and match Level 0 NPCs with any mod or component(s) of a mod that offers similar functionality: Level 1 NPCs, NPC_EE, Argent77's [Convenient Enhanced Edition NPCs](https://github.com/Argent77/A7-NoEENPCs), certain components from [SCS](https://github.com/Gibberlings3/SwordCoastStratagems) or [Tweaks Anthology](https://github.com/Gibberlings3/Tweaks-Anthology), etc. Choose any single one and stick to it.

In theory, Level 0 NPCs should be able to pick up custom kits and plug them into the selection process, but inconsistencies or weird things may occur that would require a manual workaround.

Mods that change spells are picked up as far as the spellbook goes: it follows the school and exclusion flags of the installed spell files and skips the spells the game hides.

Mods that change a ruleset or modify a vanilla character's behavior in an unpredictable way may cause conflicts.

Any mod that introduces a custom character is a potential candidate for integration into Level 0 NPCs, as long as you communicate the need to me.

The quantity of existing mods and their permutations is too high for me to be able to ship built-in support without prior notice. Should any of these circumstances arise, please let me know and we'll figure it out.

## Compatible mods

Mods with their own take on the joinable characters that Level 0 NPCs knows about. Install them before Level 0 NPCs. The characters you don't re-spec keep the other mod's treatment.

### Improved Anvil

[Improved Anvil](https://github.com/critto-bg/improvedanvil) gives each joinable character experience points when they join, so that they keep up with the protagonist. For a character you re-spec, Level 0 NPCs removes this mechanism and uses its own instead. Otherwise the experience points would arrive before the character's first level-up and skip the proficiency choices of that level.

Improved Anvil's smiths forge upgraded versions of the personal items. For a character you re-spec, those follow the personal items: any class and kit can use them, and they stay locked to their owner. The alignment and ability score requirements Improved Anvil puts on some of them remain untouched.

## Game quirks

This section lists a variety of game quirks, and the ways the mod handles them. For the purpose of brevity, I will refer to the process of leveling up a character from level 0 to level 1 as `Level0->1` from here on.

1. **I recommend starting a new game.** The game embeds a copy of every joinable character (with some exceptions) into the save the moment a new game starts. It may then re-read the character from the game files according to a special table, based on the average level of your party. This works in BG:EE and BG2:EE alike. The EET enforces this behavior for the purposes of continuity. There's no guarantee that changes made to a character mid-playthrough will appear in your game.

2. The joining XP bonus is disabled. When a character joins the party, their own script normally sets their XP to a fixed tier based on the XP of your protagonist. A level 0 character would jump several levels at once and skip `Level0->1` entirely. The mod switches this off for every re-specced character and lets its own XP helper do the job instead.

3. The mod moves any gear the new class or kit cannot use to the inventory during installation. The weapons that remain are packed into the quick weapon slots, as many as the new class or kit gets, and the rest go to the inventory as well. The weapon in the first slot becomes the selected one.

4. A gnome multi-class with a mage part becomes an illusionist. The record screen labels the class Illusionist regardless, but the game runs it as the true class: a plain mage gets no extra spell slots and retains access to every school of magic. To avoid confusion, the mod writes the kit up front. A single-class gnome mage keeps the kit you chose and behaves properly.

5. When you start Siege of Dragonspear, the intro hands the default party its BG1 gear and equips it by script, ignoring the class rules: a Kensai Dynaheir would end up wearing Evermemory she can't use. The mod removes the equip step.

6. A monk receives 10 thieving skill points during `Level0->1` that character creation would never give in a vanilla game. There's nothing that the mod can do at install time short of changing every monk in the game. Enjoy the free bonus.

7. The mod chooses an avatar appropriate for the new class, gender and race combination, as the game would at character creation. A character without a regular avatar, such as M'Khiin, keeps their own. The game has no halfling mage sprite, so a halfling mage (Montaron, Mazzy, Alora) keeps the old one, where Level 1 NPCs handed out the thief's.

8. Personal items lose their class and kit restrictions and nothing else. The race and alignment requirements, the ability score minimums and the per-character rules stay as they are.

## Character oddities and workarounds

1. The mod does not support changing Wilson. The bear possesses a unique kit, weapons, and proficiencies of his own. A re-spec would have to go beyond the regular reassignment of class and attributes, which I felt was out of scope for this mod, so I left his files alone.

2. Clara, the thief who first presents herself as Hexxat, is left untouched. She is a level 8 thief built for a single quest, and the Hexxat component covers only the real character.

3. Caelar is not supported either. Her one creature file is created by cutscene scripts through the SoD campaign and, finally, for the one fight she may join. I saw no reason to bother with this one.

4. Hexxat's scripts trigger the mist form the moment she drops to 1 HP, which is exactly where she would end up at level 0, permanently stuck and unable to level up. Her files get 2 HP at level 0 instead.

5. Hexxat's quest reward, 10,000 XP to the party, is granted the moment she joins. A level 0 character with XP cannot take the first level properly, so the reward is delayed until after `Level0->1`.

6. Jaheira has a set of "you are hurt" banters that fire when Aerie or Nalia drop below 10 HP, or she herself below 15, which is where a level 0 or 1 character ends up. The Aerie, Jaheira and Nalia components add a level check to those triggers, as Level 1 NPCs did. If Tweaks Anthology's "Alter HP Triggers" is installed first, the mod changes nothing.

7. The game decides Shar-Teel's duel by HP percentages. At level 0 her built-in protection keeps her at 1 of 1 HP, so she could never yield. The mod gives her a hidden item worth +16 maximum HP, destroyed the moment she joins or turns hostile. She duels with 17 HP, THAC0 20 and no proficiencies: an easier fight than in the stock game.

8. Viconia is fought over twice before she joins: in BG1 the Flaming Fist mercenary attacks everyone present, and in BG2 the mob tries to burn her at the stake. At level 0 the first blow would end either scene, so her BG1 and BG2 files carry a protective amulet, destroyed the moment she joins. As a side effect, she cannot be left to die in either scene.

9. In BG1, Dorn's joining is preceded by an ambush where the attackers go for him by name. A level 0 Dorn dies to the first blow, which ends the meeting for good, so his files carry the same protective amulet until the ambush is over. His own vanilla script removes it once the attackers are dead.

10. Neera can take any class and still finish her ToB quest. In the clearing north of Saradush the game waits for her to cast Nahal's Reckless Dweomer, a spell only a wild mage can learn. A Neera who can still cast wizard spells gets the spell in her book. Any other Neera learns a special innate ability instead, and the quest script accepts both the same way.

11. Cernd's challenge to Faldorn is left untouched. The ritual strips his gear and puts him alone against a high-level druid in the arena. Recruit him and level him up before you send him in: an un-recruited Cernd fights at level 0 and loses, which costs you the character, although the quest goes on.

12. Mazzy's Bow and Sword of Arvoreen become her personal items. In the vanilla game any halfling warrior could use them. Now only Mazzy can, under any class or kit combination.

13. Aerie starts out under an ogre illusion, and the game restores her true form as an elven mage. Her component rewrites that to the avatar of the new class, in her dialogue and in the circus script alike.

14. Aerie's default script forces her to leave the area when she drops below 5 HP. At level 0, this causes the ogre form to run for the exit after the first talk. The mod grants Aerie a hidden item worth +16 maximum HP, removed right before she joins.

15. Coran loses his extra 3rd star in Longbow when re-specced. Similarly, Haer'Dalis loses his bonus star in Short Sword.

## Thanks

My thanks to:

- Nythrun, the author of [Level 1 NPCs](https://www.gibberlings3.net/mods/npcs/level1npcs/), and its contributors cmorgan, Azazello, Miloch and erik.
- subtledoctor, the author of [NPC_EE](https://github.com/UnearthedArcana/NPC_EE), whose level 0 approach became the core mechanic of this mod.
- [WeiDU](https://weidu.org), by Westley Weimer, the bigg, and Wisp.
- [Near Infinity](https://github.com/Argent77/NearInfinity), by Jon Olav Hauglid and Argent77.
- [IESDP](https://gibberlings3.github.io/iesdp/), maintained by igi and lynx.
