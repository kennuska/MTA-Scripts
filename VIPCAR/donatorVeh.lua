local cmd = {}

function spawnDaVehicle(thePlayer, commandName)
local account = getPlayerAccount(thePlayer)
        if (isObjectInACLGroup("user." ..getAccountName(account), aclGetGroup("Premium"))) and not isTimer(cmd[thePlayer]) then
		    cmd[thePlayer] = setTimer(resetcmd,10800000,1,thePlayer)
			local x, y, z = getElementPosition(thePlayer)
			local rx, ry, rz = getElementRotation(thePlayer)
			local veh = createVehicle(411, x, y, z, rx, ry, rz)
			local vehCol = createColSphere(x + 5, y, z, 4)
				attachElements(vehCol, veh, 0, 0, 0)
				setElementData(vehCol, "parent", veh)
				setElementData(veh, "parent", vehCol)
				setElementData(vehCol, "vehicle", true)
				setElementData(vehCol, "MAX_Slots", 30)
				setElementData(vehCol, "Tire_inVehicle", 4)
				setElementData(vehCol, "Engine_inVehicle", 1)
				setElementData(vehCol, "spawn", {411, x, y, z})
				setElementData(vehCol, "fuel", 80)
				warpPedIntoVehicle (thePlayer, veh)
			else
			    if isTimer(cmd[thePlayer]) then
				local remaining,execute = getTimerDetails(cmd[thePlayer])
					outputChatBox("#E8E8E8[OMEGASQUAD] #ffffffWait "..math.floor((remaining/100)*10).." seconds.",thePlayer,255,255,255,true)
					    addEventHandler( "onVehicleExplode", veh, function()
							setTimer(destroyElement, 120000, 1, veh)
							setTimer(destroyElement, 120000, 1, vehCol)
						end)
				end
		end
end
addCommandHandler("infernus", spawnDaVehicle)

function resetcmd(thePlayer)
    if isTimer(cmd[thePlayer]) then killTimer(cmd[thePlayer]) end
    cmd[thePlayer] = nil
end