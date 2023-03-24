---@meta

---@alias addhook_hook
---| '"always"'
---| '"assist"'
---| '"attack"'
---| '"attack2"'
---| '"bombdefuse"'
---| '"bombexplode"'
---| '"bombplant"'
---| '"break"'
---| '"build"'
---| '"buildattempt"'
---| '"buy"'
---| '"clientdata"'
---| '"clientsetting"'
---| '"collect"'
---| '"connect"'
---| '"connect_attempt"'
---| '"connect_initplayer"'
---| '"die"'
---| '"disconnect"'
---| '"dominate"'
---| '"drop"'
---| '"endround"'
---| '"flagcapture"'
---| '"flagtake"'
---| '"flashlight"'
---| '"hit"'
---| '"hitzone"'
---| '"hostagedamage"'
---| '"hostagekill"'
---| '"hostagerescue"'
---| '"hostageuse"'
---| '"httpdata"'
---| '"itemfadeout"'
---| '"join"'
---| '"key"'
---| '"kill"'
---| '"leave"'
---| '"log"'
---| '"mapchange"'
---| '"menu"'
---| '"minute"'
---| '"move"'
---| '"movetile"'
---| '"ms100"'
---| '"name"'
---| '"objectdamage"'
---| '"objectkill"'
---| '"objectupgrade"'
---| '"parse"'
---| '"projectile"'
---| '"projectile_impact"'
---| '"radio"'
---| '"rcon"'
---| '"reload"'
---| '"say"'
---| '"sayteam"'
---| '"sayteamutf8"'
---| '"sayutf8"'
---| '"second"'
---| '"select"'
---| '"serveraction"'
---| '"shieldhit"'
---| '"shutdown"'
---| '"spawn"'
---| '"specswitch"'
---| '"spray"'
---| '"startround"'
---| '"startround_prespawn"'
---| '"suicide"'
---| '"team"'
---| '"trigger"'
---| '"triggerentity"'
---| '"turretscan"'
---| '"use"'
---| '"usebutton"'
---| '"vipescape"'
---| '"voice"'
---| '"vote"'
---| '"walkover"'

---@param hook addhook_hook
---@param func string
---@param prio? integer
function addhook(hook,func,prio) end

---@alias addbind_key
---| '"0"'
---| '"1"'
---| '"2"'
---| '"3"'
---| '"4"'
---| '"5"'
---| '"6"'
---| '"7"'
---| '"8"'
---| '"9"'
---| '"A"'
---| '"B"'
---| '"C"'
---| '"D"'
---| '"E"'
---| '"F"'
---| '"G"'
---| '"H"'
---| '"I"'
---| '"J"'
---| '"K"'
---| '"L"'
---| '"M"'
---| '"N"'
---| '"O"'
---| '"P"'
---| '"Q"'
---| '"R"'
---| '"S"'
---| '"T"'
---| '"U"'
---| '"V"'
---| '"W"'
---| '"X"'
---| '"Y"'
---| '"Z"'
---| '"mouse1"'
---| '"mouse2"'
---| '"mouse3"'
---| '"mwheelup"'
---| '"mwheeldown"'
---| '"leftshift"'
---| '"rightshift"'
---| '"leftctrl"'
---| '"rightctrl"'
---| '"leftalt"'
---| '"rightalt"'
---| '"leftsys"'
---| '"rightsys"'
---| '"leftarrow"'
---| '"rightarrow"'
---| '"uparrow"'
---| '"downarrow"'
---| '"backspace"'
---| '"tab"'
---| '"clear"'
---| '"enter"'
---| '"escape"'
---| '"space"'
---| '"pgup"'
---| '"pgdown"'
---| '"end"'
---| '"home"'
---| '"select"'
---| '"print"'
---| '"execute"'
---| '"screen"'
---| '"ins"'
---| '"del"'

---@param key addbind_key
---@return integer
function addbind(key) end

