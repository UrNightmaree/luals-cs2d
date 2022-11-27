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

--[[
Attaches the Lua function "func" to the hook "hook". CS2D will always call that Lua function when the event related to that hook occurs.
Priority is only relevant if there is more than one function attached to the same hook.
<s>
]]
---@param hook addhook_hook
---@param func string
---@param prio? number
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

--[[
Adds a Lua key bind for the specified key. This bind will be active for all players and will trigger the key-hook when a player presses or releases the related key.
Returns 1 if adding the key bind worked, 0 otherwise (invalid key name/already bound).
<s>
]]
---@param key addbind_key
---@return number
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

--[[
Returns a value of a player or a table of players. Returns false if the specified player, value or table does not exist.
<s>
]]
---@param id number
---@param value player_value
---@return boolean|string|number|table
function player(id,value) end


--[[
Sends "text" as server message to all players.
]]
---@param text string
function msg(text) end


--[[
Sends "text" to a certain player (id) only.
]]
---@param id number
---@param text string
function msg2(id,text) end


--[[
Returns the SHA256 checksum of the file at this path.
]]
---@param path string
---@return string
function checksumfile(path) end


--[[
Returns the SHA256 checksum of the given string.
]]
---@param str string
---@return string
function checksumstring(str) end


--[[
Returns the tile x and y position of the closest living and unused hostage to a given player. Returns -100,-100 if no hostage has been found.
]]
---@param id number
---@return number x
---@return number y
function closehostage(id) end


--[[
Returns a Lua table with all IDs of items which are close to the player specified with the id parameter. Only dropped items which are within the range will be returned.
]]
---@param id number
---@param range number
---@return table
function closeitems(id,range) end


--[[
Returns a list of objects which are within the specified radius (in pixels) around the specified position (X|Y) in pixels.
]]
---@param x number
---@param y number
---@param radius number
---@param type? number
---@return table
function closeobjects(x,y,radius,type) end


--[[
Returns a list of all alive players (IDs) which are within the specified radius (in pixels) around the specified position (x|y) in pixels.
]]
---@param x number
---@param y number
---@param radius number
---@param team? number
function closeplayer(x,y,radius,team) end
