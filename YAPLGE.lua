local YAPLGE = {}

function YAPLGE.notify(text,duration,dt,key)
	time = if time then time+dt else 0 end
	stringLength=stringLength or 0
	localtext=localtext or ""
	if time > stringLength * duration/string.len(text) then
		stringLength = stringLength + 1
		localtext = string.sub(text,1,stringLength)
	end
	love.graphics.print(localtext,love.graphics.getWidth()/2,love.graphics.getHeight()-32)
end

return YAPLGE
