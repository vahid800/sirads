redis = (loadfile "redis.lua")()
io.write("Enter sirads ID : ")
local last = io.read()
io.popen('rm -rf ~/.telegram-cli/sirads-'..last..' sirads-'..last..'.lua sirads-'..last..'.sh sirads_'..last..'_logs.txt')
redis:del('sirads:'..last..':*')
print("Done!\nAll Data/Files Of sirads Deleted\nsirads ID : "..last)
