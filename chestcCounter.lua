local finished = false
local cursorPos = 0
local Maxtotal = 0
local total = 0
while not finished do
    local monitor = peripheral.wrap("right")
    local chest = peripheral.find("minecraft:chest")
    local currentPointer = 0
    total = 0 
    for slot in pairs(chest.list()) do
        total = total + slot
    end
    if total ~= Maxtotal then
        monitor.clear()
        Maxtotal = total
        for slot, item in pairs(chest.list()) do
             monitor.setCursorPos(1,currentPointer+1)
             monitor.write(("%d x %s in slot %d"):format(item.count,item.name,slot))
             currentPointer = currentPointer +1
        end
        currentPointer = 0
    end
end
   
