CREATE TABLE `ps_map_data_source_cstrikes` (
  `dataid` int unsigned NOT NULL default '0',
  `ctkills` smallint unsigned NOT NULL default '0',
  `terroristkills` smallint unsigned NOT NULL default '0',
  `joinedct` smallint unsigned NOT NULL default '0',
  `joinedterrorist` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `bombdefuseattempts` smallint unsigned NOT NULL default '0',
  `bombdefused` smallint unsigned NOT NULL default '0',
  `bombexploded` smallint unsigned NOT NULL default '0',
  `bombplanted` smallint unsigned NOT NULL default '0',
  `bombrunner` smallint unsigned NOT NULL default '0',
  `killedhostages` smallint unsigned NOT NULL default '0',
  `rescuedhostages` smallint unsigned NOT NULL default '0',
  `touchedhostages` smallint unsigned NOT NULL default '0',
  `vipescaped` smallint unsigned NOT NULL default '0',
  `vipkilled` smallint unsigned NOT NULL default '0',
  `ctwon` smallint unsigned NOT NULL default '0',
  `ctlost` smallint unsigned NOT NULL default '0',
  `terroristwon` smallint unsigned NOT NULL default '0',
  `terroristlost` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_data_source_cstrikes` (
  `dataid` int unsigned NOT NULL default '0',
  `ctkills` smallint unsigned NOT NULL default '0',
  `terroristkills` smallint unsigned NOT NULL default '0',
  `ctdeaths` smallint unsigned NOT NULL default '0',
  `terroristdeaths` smallint unsigned NOT NULL default '0',
  `joinedct` smallint unsigned NOT NULL default '0',
  `joinedterrorist` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `bombdefuseattempts` smallint unsigned NOT NULL default '0',
  `bombdefused` smallint unsigned NOT NULL default '0',
  `bombexploded` smallint unsigned NOT NULL default '0',
  `bombplanted` smallint unsigned NOT NULL default '0',
  `bombspawned` smallint unsigned NOT NULL default '0',
  `bombrunner` smallint unsigned NOT NULL default '0',
  `killedhostages` smallint unsigned NOT NULL default '0',
  `rescuedhostages` smallint unsigned NOT NULL default '0',
  `touchedhostages` smallint unsigned NOT NULL default '0',
  `vip` smallint unsigned NOT NULL default '0',
  `vipescaped` smallint unsigned NOT NULL default '0',
  `vipkilled` smallint unsigned NOT NULL default '0',
  `ctwon` smallint unsigned NOT NULL default '0',
  `ctlost` smallint unsigned NOT NULL default '0',
  `terroristwon` smallint unsigned NOT NULL default '0',
  `terroristlost` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;
CREATE TABLE `ps_plr_maps_source_cstrikes` (
  `dataid` int unsigned NOT NULL default '0',
  `ctkills` smallint unsigned NOT NULL default '0',
  `terroristkills` smallint unsigned NOT NULL default '0',
  `ctdeaths` smallint unsigned NOT NULL default '0',
  `terroristdeaths` smallint unsigned NOT NULL default '0',
  `joinedct` smallint unsigned NOT NULL default '0',
  `joinedterrorist` smallint unsigned NOT NULL default '0',
  `joinedspectator` smallint unsigned NOT NULL default '0',
  `bombdefuseattempts` smallint unsigned NOT NULL default '0',
  `bombdefused` smallint unsigned NOT NULL default '0',
  `bombexploded` smallint unsigned NOT NULL default '0',
  `bombplanted` smallint unsigned NOT NULL default '0',
  `bombspawned` smallint unsigned NOT NULL default '0',
  `bombrunner` smallint unsigned NOT NULL default '0',
  `killedhostages` smallint unsigned NOT NULL default '0',
  `rescuedhostages` smallint unsigned NOT NULL default '0',
  `touchedhostages` smallint unsigned NOT NULL default '0',
  `vip` smallint unsigned NOT NULL default '0',
  `vipescaped` smallint unsigned NOT NULL default '0',
  `vipkilled` smallint unsigned NOT NULL default '0',
  `ctwon` smallint unsigned NOT NULL default '0',
  `ctlost` smallint unsigned NOT NULL default '0',
  `terroristwon` smallint unsigned NOT NULL default '0',
  `terroristlost` smallint unsigned NOT NULL default '0',
  PRIMARY KEY  (`dataid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE utf8mb4_general_ci;

-- Moved from defaults.sql.
INSERT INTO `ps_config_events` (`id`, `gametype`, `modtype`, `eventname`, `alias`, `regex`, `idx`, `ignore`, `codefile`) 
    VALUES 
        (1,'source','','kill','','/^\"(.+(?:<[^>]*>))\" killed \"(.+(?:<[^>]*>))\" with \"([^\"]*)\"(.*)/',10,0,''),
        (2,'source','','attacked','','/^\"(.+(?:<[^>]*>))\" attacked \"(.+(?:<[^>]*>))\" with \"([^\"]+)\"(.*)/',20,1,''),
        (3,'source','','plrtrigger','','/^\"(.+(?:<[^>]*>))\" triggered \"([^\"]+)\"(.*)/',30,0,''),
        (4,'source','','round','','/^World triggered \"([^\"]+)\"(.*)/',40,0,''),
        (5,'source','','entered_game','','/^\"(.+(?:<[^>]*>))\" entered the game(.*)/',50,0,''),
        (6,'source','','joined_team','','/^\"(.+(?:<[^>]*>))\" joined team \"([^\"]+)\"/',60,0,''),
        (7,'source','','suicide','','/^\"(.+(?:<[^>]*>))\" committed suicide with \"([^\"]+)\"(.*)/',70,0,''),
        (8,'source','','changed_name','','/^\"(.+(?:<[^>]*>))\" changed name to \"([^\"]+)\"/',80,0,''),
        (9,'source','','connected','','/^\"(.+(?:<[^>]*>))\" connected, address \"([^\"]+)\"/',90,0,''),
        (10,'source','','connected_steamid','','/^\"(.+(?:<[^>]*>))\" (?:STEAM|VALVE) USERID (.+)/',100,0,''),
        (11,'source','','disconnected','','/^\"(.+(?:<[^>]*>))\" disconnected/',110,0,''),
        (12,'source','','chat','','/^\"(.+(?:<[^>]*>))\" say(_team)* \"(.*)\"?(.*)/',120,0,''),
        (13,'source','','rcon','','/^(Bad )?Rcon: \"rcon (-*\\d+) \"?(.*?)\"? (.+?)(?:\" from \"([^\"]+)\")?/',130,1,''),
        (14,'source','','cheated','','/^Secure: \"(.+(?:<[^>]*>))\" was detected cheating/',140,0,''),
        (15,'source','','ban','','/^(Addip|Ban(?:id)?): \"([^\"]+)\" was (?:kicked and )?(?:banned)(?: by IP)? \"([^\"]+)\" by \"([^\"]+)\"(.*)/',150,1,''),
        (16,'source','','unban','','/^Remove(id|ip): \"([^\"]+)\" was unbanned by \"(.+(?:<[^>]*>))\"(.*)/',160,1,''),
        (17,'source','','kick','','/^Kick: \"(.+(?:<[^>]*>))\" was kicked by \"(.+(?:<[^>]*>)?)\"(.*)/',170,0,''),
        (18,'source','','pingkick','','/^\"(.+(?:<[^>]*>))\" kicked due to high ping(.*)/',180,0,''),
        (19,'source','','ffkick','','/^\"(.+(?:<[^>]*>))\" has been auto kicked from the game for TKing/',190,0,''),
        (20,'source','','startedmap','','/^(Started|Loading) map \"([^\"]+)\"(.*)/',200,0,''),
        (21,'source','','logstartend','','/^Log file (started|closed)(.*)/',210,0,''),
        (22,'source','','ignored1','','/^[Ss]erver (?:cvars?|say|shutdown)/',220,1,''),
        (23,'source','','ignored2','','/^(?:\\]TSC\\[|Succeeded|FATAL|-|Loaded)/',230,1,''),
        (24,'source','','ignored3','','/^(?:Config|Swear|server_)/',240,1,''),
        (25,'source','','ignored4','','/^\"[^\"]+\" = \"/',250,1,''),
        (26,'source','cstrikes','cs_teamscore','','/^Team \"([^\"]+)\" scored \"([^\"]+)\" with \"([^\"]+)\" players/',260,0,''),
        (27,'source','cstrikes','teamtrigger','','/^Team \"([^\"]+)\" triggered \"([^\"]+)\"(.*)/',270,0,''),
        (28,'source','cstrikes','cs_ignore1','','/^Counter-Strike Plugin/',280,1,''),
        (29,'source','cstrikes','cs_ignore2','','/^Votemap/',290,1,''),
        (33,'source','','changed_role','','/^\"(.+(?:<[^>]*>))\" changed role to \"([^\"]+)\"/',330,0,''),
        (45,'source','','rcon2','','/^rcon from/',130,1,''),
        (48,'source','','spatial','','/^\\[KTRAJ\\] \"(.+(?:<[^>]*>))\" killed \"(.+(?:<[^>]*>))\" with \"([^\"]*)\"(.*)/',480,0,''),
        (49,'source','','plugin','','/^\\[[^\\]]+\\]/',490,1,''),
        (50,'source','','console','','/^(CONSOLE|PLAYER FILTER) :/',500,1,''),
        (100,'source','','ignored5','','/^Server name is \"([^"]+)\"/',1000,1,''),
        (101,'source','','ignored6','','/^Connection to Steam servers successful./',1010,1,''),
        (102,'source','','ignored7','','/^VAC secure mode is activated./',1020,1,''),
        (103,'source','','ignored8','','/^Assigned anonymous gameserver Steam ID \[(.:\\d:\\d+:\\d+)\]./',1030,1,''),
        (104,'source','','ignored9','','/^Public IP is ([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}|(\\d{1,3}\.){3}\\d{1,3}./',1040,1,'');

INSERT INTO `ps_config_plrbonuses` (`id`, `eventname`, `enactor`, `enactor_team`, `victim`, `victim_team`, `description`, `gametype`, `modtype`) 
    VALUES 
        (1,'planted_the_bomb',2,1,0,-1,'When a player plants the bomb','source','cstrikes'),
        (2,'defused_the_bomb',2,0,-1,0,'A player defused the bomb successfully. Use the \'bomb_defused\' event for team bonses.','source','cstrikes'),
        (3,'rescued_a_hostage',3,0,0,0,'When a player rescues a hostage','source','cstrikes'),
        (8,'bomb_runner',1,0,0,0,'Player spawned with and planted the bomb w/o dropping it','source','cstrikes'),
        (7,'bomb_defused',0,2,0,-2,'TEAM event that fires when a round ends and the CT team defuses the bomb (use \'defused_the_bomb\' for enactor bonus)','source','cstrikes'),
        (10,'target_bombed',5,2,0,-2,'TEAM event that fires when the bomb explodes and the terrorists win','source','cstrikes'),
        (12,'all_hostages_rescued',0,2,0,-2,'TEAM event that fires when all hostages on a CS map have been rescued (no enactor)','source','cstrikes'),
        (13,'target_saved',0,5,0,-5,'TEAM event that fires when a round ends and the terrorists did not plant a bomb','source','cstrikes'),
        (14,'hostages_not_rescued',0,2,0,-2,'TEAM event that fires when a round ends and the hostages are NOT rescued','source','cstrikes'),
        (28,'killed_a_hostage',-3,0,0,0,'When a player kills a hostage','source','cstrikes'),
        (29,'escaped_as_vip',10,0,0,0,'When a player escapes an \'es\' map as the VIP (use \'vip_escaped\' for team bonuses)','source','cstrikes'),
        (30,'vip_escaped',0,5,0,-5,'TEAM event that fires when the VIP escapes the map (use escaped_as_vip for enactor bonus)','source','cstrikes'),
        (31,'assassinated_the_vip',10,0,-5,0,'When a player kills the VIP (use \'vip_assassinated\' for team bonuses)','source','cstrikes'),
        (32,'vip_assassinated',0,10,0,-10,'TEAM event that fires when the VIP was killed (use \'assassinated_the_vip\' for enactor bonus)','source','cstrikes'),
        (33,'vip_not_escaped',0,5,0,-5,'TEAM event that fires when the VIP does not escape and terrorists win','source','cstrikes'),
        (34,'ffkill',-10,0,0,0,'when a player kills a team mate','','');

INSERT INTO `ps_config_awards` (`id`, `enabled`, `idx`, `type`, `negative`, `class`, `name`, `groupname`, `phrase`, `expr`, `order`, `where`, `limit`, `format`, `gametype`, `modtype`, `rankedonly`, `description`) 
    VALUES 
        (4,1,10,'player',0,'','Highest Skill','','{$player.link} has the highest skill with {$award.value}','{$skill}','desc','',0,'%.02f',NULL,NULL,1,'Player with the highest skill'),
        (5,1,90,'player',0,'','Most Bombings','','{$player.link} has the most successful bombings ({$award.value} bombs)','{$bombexploded}','desc','',25,'commify','source','cstrikes',1,'Players with the most successful bombed targets'),
        (6,1,20,'player',0,'','Most Kills','','{$player.link} has killed the most players ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Player with the most kills (any team)'),
        (7,1,110,'player',0,'','Most Hostages Rescued','','{$player.link} has rescued the most hostages ({$award.value})','{$rescuedhostages}','desc','',0,'commify','source','cstrikes',1,'Players that risk life and limb to save hostages!'),
        (8,1,70,'player',0,'','Most Time Online','','{$player.link} has been online the longest ({$award.value})','{$onlinetime}','desc','',25,'compacttime',NULL,NULL,1,'Player with the most online time'),
        (9,1,190,'weaponclass',0,'','Most Kills with {$weapon.class} weapons','','{$player.link} has the most {$weapon.class} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with {$weapon.class} type weapons (including: {$weapon.list}).'),
        (10,1,180,'weapon',0,'','Most Kills with {$weapon.name}','','{$player.link} has the most {$weapon.link} kills ({$award.value})','{$kills}','desc','',0,'commify',NULL,NULL,1,'Most kills with a {$weapon.name}'),
        (11,1,80,'player',0,'','Demolitions Man','','{$player.link} has the best demolition percentage of {$award.value}','{$bombrunner} / {$bombexploded} * 100','desc','',25,'%0.02f%%','source','cstrikes',1,'Players with the highest percentage of spawning with and planting the bomb and actually having it explode.'),
        (12,1,100,'player',0,'','Bomb Defusal Expert','','{$player.link} has the best defusal rating of {$award.value}','{$bombdefused} / {$bombdefuseattempts} * 100','desc','{$bombdefused} >= 5',25,'%0.02f%%','source','cstrikes',1,'Player with the best bomb defuses percentage (must have at least 5 defuses to count)'),
        (13,1,30,'player',0,'','Most Bonus Points','','{$player.link} achieved the most bonus points ({$award.value})','{$totalbonus}','desc','',25,'commify',NULL,NULL,1,'Player that has achieved the most bonus points.'),
        (23,1,50,'player',1,'','Worst Teammate','','{$player.link} has killed the most teammates ({$award.value})','{$ffkills}','desc','',0,'commify',NULL,NULL,1,'Player with the most friendly fire kills (ie: Worst Teammate)'),
        (25,1,60,'player',1,'','Worst Team Kill Percentage','','{$player.link} has the highest team kill percentage ({$award.value})','{$ffkills} / {$kills} * 100','desc','',0,'%0.02f%%',NULL,NULL,1,'Player with the highest team kill percentage.'),
        (26,1,120,'player',1,'','Most Hostages Killed','','{$player.link} has killed the most hostages ({$award.value})','{$killedhostages}','desc','',0,'%s','source','cstrikes',1,'Players that like to kill hostages instead of rescuing them.');
