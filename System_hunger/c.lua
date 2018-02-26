
--[[
@Resource: System-głodu
@Project: Gtao.pl
@Author: Barcioo
@Copyright 2018
@Zakaz edycji autora 
@Version 1.0.1 
]]





hunger = getTickCount()
addEventHandler("onClientRender",root,function()
 if getTickCount() - hunger >= 100 * 30 then
    if getElementData(localPlayer,"gracz_hunger") then
      hungertable ()
      hunger = getTickCount()
   end
 end
end)



controlTable = { "sprint", "jump","walk","crouch"}



function hungertable ()
 for _,v in ipairs( controlTable ) do
  if ( getControlState(v) ) then 
    if getElementData(localPlayer,"gracz_hunger") then
      setElementData(localPlayer,"gracz_hunger",getElementData(localPlayer,"gracz_hunger")-2)
   end
  end
end
end
