function itemcheta(thePlayer)
	if isObjectInACLGroup("user." .. getAccountName(getPlayerAccount(thePlayer)), aclGetGroup("Viktor")) then
		local x, y, z = getElementPosition(thePlayer)
			tent = createObject(964, x , y , z -1)
				tentCol = createColSphere(x , y, z,  3)
				attachElements(tentCol, tent, 0, 0, 0)
				setElementData(tent, "parent", tentCol)
				setElementData(tentCol, "tent", true)
				setElementData(tentCol, "vehicle", true)
				setElementData(tentCol, "parent", tent)
				setElementData(tentCol, "MAX_Slots", 50)
				setElementData(tentCol, "M4", 1)
				setElementData(tentCol, "Pistol Ammo", 5)
				setElementData(tentCol, "Assault Ammo", 4)
				setElementData(tentCol, "Desert Eagle", 1)
				setElementData(tentCol, "Water Bottle", 3)
				setElementData(tentCol, "Cooked Meat", 3)
				setElementData(tentCol, "Full Jerry Can", 1)
				setElementData(tentCol, "Medic Kit", 1)
				setElementData(tentCol, "Painkiller", 1)
				setElementData(tentCol, "Morphine", 1)
				setElementData(tentCol, "Map", 1)
				setElementData(tentCol, "Watch", 1)
				setElementData(tentCol, "GPS", 1)
				setElementData(tentCol, "Toolbox", 1)
				setElementData(thePlayer, "MAX_Slots", 60)
					cmd[thePlayer] = setTimer(resetcmd,3600000,1,thePlayer)
				else
					if isTimer(cmd[thePlayer]) then
						local remaining,execute = getTimerDetails(cmd[thePlayer])
					outputChatBox("#E8E8E8[CMD] #ffffffIzchakai "..math.floor(remaining/1000).." predi da q polzvash.",thePlayer,255,255,255,true)

				end
		end
end
addCommandHandler("obichamdaabusevam", itemcheta)
