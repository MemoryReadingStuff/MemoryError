local API = {}

--- General action on some objects, like bank chest
---@return number
API.OFF_ACT_GeneralObject_route0 = GeneralObject_route0

--- General action on some objects
---@return number
API.OFF_ACT_GeneralObject_route1 = GeneralObject_route1

--- General action on some objects
---@return number
API.OFF_ACT_GeneralObject_route2 = GeneralObject_route2

--- default act npc 0x29
---@return number
API.OFF_ACT_InteractNPC_route = InteractNPC_route

--- default attack npc
---@return number
API.OFF_ACT_AttackNPC_route = AttackNPC_route

--- default item pickup
---@return number
API.OFF_ACT_Pickup_route = Pickup_route

--- walk to tile
---@return number
API.OFF_ACT_Walk_route = Walk_route

--- special face route for bladed dive, familiar attack, use in inv
---@return number
API.OFF_ACT_Bladed_interface_route = Bladed_interface_route

--- option in chat box
---@return number
API.OFF_ACT_GeneralInterface_Choose_option = GeneralInterface_Choose_option

---
---@return number
API.OFF_ACT_Vs_player_attack_route = Vs_player_attack_route

--- General action on lootwindow, also most numbererfaces
---@return number
API.OFF_ACT_GeneralInterface_route = GeneralInterface_route

--- note stuff, use item on empty inv spot, use item on item
---@return number
API.OFF_ACT_GeneralInterface_route1 = GeneralInterface_route1

--- take bob/store bob/drop items
---@return number
API.OFF_ACT_GeneralInterface_route2 = GeneralInterface_route2

---
---@return number
API.OFF_ACT_Vs_player_follow_route = Vs_player_follow_route

---
---@return number
API.OFF_ACT_Vs_player_trade_route = Vs_player_trade_route

--- Bladed dive teleport
---@return number
API.OFF_ACT_Special_walk_route = Special_walk_route

--- somtimes text on interface
---@return number
API.I2off00textP = I2off00textP

--- somtimes other text on interface
---@return number
API.I2offitemids3 = I2offitemids3

--- somtimes item ids
---@return number
API.I2offitemids = I2offitemids

--- somtimes item stack size
---@return number
API.I2offitemstack = I2offitemstack



---@return number
function API.Get_HWND_GL()
	return Get_HWND_GL()
end

---@return number
function API.Get_HWND()
	return Get_HWND()
end

---@return number
function API.Get_PID()
	return Get_PID()
end

---@return number
function API.Get_HANDLE()
	return Get_HANDLE()
end

---@return number
function API.Read_fake_mouse_do()
	return Read_fake_mouse_do()
end

---@param state boolean
---@return number
function API.Write_fake_mouse_do(state)
	return Write_fake_mouse_do(state)
end

--- get localplayer name.
---@return string
function API.GetLocalPlayerName()
	return GetLocalPlayerName()
end

--- get localplayer memory address. is zero when not logged in or not found
---@return number
function API.GetLocalPlayerAddress()
	return GetLocalPlayerAddress()
end


--- draw droplist, CreateIG_answer before loop once
---@param data IG_answer
---@param ondbl boolean
---@return void
function API.DrawListBox(data,ondbl)
	return DrawListBox(data,ondbl)
end

--- draw comb, CreateIG_answer before loop once
---@param data IG_answer
---@param ondbl boolean
---@return void
function API.DrawComboBox(data,ondbl)
	return DrawComboBox(data,ondbl)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_char(addr, val)
	return Mem_Write_char(addr, val)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_short(addr, val)
	return Mem_Write_short(addr, val)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_int(addr, val)
	return Mem_Write_int(addr, val)
end

---@param val number
---@param addr number
---@return boolean
function API.Mem_Write_uint64(addr, val)
	return Mem_Write_uint64(addr, val)
end

---@param addr number
---@return number
function API.Mem_Read_char(addr)
	return Mem_Read_char(addr)
end

---@param addr number
---@return number
function API.Mem_Read_short(addr)
	return Mem_Read_short(addr)
end

---@param addr number
---@return number
function API.Mem_Read_int(addr)
	return Mem_Read_int(addr)
end

---@param addr number
---@return number
function API.Mem_Read_uint64(addr)
	return Mem_Read_uint64(addr)
end

---@param status string
---@return void
function API.Write_ScripCuRunning0(status)
	return Write_ScripCuRunning0(status)
end

---@param status string
---@return void
function API.Write_ScripCuRunning1(status)
	return Write_ScripCuRunning1(status)
end

---@param status string
---@return void
function API.Write_ScripCuRunning2(status)
	return Write_ScripCuRunning2(status)
end

--- Return material storagedata
---@return userdata --vector<IInfo>
function API.MaterialStorage()
	return MaterialStorage()
end

---Return trade window item array
---Default will return your own trade window (your offer) param set to "their" will return their offer
---@param which string optional "their" or default "self"
---@return userdata --vector<IInfo>
function API.TradeWindow(which)
	return TradeWindow(which)
end

--- Return array of bank inventory
---@return userdata IInfo
function API.FetchBankInvArray()
	return FetchBankInvArray()
end

--- Return array of bankdata
---@return userdata IInfo
function API.FetchBankArray()
	return FetchBankArray()
end

--- Return miniprogressbar, smithing heat, arch progress
---@return number
function API.LocalPlayer_HoverProgress()
	return LocalPlayer_HoverProgress()
end

--- change paint state
---@param value boolean
---@return void
function API.Write_Doaction_paint(value)
	return Write_Doaction_paint(value)
end

--- save setting from file
---@param value number --0-255
---@param settingfilename string
---@return number
function API.LoadIntSetting(settingfilename, value)
	return LoadIntSetting(settingfilename, value)
end

--- save setting to file
---@param value number --0-255
---@param slot number slot --0-30
---@param settingfilename string
---@return void
function API.SaveIntSetting(settingfilename, slot, value)
	return SaveIntSetting(settingfilename, slot, value)
end

--- draw tickbox at, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawCheckbox(data)
	return DrawCheckbox(data)
end

--- draw filled square at, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawSquareFilled(data)
	return DrawSquareFilled(data)
end

--- draw text at, CreateIG_answer before loop once
---@param data IG_answer
---@return void
function API.DrawTextAt(data)
	return DrawTextAt(data)
end

--- create data struct pointer
---@return IG_answer
function API.CreateIG_answer()
	return CreateIG_answer()
end

--- create FFPOINT
---@param x number
---@param y number
---@param z number
---@return FFPOINT
function API.CreateFFPOINT(x,y,z)
	return CreateFFPOINT(x,y,z)
end

--- count ticks
---@param val number --how many ticks
---@return boolean
function API.Count_ticks(val)
	return Count_ticks(val)
end

--- check if tick is happening
---@return boolean
function API.Check_tick()
	return Check_tick()
end

--- check if it is
---@param string ability_name 
---@return boolean
function API.isAbilityAvailable(ability_name)
	return isAbilityAvailable(ability_name)
end

--- check if processing/crafting/progress window is open
---@return boolean
function API.isProcessing()
	return isProcessing()
end

--- get player facing direction in angles
---@return number
function API.calculatePlayerOrientation()
	return calculatePlayerOrientation()
end

--- get facing direction in angles
---@param number mem_addr --AllObject MemE
---@return number
function API.calculateOrientation(mem_addr)
	return calculateOrientation(mem_addr)
end

--- Create FFPOINT vector
function API.CreateFFPointArray(points)
    local arr = CreateArrayFFPOINT()

    for i,v in ipairs(points) do
        arr:add(FFPOINT:new(v[1], v[2], v[3]))
    end

    return arr
end





--- open and use 1 to withdraw
---@param id number ---portable id
---@param text string ---sidetext
---@return boolean
function API.DoPortables0(id, text)
	return DoPortables(id, text)
end

--- open and use 1 to withdraw
---@param id number
---@return boolean
function API.OpenBankChest0(id)
	return OpenBankChest(id)
end

--- open with number --char press
---@param id number
---@param number --char number ---to press number --char code
---@return boolean
function API.OpenBankChest1(id,char)
	return OpenBankChest(id,char)
end

--- check 1 inv item
---@param check1 number
---@return boolean
function API.CheckInvStuff0(check1)
	return CheckInvStuff(check1)
end

--- heck 2 inv items
---@param check1 number
---@param check2 number
---@return boolean
function API.CheckInvStuff1(check1,check2)
	return CheckInvStuff(check1,check2)
end

--- Random number
---@param numbersize number
---@return number
function API.Math_RandomNumber(numbersize)
	return Math_RandomNumber(numbersize)
end

--- Write script loop boolean
---@param bools number
function API.Write_LoopyLoop(bools)
	return Write_LoopyLoop(bools)
end

--- Read script loop boolean
---@return number 0 or 1, false or true
function API.Read_LoopyLoop()
	return Read_LoopyLoop()
end

--- Get window in pixels
---@return WPOINT
function API.GetRsResolution2()
	return GetRsResolution2()
end

--- Get 4 box
---@return QWPOINT
function API.GetRSCornersReal()
	return GetRSCornersReal()
