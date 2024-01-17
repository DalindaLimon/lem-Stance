
local stance = false

RegisterCommand('stance',function(src)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped,false)
    stance = not stance
    if stance== true then
    SetReduceDriftVehicleSuspension(veh,true)
    else
    SetReduceDriftVehicleSuspension(veh,false)
    end
    
    end,false)  
RegisterKeyMapping("stance","Vehicle Stance Toggle","keyboard","O")