---@alias player_value
---| '"exists"'
---| '"name"'
---| '"ip"'
---| '"port"'
---| '"usgn"'
---| '"usgnname"'
---| '"steamid"'
---| '"steamname"'
---| '"bot"'
---| '"rcon"'
---| '"language"'
---| '"language_iso"'
---| '"team"'
---| '"favteam"'
---| '"look"'
---| '"sprayname"'
---| '"spraycolor"'
---| '"mousex"'
---| '"mousey"'
---| '"mousemapx"'
---| '"mousemapy"'
---| '"screenw"'
---| '"screenh"'
---| '"widescreen"'
---| '"windowed"'
---| '"micsupport"'
---| '"x"'
---| '"y"'
---| '"tilex"'
---| '"tiley"'
---| '"rot"'
---| '"health"'
---| '"maxhealth"'
---| '"armor"'
---| '"money"'
---| '"score"'
---| '"deaths"'
---| '"teamkills"'
---| '"hostagekills"'
---| '"mvp"'
---| '"assists"'
---| '"ping"'
---| '"idle"'
---| '"speedmod"'
---| '"spectating"'
---| '"ai_flash"'
---| '"weapontype"'
---| '"weaponmode"'
---| '"nightvision"'
---| '"defusekit"'
---| '"gasmask"'
---| '"bomb"'
---| '"flag"'
---| '"reloading"'
---| '"process"'
---| '"votekick"'
---| '"votemap"'
---| '"table"'
---| '"tableliving"'
---| '"team1"'
---| '"team2"'
---| '"team1living"'
---| '"team2living"'

---@param id integer
---@param value player_value
---@return boolean|string|number|table
function player(id,value) end

---@param text string
function msg(text) end

---@param id integer
---@param text string
function msg2(id,text) end

---@param path string
---@return string
function checksumfile(path) end

---@param str string
---@return string
function checksumstring(str) end

---@param id integer
---@return integer x
---@return integer y
function closehostage(id) end

---@param id integer
---@param range integer
---@return table
function closeitems(id,range) end

---@param x integer
---@param y integer
---@param radius integer
---@param type? integer
---@return table
function closeobjects(x,y,radius,type) end

---@param x integer
---@param y integer
---@param radius integer
---@param team? integer
function closeplayer(x,y,radius,team) end

---@alias entity_value
---| '"exists"'
---| '"typename"'
---| '"type"'
---| '"name"'
---| '"trigger"'
---| '"state"'
---| '"int0"'
---| '"int1"'
---| '"int2"'
---| '"int3"'
---| '"int4"'
---| '"int5"'
---| '"int6"'
---| '"int7"'
---| '"int8"'
---| '"int9"'
---| '"str0"'
---| '"str1"'
---| '"str2"'
---| '"str3"'
---| '"str4"'
---| '"str5"'
---| '"str6"'
---| '"str7"'
---| '"str8"'
---| '"str9"'
---| '"aistate"'

---@param x integer
---@param y integer
---@param value entity_value
---@return integer|boolean|string
function entity(x,y,value) end

---@param type integer
---@return table
function entitylist(type) end

---@param id integer
---@param x number
---@param y number
---@return integer
function fow_in(id,x,y) end

---@param hook addhook_hook
---@param func string
function freehook(hook,func) end

---@param id integer
function freeimage(id) end

---@param func? string
---@param param? string
function freetimer(func,param) end

---@return nil
function funcs() end

---@alias game_value
---| '"version"'
---| '"dedicated"'
---| '"phase"'
---| '"round"'
---| '"timeleft"'
---| '"maptimeleft"'
---| '"score_t"'
---| '"score_ct"'
---| '"winrow_t"'
---| '"winrow_ct"'
---| '"nextmap"'
---| '"ticks"'
---| '"port"'
---| '"bombplanted"'
---| '"sysfolder"'

---@param value game_value
---@return number|boolean|string
function game(value) end

---@alias team
---| 0 # all
---| 1 # T
---| 2 # CT

---@param x number
---@param y number
---@param radius number
---@param team team
function hascloseplayers(x,y,radius,team) end

---@alias hostage_value
---| '"exists"'
---| '"health"'
---| '"follow"'
---| '"used"'
---| '"look"'
---| '"x"'
---| '"y"'
---| '"rot"'
---| '"tilex"'
---| '"tiley"'
---| '"table"'

---@param id integer
---@param value hostage_value
function hostage(id,value) end