end

--- Distance between 2 objets
---@param object1 AllObject
---@param object2 AllObject
---@return number
function API.Math_DistanceA(object1, object2)
	return Math_DistanceA(object1, object2)
end

--- Calculate pixels
---@param entity FFPOINT
---@return FFPOINT
function API.Math_W2Sv2(entity)
	return Math_W2Sv2(entity)
end

--- Calculate pixels
---@param entity FFPOINT
---@return WPOINT
function API.Math_W2Sv2W(entity)
	return Math_W2Sv2W(entity)
end

--- Distance between 2 objets
---@param object1 WPOINT
---@param object2 WPOINT
---@return number
function API.Math_DistanceRounded(object1, object2)
	return Math_DistanceRounded(object1, object2)
end

--- Distance between 2 objets
---@param object1 WPOINT
---@param object2 WPOINT
---@return number
function API.Math_DistanceW(object1, object2)
	return Math_DistanceW(object1, object2)
end

--- Distance between 2 objets
---@param object1 FFPOINT
---@param object2 FFPOINT
---@return number
function API.Math_DistanceF(object1, object2)
	return Math_DistanceF(object1, object2)
end

--- Save FFPOINTs to disk
---@param name string
---@param array_points userdata --vector<FFPOINT>
---@return boolean
function API.SaveFFPOINTs(name, array_points)
	return SaveFFPOINTs(name, API.CreateFFPointArray(array_points))
end

---@param name string
---@return userdata --vector<FFPOINT>
function API.LoadFFPOINTs(name)
	return LoadFFPOINTs(name)
end

---@return WPOINT
function API.GetTilesUnderCurrentMouse()
	return GetTilesUnderCurrentMouse()
end

---@return FFPOINT
function API.GetTilesUnderCurrentMouseF()
	return GetTilesUnderCurrentMouseF()
end

---@param xy WPOINT
---@return WPOINT
function API.TilesToPixelsWW(xy)
	return TilesToPixelsWW(xy)
end

---@param xy FFPOINT
---@return WPOINT
function API.TilesToPixelsFW(xy)
	return TilesToPixelsFW(xy)
end

---@param xy FFPOINT
---@return FFPOINT
function API.TilesToPixelsFF(xy)
	return TilesToPixelsFF(xy)
end

---@param xy WPOINT
---@return FFPOINT
function API.TilesToPixelsWF(xy)
	return TilesToPixelsWF(xy)
end

---@param SummPointer number
---@param howmanyBytes number
---@return string
function API.ReadChars(SummPointer, howmanyBytes)
	return ReadChars(SummPointer, howmanyBytes)
end

---@param SummAddress1 ChOpt
---@param SummAddress2 ChOpt
---@return boolean
function API.Math_comparebigger(SummAddress1, SummAddress2)
	return Math_comparebigger(SummAddress1, SummAddress2)
end

---@param inputaddr number
---@param offset number
---@return userdata --vector<UINT64>
function API.GatherIU(inputaddr, offset)
	return GatherIU(inputaddr, offset)
end

---@param inputaddr number
---@return userdata --vector<UINT64>
function API.GatherIUM(inputaddr)
	return GatherIUM(inputaddr)
end

---@param mxy WPOINT
---@return boolean
function API.ScreenFilter(mxy)
	return ScreenFilter(mxy)
end

---@param SummPointer number
---@return string
function API.ReadCharsPointer(SummPointer)
	return ReadCharsPointer(SummPointer)
end

---@param limitx number
---@param limity number
---@return boolean
function API.CheckCoordLimit(limitx, limity)
	return CheckCoordLimit(limitx, limity)
end

---@param limitx number --float
---@param limity number --float
---@return boolean
function API.CheckCoordLimit2(limitx, limity)
	return CheckCoordLimit2(limitx, limity)
end

---@param limitx number --float
---@param limity number --float
---@return boolean
function API.CheckVisibleLimit(limitx, limity)
	return CheckVisibleLimit(limitx, limity)
end

---@param todo string
---@param unknown string
---@return userdata --vector<uint8_t>
function API.string_to_pattern(todo, unknown)
	return string_to_pattern(todo, unknown)
end

---@return boolean
function API.PlayerLoggedIn()
	return PlayerLoggedIn()
end

---@param worldtohop string
---@return boolean
function API.World_Hopper(worldtohop)
	return World_Hopper(worldtohop)
end

---@param name string
---@param password string
---@param world string
---@return boolean
function API.LoginFunction(name, password, world)
	return LoginFunction(name, password, world)
end

---@param text string
---@return boolean
function API.Select_Option(text)
	return Select_Option(text)
end

---@param text string
---@return InterfaceComp5
function API.GetIbystring(text)
	return GetIbystring(text)
end

---@param text string
---@return userdata --vector<InterfaceComp5>
function API.GetIbystringstatic(text)
	return GetIbystringstatic(text)
end

---@param text string
---@return number --char
function API.Dialog_Option(text)
	return Dialog_Option(text)
end

---@return string
function API.Dialog_Read_NPC()
	return Dialog_Read_NPC()
end

---@return string
function API.Dialog_Read_Player()
	return Dialog_Read_Player()
end

---@param search_word string
---@return boolean
function API.Dialog_compare_sayd(search_word)
	return Dialog_compare_sayd(search_word)
end

---@return boolean
function API.Check_Dialog_Open()
	return Check_Dialog_Open()
end

---@return boolean
function API.Check_continue_Open()
	return Check_continue_Open()
end

---@return boolean
function API.Check_continue_Open_NPC()
	return Check_continue_Open_NPC()
end

---@return boolean
function API.Check_continue_Open_Player()
	return Check_continue_Open_Player()
end

---@return number
function API.GetFloorLv_2()
	return GetFloorLv_2()
end

---@param item userdata --vector<int>
---@return boolean
function API.FindGItemBool_(item)
	return FindGItemBool_(item)
end

---@param Except_item userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param items_to_eat userdata --vector<int>
---@return boolean
function API.FindGItem_AllBut2(Except_item, maxdistance, accuracy, tilespot, maxdistance2, items_to_eat)
	return FindGItem_AllBut2(Except_item, maxdistance, accuracy, tilespot, maxdistance2, items_to_eat)
end

---@param base number
---@return string
function API.InterfaceGetALLText(base)
	return InterfaceGetALLText(base)
end

---@param npc userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param lifepoint number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCss(npc, maxdistance, accuracy, lifepoint, tilespot, maxdistance2, action, sidetext)
	return FindNPCss(npc, maxdistance, accuracy, lifepoint, tilespot, maxdistance2, action, sidetext)
end

