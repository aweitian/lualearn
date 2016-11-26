--[[
	测试基本的LUA的字符串操作
		gsub 相当于其它语言的REPLACE，正则
		find 返回两个数，字符串INDEX从1开始
		LUA的赋值方式		local x,y="",str:byte()
		LUA 字符串连接为 ..
		获取一个字符的ASCII码为   ("t"):byte()
		获取一个字符串的长度为		string.len()  OR #("我是字符串")
		求模运算符 	%
		幂运算		^  它优先级比求模高
		三目运算符? :  可以用   cond and expr1 or expr2




--]]


local data = "tiananwei";

--~ print(data:gsub("%a",function(x) return "."; end));
--~ print(data);

function str2bin(data)
	return data:gsub('.',dec2bin);
end

function dec2bin(str)
	local r,key='',str:byte();
	for i=8,1,-1 do
		r=r..(key%2^i-key%2^(i-1)>0 and '1' or '0')
	end
	return r;
end

print(
	str2bin("田")
);





--print(#data) --//字符串变量前放一个#，表示获取长度

--~ local x = "x";

--~ local r,key='',x:byte() --要习惯LUA的赋值方式,同时赋值，我第一次看以为r为NIL,key为 "" ,后面执行了一个函数调用
--~ print(key)

--print(28 % 3 ^ 3,9 ^ 2) --//先算^,这是几次方运算符


-- print(10%2,9%2) --//0 1


--~ for i=string.len(data),1,-1 do
--~ 	-- 字符串反转
--~ 	print(string.sub(data,i,i));

--~ end



--~ for i=1,string.len(data) do
--~ 	-- print t i a n a n w e i
--~ 	print(string.sub(data,i,i));

--~ end


-- print (("aw"):byte()) -- 97




--~ print (("t"):byte()) -- 116


--~ s = string.gsub("Lua is cute", "cute", "great")
--~ print(s)

--~ s = "Lua is cute"
--gsub 相当于其它语言的正则REPLACE
--~ print(("Lua is cute"):gsub("cute",function(x)

--~ 	return x .. "xx"

--~ end))

--第四个参数为替换次数
--~ s = string.gsub("all lii", "l", "x", 1)
--~ print(s)          --> axl lii
--~ s = string.gsub("all lii", "l", "x", 2)
--~ print(s)          --> axx lii
--~ s = string.gsub("all lil", "l", "x", 3)
--~ print(s)          --> axx lil

--~ string.gsub的第二个返回值表示他进行替换操作的次数。例如，下面代码涌来计算一个字符串中空格出现的次数：
--~ _, count = string.gsub(str, " ", " ")
--~ （注意，_ 只是一个哑元变量）

--lua 的注释
--[[
	lua 的多行注释
--]]


--~ s = "hello world"
--~ i, j = string.find(s, "hello")
--~ print(i, j)