---@param npc userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext userdata --vector<string>
---@return boolean
function API.FindNPCssMulti(npc, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssMulti(npc, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@param NPC_name string
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCssSTRRem(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssSTRRem(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@param NPC_name string
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCssSTR(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssSTR(NPC_name, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@param NPC_names userdata --vector<string>
---@param maxdistance number
---@param accuracy number
---@param lifepoints number
---@param tilespot WPOINT
---@param maxdistance2 number
---@param action number
---@param sidetext string
---@return boolean
function API.FindNPCssSTRs(NPC_names, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
	return FindNPCssSTRs(NPC_names, maxdistance, accuracy, lifepoints, tilespot, maxdistance2, action, sidetext)
end

---@return number
function API.ReadPlayerAnim()
	return ReadPlayerAnim()
end

---@param ID number
---@return string
function API.GetItemText(ID)
	return GetItemText(ID)
end

---@return boolean
function API.IsSelectingItem()
	return IsSelectingItem()
end

---@return Choption
function API.ReadTargetInfo()
	return ReadTargetInfo()
end

---@return AllObject
function API.ReadLpInteracting()
	return ReadLpInteracting()
end

---@param animated_also boolean
---@param hp number
---@return userdata --vector<AllObject>
function API.OthersInteractingWithLpNPC(animated_also, hp)
	return OthersInteractingWithLpNPC(animated_also, hp)
end

---@param look_stance boolean
---@return userdata --vector<AllObject>
function API.OthersInteractingWithLpPl(look_stance)
	return OthersInteractingWithLpPl(look_stance)
end

---@param spot number
---@return string
function API.ReadText(spot)
	return ReadText(spot)
end

---@return FFPOINT
function API.PlayerCoordfloat()
	return PlayerCoordfloat()
end

---@return FFPOINT
function API.PlayerCoordfloatRaw()
	return PlayerCoordfloatRaw()
end

---@return void
function API.RandomSleep()
	return RandomSleep()
end

---@param wait number
---@param sleep number
---@param sleep2 number
---@return void
function API.RandomSleep2(wait, sleep, sleep2)
	return RandomSleep2(wait, sleep, sleep2)
end

---@param asciii string
---@return void
function API.TypeOnkeyboard(asciii)
	return TypeOnkeyboard(asciii)
end

---@param asciii string
---@return void
function API.TypeOnkeyboard2(asciii)
	return TypeOnkeyboard2(asciii)
end

---@param Loops number
---@return boolean
function API.CheckAnim(Loops)
	return CheckAnim(Loops)
end

---@return boolean
function API.InvFull_()
	return InvFull_()
end

---@return number
function API.Invfreecount_()
	return Invfreecount_()
end

---@return boolean
function API.ReadPlayerMovin()
	return ReadPlayerMovin()
end

---@return boolean
function API.ReadPlayerMovin2()
	return ReadPlayerMovin2()
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@param highlight userdata --vector<int>
---@return boolean
function API.FindHl(obj, maxdistance, accuracy, usemap, action, sidetext, highlight)
	return FindHl(obj, maxdistance, accuracy, usemap, action, sidetext, highlight)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObjCheck(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObjCheck(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param object_type1 number
---@return userdata --vector<AllObject>
function API.GetAllObjArrayInteract(obj, maxdistance, object_type1)
	return GetAllObjArrayInteract(obj, maxdistance, object_type1)
end

---@param obj userdata --vector<string>
---@param maxdistance number
---@param object_type1 number
---@return userdata --vector<AllObject>
function API.GetAllObjArrayInteract_str(obj, maxdistance, object_type1)
	return GetAllObjArrayInteract_str(obj, maxdistance, object_type1)
end

---@param tile WPOINT
---@param item number
---@return boolean
function API.CheckTileforItems(tile, item)
	return CheckTileforItems(tile, item)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param objtile WPOINT
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObjTile(obj, maxdistance, accuracy, objtile, usemap, action, sidetext)
	return FindObjTile(obj, maxdistance, accuracy, objtile, usemap, action, sidetext)
end

---@return userdata --POINT
function API.MousePos_()
	return MousePos_()
end

---@param cursor userdata --POINT
---@param type boolean
---@return void
function API.MouseCLRS(cursor, type)
	return MouseCLRS(cursor, type)
end

---@param cursor userdata --POINT
---@param cursor2 userdata --POINT
---@return void
function API.MouseDrag_RS(cursor, cursor2)
	return MouseDrag_RS(cursor, cursor2)
end

---@param cursor userdata --POINT
---@return void
function API.MouseMove_(cursor)
	return MouseMove_(cursor)
end

---@param x number
---@param y number
---@param rx number
---@param ry number
---@return void
function API.MouseMove_2(x, y, rx, ry)
	return MouseMove_2(x, y, rx, ry)
end

---@param dx number --double
---@param dy number --double
---@return number
function API.Hypot(dx, dy)
	return Hypot(dx, dy)
end

---@param x number
---@param y number
---@param rx number
---@param ry number
---@return void
function API.MoveMouse2(x, y, rx, ry)
	return MoveMouse2(x, y, rx, ry)
end

---@param x number
---@param y number
---@param rx number
---@param ry number
---@param updown boolean
---@return void
function API.MoveMouse3(x, y, rx, ry, updown)
	return MoveMouse3(x, y, rx, ry, updown)
end

---@param sleep number
---@param rand number
---@return void
function API.MouseLeftClick(sleep, rand)
	return MouseLeftClick(sleep, rand)
end

---@param sleep number
---@param rand number
---@return void
function API.MouseRightClick(sleep, rand)
	return MouseRightClick(sleep, rand)
end

---@param mK number --char
---@return void
function API.KeyPress_(mK)
	return KeyPress_(mK)
end

---@param mK number
---@return void
function API.KeyPress_2(mK)
	return KeyPress_2(mK)
end

---@param sleep number
---@param random number
---@return void
function API.Send_MouseLeftClick(sleep, random)
	return Send_MouseLeftClick(sleep, random)
end

---@param sleep number
---@param random number
---@return void
function API.Send_MouseRightClick(sleep, random)
	return Send_MouseRightClick(sleep, random)
end

---@param x number
---@param y number
---@param sleep number
---@param random number
---@return void
function API.Post_MouseLeftClick(x, y, sleep, random)
	return Post_MouseLeftClick(x, y, sleep, random)
end

---@param x number
---@param y number
---@param sleep number
---@param random number
---@return void
function API.Post_MouseRightClick(x, y, sleep, random)
	return Post_MouseRightClick(x, y, sleep, random)
end

---@param item string
---@return number
function API.InvItemcount_String(item)
	return InvItemcount_String(item)
end

---@param item string
---@return number --item stack size
function API.InvItemcountStack_String(item)
	return InvItemcountStack_String(item)
end

---@param item number
---@return number
function API.InvStackSize(item)
	return InvStackSize(item)
end

---@return number
function API.SystemTime()
	return SystemTime()
end

---@param Data void*
---@param Size number
---@param InitialValue number
---@return number
function API.CRC32CheckSum(Data, Size, InitialValue)
	return CRC32CheckSum(Data, Size, InitialValue)
end

---@return string
function API.FindSideText()
	return FindSideText()
end

---@param ObjectName userdata -vector<string>
---@param maxdistance number
---@return userdata --vector<AllObject>
function API.FindObject_string(ObjectName, maxdistance)
	return FindObject_string(ObjectName, maxdistance)
end

---@param piority boolean
---@param type number
---@return userdata --vector<AllObject>
function API.ReadAllObjectsArray(piority, type)
	return ReadAllObjectsArray(piority, type)
end

---@return userdata --vector<IInfo>
function API.ReadInvArrays33()
	return ReadInvArrays33()
end

---@return boolean
function API.OpenEquipInterface2()
	return OpenEquipInterface2()
end

---@return boolean
function API.OpenInventoryInterface2()
	return OpenInventoryInterface2()
end

---@return void
function API.Get_shop()
	return Get_shop()
end

---@return number
function API.GetPray_()
	return GetPray_()
end

---@return number
function API.GetPrayMax_()
	return GetPrayMax_()
end

---@param value number
---@return userdata --bitset<32>
function API.VB_ToBitSet(value)
	return VB_ToBitSet(value)
end

---@param set userdata --bitset<32>
---@param at number
---@param state boolean
---@return userdata --bitset<32>
function API.VB_ModifyBitSet(set, at, state)
	return VB_ModifyBitSet(set, at, state)
end

---@param to_print userdata --bitset<32>
---@return void
function API.VB_PrintBitsSet(to_print)
	return VB_PrintBitsSet(to_print)
end

---@param str string
---@return userdata --bitset<32>
function API.VB_Bitstr_convert(str)
	return VB_Bitstr_convert(str)
end

---@param to_print number
---@return void
function API.VB_PrintBits_all(to_print)
	return VB_PrintBits_all(to_print)
end

---@param ID number
---@return void
function API.VB_PrintBits(ID)
	return VB_PrintBits(ID)
end

---@param ID number
---@return userdata --bitset<32>
function API.VB_GetBits(ID)
	return VB_GetBits(ID)
end

---@param ID number
---@param at number
---@return number
function API.VB_GetBit(ID, at)
	return VB_GetBit(ID, at)
end

---@param bitaddr VB
---@return VB
function API.VB_ReadBits(bitaddr)
	return VB_ReadBits(bitaddr)
end

---@return boolean
function API.GetInCombBit()
	return GetInCombBit()
end

---@return boolean
function API.IsTargeting()
	return IsTargeting()
end

---@return number
function API.GetAddreline_()
	return GetAddreline_()
end
--- smithing = 85, bank open = 24
--- status of blocking intefaces
---@return number
function API.GetG2874Status()
	return GetG2874Status()
end

---@return number
function API.GetG3095Status()
	return GetG3095Status()
end

---@return number
function API.GetHP_()
	return GetHP_()
end

---@return number
function API.GetHPMax_()
	return GetHPMax_()
end

---@return number
function API.GetHPrecent()
	return GetHPrecent()
end

---@return number
function API.GetPrayPrecent()
	return GetPrayPrecent()
end

---@return number
function API.GetSummoningPoints_()
	return GetSummoningPoints_()
end

---@return number
function API.GetSummoningMax_()
	return GetSummoningMax_()
end

---@return void
function API.PIdle1()
	return PIdle1()
end

---@return void
function API.PIdle22()
	return PIdle22()
end

---@return void
function API.PIdle2()
	return PIdle2()
end

---@param x number
---@param xrange number
---@param y number
---@param yrange number
---@param zfloor number
---@return boolean
function API.PInArea(x, xrange, y, yrange, zfloor)
	return PInArea(x, xrange, y, yrange, zfloor)
end

---@param norm_tile WPOINT
---@param range number
---@return boolean
function API.PInAreaW(norm_tile, range)
	return PInAreaW(norm_tile, range)
end

---@param codes number --char
---@param sleep number
---@param rand number
---@return void
function API.KeyboardPress(codes, sleep, rand)
	return KeyboardPress(codes, sleep, rand)
end

---@param codes number
---@param sleep number
---@param rand number
---@return void
function API.KeyboardPress2(codes, sleep, rand)
	return KeyboardPress2(codes, sleep, rand)
end

---@param color number
---@param tex string
---@return void
function API.ccout(color, tex)
	return ccout(color, tex)
end

---@param action number
---@return boolean
function API.InvRandom_(action)
	return InvRandom_(action)
end

---@return boolean
function API.InvCheck1_()
	return InvCheck1_()
end

---@param sleeptime number
---@param location string
---@return void
function API.Play_sound(sleeptime, location)
	return Play_sound(sleeptime, location)
end

---@param ItemCoord FFPOINT
---@param map_limit boolean
---@return FFPOINT
function API.ToMapFFPOINT(ItemCoord, map_limit)
	return ToMapFFPOINT(ItemCoord, map_limit)
end

---@param ItemCoord2 FFPOINT
---@return boolean
function API.ClickMapTile_(ItemCoord2)
	return ClickMapTile_(ItemCoord2)
end

---@param ItemCoord2 userdata --POINT
---@return boolean
function API.ClickMapTile_2(ItemCoord2)
	return ClickMapTile_2(ItemCoord2)
end

---@param id number
---@param try_filter number
---@return VB
function API.VB_FindPSett(id, try_filter)
	return VB_FindPSett(id, try_filter)
end

---@param id number
---@param try_filter number
---@return userdata --vector<bool>
function API.VB_FindPSett2(id, try_filter)
	return VB_FindPSett2(id, try_filter)
end

---@param var number
---@return string
function API.VB_IntToBit(var)
	return VB_IntToBit(var)
end

---@param id number
---@param spot_index number
---@param try_filter number
---@return number
function API.VB_FindPSett3int(id, spot_index, try_filter)
	return VB_FindPSett3int(id, spot_index, try_filter)
end

---@param id number
---@param spot_index1 number
---@param spot_index2 number
---@param try_filter number
---@return WPOINT
function API.VB_FindPSett3wpoint(id, spot_index1, spot_index2, try_filter)
	return VB_FindPSett3wpoint(id, spot_index1, spot_index2, try_filter)
end

---@param start number
---@param end number
---@param checked_var number
---@return boolean
function API.Math_VarBetween(start, endd, checked_var)
	return Math_VarBetween(start, endd, checked_var)
end

---@return boolean
function API.LootWindowOpen_2()
	return LootWindowOpen_2()
end

---@return userdata --vector<IInfo>
function API.LootWindow_GetData()
	return LootWindow_GetData()
end

---@param Except_item userdata --vector<int>
---@param Inventory_stacks boolean
---@return number
function API.LootWindow_space_needed(Except_item, Inventory_stacks)
	return LootWindow_space_needed(Except_item, Inventory_stacks)
end

---@param Except_itemv userdata --vector<int>
---@return boolean
function API.LootWindow_Loot(Except_itemv)
	return LootWindow_Loot(Except_itemv)
end

---@param choice string
---@return boolean
function API.SelectCOption_(choice)
	return SelectCOption_(choice)
end

---@param choice string
---@param user string
---@return WPOINT
function API.SelectCOption2(choice, user)
	return SelectCOption2(choice, user)
end

---@param choice string
---@param user string
---@return boolean
function API.SelectCOption2_(choice, user)
	return SelectCOption2_(choice, user)
end

---@param choice string
---@return WPOINT
function API.SelectCOption(choice)
	return SelectCOption(choice)
end

---@param choice string
---@param move boolean
---@return boolean
function API.SelectCOption_Click(choice, move)
	return SelectCOption_Click(choice, move)
end

---@param to string
---@param remove string
---@return string
function API.Filter(to, remove)
	return Filter(to, remove)
end

---@param sentence string
---@param keyword string
---@return string
function API.String_Filter(sentence, keyword)
	return String_Filter(sentence, keyword)
end

---@param to string
---@return string
function API.String_Filter2(to)
	return String_Filter2(to)
end

---@param to string
---@return string
function API.Filter22(to)
	return Filter22(to)
end

---@param to string
---@return string
function API.String_Filter3(to)
	return String_Filter3(to)
end

---@return boolean
function API.FindChooseOptionOpen()
	return FindChooseOptionOpen()
end

---@return boolean
function API.FindChooseOptionOpenClose()
	return FindChooseOptionOpenClose()
end

---@param SummAddress1 AllObject
---@param SummAddress2 AllObject
---@return boolean
function API.Math_Compare_AllObject_dist_smallest(SummAddress1, SummAddress2)
	return Math_Compare_AllObject_dist_smallest(SummAddress1, SummAddress2)
end

---@param SummAddress1 InterfaceComp5
---@param SummAddress2 InterfaceComp5
---@return boolean
function API.Math_Compare_InterfaceComp5_smallest(SummAddress1, SummAddress2)
	return Math_Compare_InterfaceComp5_smallest(SummAddress1, SummAddress2)
end

---@param value number
---@param arrayof userdata --vector<Bbar>
---@return boolean
function API.Math_Bbar_ValueEquals(value, arrayof)
	return Math_Bbar_ValueEquals(value, arrayof)
end

---@param arrayof1 userdata --vector<int>
---@param arrayof2 userdata --vector<Bbar>
---@return userdata --vector<bool>
function API.Math_Bbar_ValueEqualsArr(arrayof1, arrayof2)
	return Math_Bbar_ValueEqualsArr(arrayof1, arrayof2)
end

---@param value number
---@param arrayof userdata --vector<AllObject>
---@return boolean
function API.Math_AO_ValueEquals(value, arrayof)
	return Math_AO_ValueEquals(value, arrayof)
end

---@param name string
---@param arrayof userdata --vector<IInfo>
---@return boolean
function API.Math_IInfo_ValueEqualsStr(name, arrayof)
	return Math_IInfo_ValueEqualsStr(name, arrayof)
end

---@param name userdata --vector<string>
---@param arrayof userdata --vector<IInfo>
---@return boolean
function API.Math_IInfo_ValueEqualsStrArr(name, arrayof)
	return Math_IInfo_ValueEqualsStrArr(name, arrayof)
end

---@param value number
---@param arrayof userdata --vector<IInfo>
---@return boolean
function API.Math_IInfo_ValueEqualsStack(value, arrayof)
	return Math_IInfo_ValueEqualsStack(value, arrayof)
end

---@param arrayof1 userdata --vector<int>
---@param arrayof2 userdata --vector<AllObject>
---@return boolean
function API.Math_AO_ValueEqualsArr(arrayof1, arrayof2)
	return Math_AO_ValueEqualsArr(arrayof1, arrayof2)
end

---@param arrayof1 userdata --vector<int>
---@param arrayof2 userdata --vector<AllObject>
---@return userdata --vector<bool>
function API.Math_AO_ValueEqualsArr2(arrayof1, arrayof2)
	return Math_AO_ValueEqualsArr2(arrayof1, arrayof2)
end

---@param val number
---@return number
function API.Math_Reverse_int(val)
	return Math_Reverse_int(val)
end

---@param val number --unsigned number --char*
---@param start number
---@return number --unsigned short
function API.Math_AppendBytes16(val, start)
	return Math_AppendBytes16(val, start)
end

---@param val number --unsigned number --char*
---@param start number
---@return number --unsigned short
function API.Math_AppendBytes16rev(val, start)
	return Math_AppendBytes16rev(val, start)
end

---@param val number --unsigned number --char*
---@param start number
---@return number
function API.Math_AppendBytes24(val, start)
	return Math_AppendBytes24(val, start)
end

---@param val number --unsigned number --char*
---@param start number
---@return number
function API.Math_AppendBytes24rev(val, start)
	return Math_AppendBytes24rev(val, start)
end

---@param val number --unsigned number --char*
---@param start number
---@return number
function API.Math_AppendBytes32(val, start)
	return Math_AppendBytes32(val, start)
end

---@param val number --unsigned number --char*
---@param start number
---@return number
function API.Math_AppendBytes64(val, start)
	return Math_AppendBytes64(val, start)
end

---@param val number --unsigned number --char*
---@param start number
---@return number
function API.Math_AppendBytes64rev(val, start)
	return Math_AppendBytes64rev(val, start)
end

---@param val number --unsigned short
---@return userdata --PatternSearch
function API.Math_Chopbytes16(val)
	return Math_Chopbytes16(val)
end

---@param val number
---@return userdata --PatternSearch
function API.Math_Chopbytes32(val)
	return Math_Chopbytes32(val)
end

---@param val number
---@return userdata --PatternSearch
function API.Math_Chopbytes64(val)
	return Math_Chopbytes64(val)
end

---@param inputaddresses userdata --vector<int>
---@param target number
---@return boolean
function API.Math_Compare_int(inputaddresses, target)
	return Math_Compare_int(inputaddresses, target)
end

---@param SummAddress1 AllObject
---@param SummAddress2 AllObject
---@return boolean
function API.Math_Compare_AllObject_dist_biggest(SummAddress1, SummAddress2)
	return Math_Compare_AllObject_dist_biggest(SummAddress1, SummAddress2)
end

---@return boolean
function API.ReadNPCInFocus_0()
	return ReadNPCInFocus_0()
end

---@param index number
---@param debug boolean
---@return boolean
function API.ReadNPCInFocus(index, debug)
	return ReadNPCInFocus(index, debug)
end

---@param index number
---@param NPC_id number
---@param debug boolean
---@return boolean
function API.GetCheckNPCInFocus(index, NPC_id, debug)
	return GetCheckNPCInFocus(index, NPC_id, debug)
end

---@param entity FFPOINT
---@return FFPOINT
function API.W2ScreenNat_F(entity)
	return W2ScreenNat_F(entity)
end

---@param player string
---@return boolean
function API.PlayerInterActing_(player)
	return PlayerInterActing_(player)
end

---@param player string
---@return boolean
function API.IsInCombat_(player)
	return IsInCombat_(player)
end

---@return boolean
function API.LocalPlayer_IsInCombat_()
	return LocalPlayer_IsInCombat_()
end

---@return string
function API.Local_PlayerInterActingWith_()
	return Local_PlayerInterActingWith_()
end

---@param player string
---@return number
function API.GetPlayerAnimation_(player)
	return GetPlayerAnimation_(player)
end

---@param player string
---@param loops number
---@return boolean
function API.IsPlayerAnimating_(player, loops)
	return IsPlayerAnimating_(player, loops)
end

---@param player string
---@return boolean
function API.IsPlayerMoving_(player)
	return IsPlayerMoving_(player)
end

---@param player1 string
---@param entity string
---@return boolean
function API.PlayerInterActingWithCompare_(player1, entity)
	return PlayerInterActingWithCompare_(player1, entity)
end

---@return number
function API.GetGameState()
	return GetGameState()
end

---@return number
function API.GetAngle()
	return GetAngle()
end

---@return number
function API.GetTilt()
	return GetTilt()
end

---@return boolean
function API.GetQuickPray()
	return GetQuickPray()
end

---@return number
function API.GetTargetHealth()
	return GetTargetHealth()
end

---@return boolean
function API.GetRun()
	return GetRun()
end

---@return boolean
function API.GetRun2()
	return GetRun2()
end

---@return WPOINT
function API.PlayerCoord()
	return PlayerCoord()
end

---@param x1 number
---@param y1 number
---@param x2 number
---@param y2 number
---@return userdata --vector<WPOINT>
function API.Math_Bresenham_line(x1, y1, x2, y2)
	return Math_Bresenham_line(x1, y1, x2, y2)
end

---@param xy1 WPOINT
---@param xy2 WPOINT
---@return userdata --vector<WPOINT>
function API.Math_Bresenham_lineW(xy1, xy2)
	return Math_Bresenham_lineW(xy1, xy2)
end

---@param xy1 FFPOINT
---@param xy2 FFPOINT
---@return userdata --vector<WPOINT>
function API.Math_Bresenham_lineF(xy1, xy2)
	return Math_Bresenham_lineF(xy1, xy2)
end

---@param tilexy FFPOINT
---@return WPOINT
function API.Bresenham_step(tilexy)
	return Bresenham_step(tilexy)
end

---@param objIds userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@param hlIds userdata --vector<int>
---@param localp_dist number --float
---@return boolean
function API.FindHLvsLocalPlayer(objIds, maxdistance, accuracy, usemap, action, sidetext, hlIds, localp_dist)
	return FindHLvsLocalPlayer(objIds, maxdistance, accuracy, usemap, action, sidetext, hlIds, localp_dist)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param sens number --float
---@return boolean
function API.FindObjRot(obj, maxdistance, sens)
	return FindObjRot(obj, maxdistance, sens)
end

---@param ItemXY FFPOINT
---@param currxy FFPOINT
---@param sens number --float
---@return boolean
function API.RotateCamera(ItemXY, currxy, sens)
	return RotateCamera(ItemXY, currxy, sens)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindHObj(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindHObj(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param items userdata --vector<int>
---@param randomelement number
---@param action number
---@return boolean
function API.ClickInv_Multi(items, randomelement, action)
	return ClickInv_Multi(items, randomelement, action)
end

---@param item number
---@param action number
---@param randx number
---@param randy number
---@param offsetx number
---@param offsety number
---@param sidetext string
---@return boolean
function API.ClickInvOffset_(item, action, randx, randy, offsetx, offsety, sidetext)
	return ClickInvOffset_(item, action, randx, randy, offsetx, offsety, sidetext)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@return FFPOINT
function API.FindObjTileName(obj, maxdistance)
	return FindObjTileName(obj, maxdistance)
end

---@param Line_index number
---@param size number
---@return userdata --vector<string>
function API.GetChatMessage(Line_index, size)
	return GetChatMessage(Line_index, size)
end

---@param tilexy FFPOINT
---@param distance number
---@return void
function API.Map_Walker1(tilexy, distance)
	return Map_Walker1(tilexy, distance)
end

---@param tilexy2 WPOINT
---@param distance number
---@return void
function API.Map_Walker1NT(tilexy2, distance)
	return Map_Walker1NT(tilexy2, distance)
end

---@param tilexy FFPOINT
---@param distance number
---@return void
function API.Map_Walker2(tilexy, distance)
	return Map_Walker2(tilexy, distance)
end

---@param setting_id number
---@param setting_value number
---@return void
function API.Call_settings_function(setting_id, setting_value)
	return Call_settings_function(setting_id, setting_value)
end

---@param ascii_num string
---@return number
function API.AsciiToNumbers32(ascii_num)
	return AsciiToNumbers32(ascii_num)
end

---@param ascii_num string
---@return number
function API.AsciiToNumbers64(ascii_num)
	return AsciiToNumbers64(ascii_num)
end

---@return boolean
function API.BankAllItems()
	return BankAllItems()
end

---@param Except_item userdata --vector<int>
---@return boolean
function API.BankAllItem_InvExceptintM(Except_item)
	return BankAllItem_InvExceptintM(Except_item)
end

---@param Except_item userdata --vector<string>
---@return boolean
function API.BankAllItem_InvExceptstrM(Except_item)
	return BankAllItem_InvExceptstrM(Except_item)
end

---@param id number
---@param mouse number
---@return boolean
function API.BankClickItem(id, mouse)
	return BankClickItem(id, mouse)
end

---@param id number
---@param mouse number
---@return boolean
function API.BankClickItem_Inv(id, mouse)
	return BankClickItem_Inv(id, mouse)
end

---@param id number
---@param choose_text string
---@return boolean
function API.BankClickItem_InvChoose(id, choose_text)
	return BankClickItem_InvChoose(id, choose_text)
end

---@return void
function API.BankClose()
	return BankClose()
end

---@param item number
---@return WPOINT
function API.BankGetItem(item)
	return BankGetItem(item)
end

---@param item number
---@return number
function API.BankGetItemStack_Inv(item)
	return BankGetItemStack_Inv(item)
end

---@param item number
---@return WPOINT
function API.BankGetItem_Inv(item)
	return BankGetItem_Inv(item)
end

---@return WPOINT
function API.BankGetLimits()
	return BankGetLimits()
end

---@return boolean
function API.BankGetVisItemsPrint()
	return BankGetVisItemsPrint()
end

---@return boolean
function API.BankOpen2()
	return BankOpen2()
end

---@param bar Bbar
---@return number
function API.Bbar_ConvToSeconds(bar)
	return Bbar_ConvToSeconds(bar)
end

---@param print_all_out boolean
---@return userdata --vector<Bbar>
function API.Buffbar_GetAllIDs(print_all_out)
	return Buffbar_GetAllIDs(print_all_out)
end

--[[
Some ids:
perfect juju pot:33234
hittpoints over:1236
yak track:25830
citadel boost:12327
wise perk:26341
grace of elves,porters:51490
overloaded:26093
super/anti-fire,wyrmfire:14692
anti-poison:14693
poison+++ 14694
prayer renewal:14695
elder overload:49039
cinder core:48544
pulse core: 34918
scripture of wen 52117
aftershock: 26466
range pray:26044
magic pray:26041
mele pray: 26040
soulsplit: 26033
turmoil:   26019
anguish:   26020
torment:   26021
malevolenc:29262
desolation:29263
affliction:29264
glacial emprace stack:14766
The Hole buff:51729
Lemon sour:35054
masterstroke:49087
--]]
---@param id number
---@param debug boolean
---@return Bbar
function API.Buffbar_GetIDstatus(id, debug)
	return Buffbar_GetIDstatus(id, debug)
end

---@param text string
---@param limit number
---@return ChatTexts
function API.ChatFind(text, limit)
	return ChatFind(text, limit)
end

---@return userdata --vector<ChatTexts>
function API.ChatGetMessages()
	return ChatGetMessages()
end

---@return number
function API.ChatPortableTime()
	return ChatPortableTime()
end

---@return boolean
function API.CheckDoItemOpen()
	return CheckDoItemOpen()
end

---@return boolean
function API.CheckDoToolOpen()
	return CheckDoToolOpen()
end

---@return boolean
function API.CheckFamiliar()
	return CheckFamiliar()
end

---@param print_all_out boolean
---@return userdata --vector<Bbar>
function API.DeBuffbar_GetAllIDs(print_all_out)
	return DeBuffbar_GetAllIDs(print_all_out)
end

---@param id number
---@param debug boolean
---@return Bbar
function API.DeBuffbar_GetIDstatus(id, debug)
	return DeBuffbar_GetIDstatus(id, debug)
end

---@return boolean
function API.DEPOInterfaceCheckvarbit()
	return DEPOInterfaceCheckvarbit()
end

---@return boolean
function API.EquipInterfaceCheckvarbit()
	return EquipInterfaceCheckvarbit()
end

---@param name string
---@param model_ids userdata --vector<UINT64>
---@return boolean
function API.FindModelCompare(name, model_ids)
	return FindModelCompare(name, model_ids)
end

---@param in userdata --vector<NAMEdata>
---@param compare_against string
---@return boolean
function API.Find_NAMEdata_match(inn, compare_against)
	return Find_NAMEdata_match(inn, compare_against)
end

---@param bar_nr number
---@return userdata --vector<Abilitybar>
function API.GetABarInfo(bar_nr)
	return GetABarInfo(bar_nr)
end

---@return void
function API.GetABarInfo_DEBUG()
	return GetABarInfo_DEBUG()
end

---@param bar_nr number
---@param ability_id number
---@return userdata -- Abilitybar
function API.GetAB_id(bar_nr, ability_id)
	return GetAB_id(bar_nr, ability_id)
end

---@param bar_nr number
---@param ability_name string
---@return userdata -- Abilitybar
function API.GetAB_name(bar_nr, ability_name)
	return GetAB_name(bar_nr, ability_name)
end

---@param obj number
---@param distance number
---@param type number
---@param adjust_tile WPOINT
---@return AllObject
function API.GetAllObj_dist(obj, distance, type, adjust_tile)
	return GetAllObj_dist(obj, distance, type, adjust_tile)
end

---@param slot number
---@return IInfo
function API.GetEquipSlot(slot)
	return GetEquipSlot(slot)
end

---@return string
function API.GetFamiliarName()
	return GetFamiliarName()
end

---@param entity_base number
---@param debug boolean
---@return userdata --vector<UINT64>
function API.GetModel_ids(entity_base, debug)
	return GetModel_ids(entity_base, debug)
end

--[[
ATTACK
STRENGTH
RANGED
MAGIC
DEFENCE
CONSTITUTION
PRAYER
SUMMONING
DUNGEONEERING
AGILITY
THIEVING
SLAYER
HUNTER
SMITHING
CRAFTING
FLETCHING
HERBLORE
RUNECRAFTING
COOKING
CONSTRUCTION
FIREMAKING
WOODCUTTING
FARMING
FISHING
MINING
DIVINATION
INVENTION not known
ARCHAEOLOGY
--]]
---@param name string
---@return number
function API.GetSkillXP(name)
	return GetSkillXP(name)
end

--- check if inventory open 
---@return boolean
function API.InventoryInterfaceCheckvarbit()
	return InventoryInterfaceCheckvarbit()
end

---@return boolean
function API.LODEInterfaceCheckvarbit()
	return LODEInterfaceCheckvarbit()
end

---@param entity_base number
---@param model_ids userdata --vector<UINT64>
---@return boolean
function API.ModelCompare(entity_base, model_ids)
	return ModelCompare(entity_base, model_ids)
end

---@param item number
---@return boolean
function API.Notestuff(item)
	return Notestuff(item)
end

---@param item number
---@return boolean
function API.NotestuffInvfull(item)
	return NotestuffInvfull(item)
end

---@param chest number
---@param pushnumber number --char
---@param content_ids userdata --vector<int>
---@param size number
---@return userdata --vector<int>
function API.OpenBankChest_am(chest, pushnumber, content_ids, size)
	return OpenBankChest_am(chest, pushnumber, content_ids, size)
end

---@return void
function API.PrintEquipSlots()
	return PrintEquipSlots()
end

---@param bar_nr number
---@return void
function API.print_GetABarInfo(bar_nr)
	return print_GetABarInfo(bar_nr)
end

---@return void
function API.RandomEvents()
	return RandomEvents()
end

---@return userdata --vector <IInfo>
function API.ReadEquipment()
	return ReadEquipment()
end

---@param boxtext string
---@param secondedit boolean
---@return userdata --vector <string>
function API.ScriptAskBox(boxtext, secondedit)
	return ScriptAskBox(boxtext, secondedit)
end

---@param boxtext string
---@param textchoices userdata --vector<string>
---@param button_name1 string
---@param button_name2 string
---@param Make string
---@param Edit string
---@return returntext
function API.ScriptDialogWindow2(boxtext, textchoices, button_name1, button_name2, Make, Edit)
	return ScriptDialogWindow2(boxtext, textchoices, button_name1, button_name2, Make, Edit)
end

---@param boxtext string
---@param password boolean
---@param arrtype number
---@param filename string
---@return userdata --vector <NAMEdata>
function API.ScriptDialogWindow_input(boxtext, password, arrtype, filename)
	return ScriptDialogWindow_input(boxtext, password, arrtype, filename)
end

---@param txt_to_find string
---@return boolean
function API.SelectToolOpen(txt_to_find)
	return SelectToolOpen(txt_to_find)
end

---@param input userdata --vector<string>
---@return userdata --vector<int>
function API.StringsToInts(input)
	return StringsToInts(input)
end

---@return boolean
function API.WaitUntilMovingEnds()
	return WaitUntilMovingEnds()
end

---@param wait_time number
---@param random_time number
---@param reset boolean
---@return boolean
function API.Wait_Timer(wait_time, random_time, reset)
	return Wait_Timer(wait_time, random_time, reset)
end

---@param walktile WPOINT
---@param stopdistance number
---@return boolean
function API.WalkUntilClose(walktile, stopdistance)
	return WalkUntilClose(walktile, stopdistance)
end

---@param xp number
---@param elite boolean ---optional
---@return number
function API.XPLevelTable(xp)
	return XPLevelTable(xp)
end

---@return boolean
function API.DoContinue_Dialog()
	return DoContinue_Dialog()
end

---@param text string
---@return boolean
function API.DoDialog_Option(text)
	return DoDialog_Option(text)
end

--- capitalition is critical, m_action and offset is from doaction debug
---@param name string
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Ability(name, m_action, offset)
	return DoAction_Ability(name, m_action, offset)
end

--- capitalition is critical, m_action and offset is from doaction debug
---@param name string
---@param m_action number
---@param offset number
---@param checkenabled boolean
---@param checkcooldown boolean
---@return boolean
function API.DoAction_Ability_check(name, m_action, offset, checkenabled, checkcooldown)
	return DoAction_Ability_check(name, m_action, offset, checkenabled, checkcooldown)
end

---@param Ab userdata -- Abilitybar
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Ability_Direct(Ab, m_action, offset)
	return DoAction_Ability_Direct(Ab, m_action, offset)
end

---@param id number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Bank(id, m_action, offset)
	return DoAction_Bank(id, m_action, offset)
end

---@param id number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Bank_Inv(id, m_action, offset)
	return DoAction_Bank_Inv(id, m_action, offset)
end

---@param normal_tile WPOINT
---@return boolean
function API.DoAction_BD_Tile(normal_tile)
	return DoAction_BD_Tile(normal_tile)
end

---@return boolean
function API.DoAction_Button_AR()
	return DoAction_Button_AR()
end

---@param Possible_order number
---@return boolean
function API.DoAction_Button_FO(Possible_order)
	return DoAction_Button_FO(Possible_order)
end

---@return boolean
function API.DoAction_Button_GH()
	return DoAction_Button_GH()
end

---@return boolean
function API.DoAction_Button_QP()
	return DoAction_Button_QP()
end

---@param action number
---@param route number
---@param obj AllObject
---@return boolean
function API.DoAction_G_Items_Direct(action, route, obj)
	return DoAction_G_Items_Direct(action, route, obj)
end

---@param action number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r_norm(action, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r_norm(action, obj, maxdistance, tile, radius)
end

---@param action number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r_normSTACKs(action, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r_normSTACKs(action, obj, maxdistance, tile, radius)
end

---@param command1 number
---@param command2 number
---@param command3 number
---@param numbererface1 number
---@param numbererface2 number
---@param numbererface3 number
---@param offset number
---@param pixel_x number
---@param pixel_y number
---@return boolean
function API.DoAction_Interface(command1, command2, command3, numbererface1, numbererface2, numbererface3, offset, pixel_x, pixel_y)
	return DoAction_Interface(command1, command2, command3, numbererface1, numbererface2, numbererface3, offset, pixel_x, pixel_y)
end

---@return boolean
function API.DoAction_Logout_mini()
	return DoAction_Logout_mini()
end

---@return boolean
function API.DoAction_LootAll_Button()
	return DoAction_LootAll_Button()
end

---@param ids userdata --vector<int>
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_Loot_w(ids, maxdistance, tile, radius)
	return DoAction_Loot_w(ids, maxdistance, tile, radius)
end

---@return boolean
function API.DoAction_Loot_w_Close()
	return DoAction_Loot_w_Close()
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param ignore_star boolean
---@param health number
---@return boolean
function API.DoAction_NPC(action, offset, objects, maxdistance, ignore_star, health)
	return DoAction_NPC(action, offset, objects, maxdistance, ignore_star, health)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param bottom_left WPOINT
---@param top_right WPOINT
---@return boolean
function API.DoAction_NPC_In_Area(action, offset, obj, maxdistance, bottom_left, top_right, ignore_star, health)
	return DoAction_NPC_In_Area(action, offset, obj, maxdistance, bottom_left, top_right, ignore_star, health)
end

---@param action number
---@param offset number
---@param obj userdata --vector<string>
---@param maxdistance number
---@param ignore_star boolean
---@param health number
---@return boolean
function API.DoAction_NPC_str(action, offset, objects, maxdistance, ignore_star, health)
	return DoAction_NPC_str(action, offset, objects, maxdistance, ignore_star, health)
end

---@param action number
---@param offset number
---@param object AllObject
---@return boolean
function API.DoAction_NPC__Direct(action, offset, object)
	return DoAction_NPC__Direct(action, offset, object)
end

---@param action number
---@param offset number
---@param object AllObject
---@return boolean
function API.DoAction_Object_Direct(action, offset, object)
	return DoAction_Object_Direct(action, offset, object)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@return boolean
function API.DoAction_Object_furthest(action, offset, obj, maxdistance)
	return DoAction_Object_furthest(action, offset, obj, maxdistance)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param tile WPOINT
---@param tile_range number --float
---@return boolean
function API.DoAction_Object_r(action, offset, obj, maxdistance, tile, tile_range)
	return DoAction_Object_r(action, offset, obj, maxdistance, tile, tile_range)
end

---@return boolean
function API.DoAction_then_lobby()
	return DoAction_then_lobby()
end

---@param normal_tile WPOINT
---@return boolean
function API.DoAction_Tile(normal_tile)
	return DoAction_Tile(normal_tile)
end

---@param normal_tile FFPOINT
---@return boolean
function API.DoAction_TileF(normal_tile)
	return DoAction_TileF(normal_tile)
end

---@param obj AllObject
---@param offset number
---@return boolean
function API.DoAction_VS_Player_action_Direct(obj, offset)
	return DoAction_VS_Player_action_Direct(obj, offset)
end

---@param obj userdata --vector<string>
---@param maxdistance number
---@return boolean
function API.DoAction_VS_Player_Follow(obj, maxdistance)
	return DoAction_VS_Player_Follow(obj, maxdistance)
end

---@param obj userdata --vector<string>
---@param maxdistance number
---@return boolean
function API.DoAction_VS_Player_Trade(obj, maxdistance)
	return DoAction_VS_Player_Trade(obj, maxdistance)
end

---@param normal_tile FFPOINT
---@param sleep number --50 is ok number
---@return boolean
function API.DoAction_WalkerF1(normal_tile, sleep)
	return DoAction_WalkerF(normal_tile, sleep)
end

---@param normal_tile FFPOINT
---@return boolean
function API.DoAction_WalkerF(normal_tile)
	return DoAction_WalkerF(normal_tile)
end

---@param normal_tile FFPOINT
---@param sleep number --50 is ok number
---@return boolean
function API.DoAction_WalkerF1(normal_tile, sleep)
	return DoAction_WalkerF(normal_tile, sleep)
end

---@param normal_tile WPOINT
---@return boolean
function API.DoAction_WalkerW(normal_tile)
	return DoAction_WalkerW(normal_tile)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param highlight userdata --vector<int>
---@return boolean
function API.FindHl(action, offset, obj, maxdistance, highlight)
	return FindHl(action, offset, obj, maxdistance, highlight)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param highlight userdata --vector<int>
---@param localp_dist number --float
---@return boolean
function API.FindHLvsLocalPlayer(action, offset, obj, maxdistance, highlight, localp_dist)
	return FindHLvsLocalPlayer(action, offset, obj, maxdistance, highlight, localp_dist)
end

--- wide array of randoms
---@return boolean
function API.DoRandomEvents()
	return DoRandomEvents()
end

--- single random ncp
---@return boolean
function API.DoRandomEvent(randnpc)
	return DoRandomEvent(randnpc)
end

---@param value number
---@param arrayof userdata --vector<int>
---@return boolean
function API.Math_ValueEquals(value, arrayof)
	return Math_ValueEquals(value, arrayof)
end

---@param item number
---@param action number
---@return WPOINT
function API.InvFindItem1(item, action)
	return InvFindItem(item, action)
end

---@param item string
---@param action number
---@return WPOINT
function API.InvFindItem2(item, action)
	return InvFindItem(item, action)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObj1(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObj(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext userdata --vector<string>
---@return boolean
function API.FindObj2(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObj(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param AllStuff2 userdata --vector<AllObject>
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.ClickAllObj1(AllStuff2, accuracy, usemap, action, sidetext)
	return ClickAllObj(AllStuff2, accuracy, usemap, action, sidetext)
end

---@param AllStuff2 userdata --vector<AllObject>
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext userdata --vector<string>
---@return boolean
function API.ClickAllObj2(AllStuff2, accuracy, usemap, action, sidetext)
	return ClickAllObj(AllStuff2, accuracy, usemap, action, sidetext)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param object_type1 number
---@return userdata --vector<AllObject>
function API.GetAllObjArray1(obj, maxdistance, object_type1)
	return GetAllObjArray(obj, maxdistance, object_type1)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param object_type1 number
---@param tile WPOINT
---@return userdata --vector<AllObject>
function API.GetAllObjArray2(obj, maxdistance, object_type1, tile)
	return GetAllObjArray(obj, maxdistance, object_type1, tile)
end

---@param tile WPOINT
---@return boolean
function API.CheckTileforObjects1(tile)
	return CheckTileforObjects(tile)
end

---@param tile WPOINT
---@param object number
---@param thresh number --float
---@return boolean
function API.CheckTileforObjects2(tile, object, thresh)
	return CheckTileforObjects(tile, object, thresh)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@return boolean
function API.FindObjCheck_1(obj, maxdistance, accuracy, usemap, action, sidetext)
	return FindObjCheck_(obj, maxdistance, accuracy, usemap, action, sidetext)
end

---@param obj userdata --vector<int>
---@param maxdistance number
---@param accuracy number
---@param usemap boolean
---@param action number
---@param sidetext string
---@param tile WPOINT
---@return boolean
function API.FindObjCheck_2(obj, maxdistance, accuracy, usemap, action, sidetext, tile)
	return FindObjCheck_(obj, maxdistance, accuracy, usemap, action, sidetext, tile)
end

--int input
---@param item number
---@param randomelement number --0 default
---@param action number --0 left
---@param xrand number
---@param yrand number
---@return boolean
function API.ClickInv_1(item, randomelement, action, xrand, yrand)
	return ClickInv_(item, randomelement, action, xrand, yrand)
end

--text input
---@param item string
---@param randomelement number --0 default
---@param action number --0 left
---@param xrand number
---@param yrand number
---@return boolean
function API.ClickInv_2(item, randomelement, action, xrand, yrand)
	return ClickInv_(item, randomelement, action, xrand, yrand)
end

---@param xy userdata --POINT
---@param mouse number
---@return void
function API.ClickTile_1(xy, mouse)
	return ClickTile_(xy, mouse)
end

---@param x number
---@param y number
---@param z number
---@param mouse number
---@return void
function API.ClickTile_2(x, y, z, mouse)
	return ClickTile_(x, y, z, mouse)
end

---@param item number
---@return number
function API.InvItemcount_1(item)
	return InvItemcount_(item)
end

---@param item userdata --vector<int>
---@return userdata --vector<int>
function API.InvItemcount_2(item)
	return InvItemcount_(item)
end

---@param item number
---@return boolean
function API.InvItemFound1(item)
	return InvItemFound(item)
end

---@param items userdata --vector<int>
---@return boolean
function API.InvItemFound2(items)
	return InvItemFound(items)
end

---@param text string
---@return boolean
function API.SideTextEq1(text)
	return SideTextEq(text)
end

---@param text userdata --vector<string>
---@return boolean
function API.SideTextEq2(text)
	return SideTextEq(text)
end

---@param xstart number
---@param xend number
---@param xcurrent number
---@param ystart number
---@param yend number
---@param ycurrent number
---@return boolean
function API.InArea21(xstart, xend, xcurrent, ystart, yend, ycurrent)
	return InArea2(xstart, xend, xcurrent, ystart, yend, ycurrent)
end

---@param xstart number --float
---@param xend number --float
---@param xcurrent number --float
---@param ystart number --float
---@param yend number --float
---@param ycurrent number --float
---@return boolean
function API.InArea22(xstart, xend, xcurrent, ystart, yend, ycurrent)
	return InArea2(xstart, xend, xcurrent, ystart, yend, ycurrent)
end

---@param norm_tile FFPOINT
---@param range number --float
---@return boolean
function API.PInAreaF1(norm_tile, range)
	return PInAreaF(norm_tile, range)
end

---@param norm_tile FFPOINT
---@param range number
---@return boolean
function API.PInAreaF2(norm_tile, range)
	return PInAreaF(norm_tile, range)
end

---@param xstart number
---@param xend number
---@param ystart number
---@param yend number
---@return boolean
function API.PInArea21(xstart, xend, ystart, yend)
	return PInArea2(xstart, xend, ystart, yend)
end

---@param xstart number --float
---@param xend number --float
---@param ystart number --float
---@param yend number --float
---@return boolean
function API.PInArea22(xstart, xend, ystart, yend)
	return PInArea2(xstart, xend, ystart, yend)
end

--- Ascii numeric values, 1 is 49, enter is 17, space is 32
---@param codes number
---@param sleep number
---@param rand number
---@return void
function API.KeyboardPress31(codes, sleep, rand)
	return KeyboardPress3(codes, sleep, rand)
end

--- Ascii numeric values, 1 is 49, enter is 17, space is 32
---@param codes number
---@param keymod number
---@return void
function API.KeyboardPress32(codes, keymod)
	return KeyboardPress3(codes, keymod)
end

---@param value number
---@param arrayof userdata --vector<IInfo>
---@return boolean
function API.Math_IInfo_ValueEquals1(value, arrayof)
	return Math_IInfo_ValueEquals(value, arrayof)
end

---@param value userdata --vector<int>
---@param arrayof userdata --vector<IInfo>
---@return boolean
function API.Math_IInfo_ValueEquals2(value, arrayof)
	return Math_IInfo_ValueEquals(value, arrayof)
end

---@param number number --double
---@return number
function API.Math_RandomNumber1(number)
	return Math_RandomNumber(number)
end

---@param number number --float
---@return number
function API.Math_RandomNumber2(number)
	return Math_RandomNumber(number)
end

---@param number number
---@return number
function API.Math_RandomNumber3(number)
	return Math_RandomNumber(number)
end

---@param spot number
---@return WPOINT
function API.W2ScreenNat1(spot)
	return W2ScreenNat(spot)
end

---@param entity FFPOINT
---@return WPOINT
function API.W2ScreenNat2(entity)
	return W2ScreenNat(entity)
end

---@param loop number
---@return boolean
function API.Local_PlayerInterActingWith_21(loop)
	return Local_PlayerInterActingWith_2(loop)
end

---@param loop number
---@param name string
---@return boolean
function API.Local_PlayerInterActingWith_22(loop, name)
	return Local_PlayerInterActingWith_2(loop, name)
end

---@param player string
---@return string
function API.PlayerInterActingWith_1(player)
	return PlayerInterActingWith_(player)
end

---@param localmem number
---@return string
function API.PlayerInterActingWith_2(localmem)
	return PlayerInterActingWith_(localmem)
end

---@param target_under boolean
---@param lv_ID userdata --vector<InterfaceComp5>
---@return userdata --vector<IInfo>
function API.ScanForInterfaceTest2Get(target_under, lv_ID)
	if type(lv_ID[1]) == "table" then
		local ids = {}
		
		for i = 1, #lv_ID do
			local comp = InterfaceComp5:new(lv_ID[i][1], lv_ID[i][2], lv_ID[i][3], lv_ID[i][4], lv_ID[i][5])
			table.insert(ids, comp)
		end
		
		return ScanForInterfaceTest2Get(target_under, ids)
	end
	
	return ScanForInterfaceTest2Get(target_under, lv_ID)
end

---@param item number
---@return number
function API.BankGetItemStack1(item)
	return BankGetItemStack(item)
end

---@param item userdata --vector<int>
---@return userdata --vector<int>
function API.BankGetItemStack2(item)
	return BankGetItemStack(item)
end

---@param item1 number
---@param item2 number
---@return boolean
function API.CheckInvStuff1(item1, item2)
	return CheckInvStuff(item1, item2)
end

---@param item1 number
---@return boolean
function API.CheckInvStuff2(item1)
	return CheckInvStuff(item1)
end

---@param item1 userdata --vector<int>
---@return userdata --vector<bool>
function API.CheckInvStuff3(item1)
	return CheckInvStuff(item1)
end

---@param items userdata --vector<int>
---@return boolean
function API.CheckInvStuffCheckAll1(items)
	return CheckInvStuffCheckAll(items)
end

---@param items userdata --vector<int>
---@param size number
---@return boolean
function API.CheckInvStuffCheckAll2(items, size)
	return CheckInvStuffCheckAll(items, size)
end

---@param port number
---@param checktext string
---@return boolean
function API.DoPortables1(port, checktext)
	return DoPortables(port, checktext)
end

---@param port number
---@param settID number
---@param checktext string
---@return boolean
function API.DoPortables2(port, settID, checktext)
	return DoPortables(port, settID, checktext)
end

---@param slot number
---@param id number
---@return boolean
function API.EquipSlotEq1(slot, id)
	return EquipSlotEq(slot, id)
end

---@param slot number
---@param txt string
---@return boolean
function API.EquipSlotEq2(slot, txt)
	return EquipSlotEq(slot, txt)
end

---@param ability_name string
---@return userdata -- Abilitybar
function API.GetABs_name1(ability_name)
	return GetABs_name(ability_name)
end

---@param ability_name userdata --vector<string>
---@return userdata --vector<Abilitybar>
function API.GetABs_name2(ability_name)
	return GetABs_name(ability_name)
end

---@param chest number
---@return boolean
function API.OpenBankChest1(chest)
	return OpenBankChest(chest)
end

---@param chest number
---@param pushnumber number --char
---@return boolean
function API.OpenBankChest2(chest, pushnumber)
	return OpenBankChest(chest, pushnumber)
end

---@param chest number
---@param pushnumber number --char
---@param content_ids userdata --vector<int>
---@return boolean
function API.OpenBankChest3(chest, pushnumber, content_ids)
	return OpenBankChest(chest, pushnumber, content_ids)
end

---@param action number
---@param obj userdata --vector<int>
---@param maxdistance number
---@return boolean
function API.DoAction_G_Items1(action, obj, maxdistance)
	return DoAction_G_Items(action, obj, maxdistance)
end

---@param action number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param atTile WPOINT
---@return boolean
function API.DoAction_G_Items2(action, obj, maxdistance, atTile)
	return DoAction_G_Items(action, obj, maxdistance, atTile)
end

---@param action number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r1(action, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r(action, obj, maxdistance, tile, radius)
end

---@param action number
---@param action_route number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param tile FFPOINT
---@param radius number --float
---@return boolean
function API.DoAction_G_Items_r2(action, action_route, obj, maxdistance, tile, radius)
	return DoAction_G_Items_r(action, action_route, obj, maxdistance, tile, radius)
end

---@param id number
---@param random number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Inventory1(id, random, m_action, offset)
	return DoAction_Inventory(id, random, m_action, offset)
end

---@param ids userdata --vector<int>
---@param random number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Inventory2(ids, random, m_action, offset)
	return DoAction_Inventory(ids, random, m_action, offset)
end

---@param itemname string
---@param random number
---@param m_action number
---@param offset number
---@return boolean
function API.DoAction_Inventory3(itemname, random, m_action, offset)
	return DoAction_Inventory(itemname, random, m_action, offset)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@return boolean
function API.DoAction_Object1(action, offset, obj, maxdistance)
	return DoAction_Object(action, offset, obj, maxdistance)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param tile WPOINT
---@return boolean
function API.DoAction_Object2(action, offset, obj, maxdistance, tile)
    return DoAction_Object(action, offset, obj, maxdistance, tile)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param valid boolean
---@return boolean
function API.DoAction_Object_valid1(action, offset, obj, maxdistance, valid)
	return DoAction_Object_valid(action, offset, obj, maxdistance, valid)
end

---@param action number
---@param offset number
---@param obj userdata --vector<int>
---@param maxdistance number
---@param tile WPOINT
---@param valid boolean
---@return boolean
function API.DoAction_Object_valid2(action, offset, obj, maxdistance, tile, valid)
	return DoAction_Object_valid(action, offset, obj, maxdistance, tile, valid)
end

---@param action number
---@param offset number
---@param obj userdata --vector<string>
---@param maxdistance number
---@param valid boolean
---@return boolean
function API.DoAction_Object_string1(action, offset, obj, maxdistance, valid)
	return DoAction_Object_string(action, offset, obj, maxdistance, valid)
end

---@param action number
---@param offset number
---@param obj userdata --vector<string>
---@param maxdistance number
---@param tile WPOINT
---@param valid boolean
---@return boolean
function API.DoAction_Object_string2(action, offset, obj, maxdistance, tile, valid)
	return DoAction_Object_string(action, offset, obj, maxdistance, tile, valid)
end

---@param obj userdata --vector<string>
---@param maxdistance number
---@return boolean
function API.DoAction_VS_Player_Attack1(obj, maxdistance)
	return DoAction_VS_Player_Attack(obj, maxdistance)
end

---@param obj userdata --vector<string>
---@param maxdistance number
---@param checkcombat boolean
---@param xstart number
---@param xend number
---@param ystart number
---@param yend number
---@return boolean
function API.DoAction_VS_Player_Attack2(obj, maxdistance, checkcombat, xstart, xend, ystart, yend)
	return DoAction_VS_Player_Attack(obj, maxdistance, checkcombat, xstart, xend, ystart, yend)
end

return API
