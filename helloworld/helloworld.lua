--[[
	���Ի�����LUA���ַ�������
		gsub �൱���������Ե�REPLACE������
		find �������������ַ���INDEX��1��ʼ
		LUA�ĸ�ֵ��ʽ		local x,y="",str:byte()
		LUA �ַ�������Ϊ ..
		��ȡһ���ַ���ASCII��Ϊ   ("t"):byte()
		��ȡһ���ַ����ĳ���Ϊ		string.len()  OR #("�����ַ���")
		��ģ����� 	%
		������		^  �����ȼ�����ģ��
		��Ŀ�����? :  ������   cond and expr1 or expr2




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
	str2bin("��")
);





--print(#data) --//�ַ�������ǰ��һ��#����ʾ��ȡ����

--~ local x = "x";

--~ local r,key='',x:byte() --Ҫϰ��LUA�ĸ�ֵ��ʽ,ͬʱ��ֵ���ҵ�һ�ο���ΪrΪNIL,keyΪ "" ,����ִ����һ����������
--~ print(key)

--print(28 % 3 ^ 3,9 ^ 2) --//����^,���Ǽ��η������


-- print(10%2,9%2) --//0 1


--~ for i=string.len(data),1,-1 do
--~ 	-- �ַ�����ת
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
--gsub �൱���������Ե�����REPLACE
--~ print(("Lua is cute"):gsub("cute",function(x)

--~ 	return x .. "xx"

--~ end))

--���ĸ�����Ϊ�滻����
--~ s = string.gsub("all lii", "l", "x", 1)
--~ print(s)          --> axl lii
--~ s = string.gsub("all lii", "l", "x", 2)
--~ print(s)          --> axx lii
--~ s = string.gsub("all lil", "l", "x", 3)
--~ print(s)          --> axx lil

--~ string.gsub�ĵڶ�������ֵ��ʾ�������滻�����Ĵ��������磬�������ӿ������һ���ַ����пո���ֵĴ�����
--~ _, count = string.gsub(str, " ", " ")
--~ ��ע�⣬_ ֻ��һ����Ԫ������

--lua ��ע��
--[[
	lua �Ķ���ע��
--]]


--~ s = "hello world"
--~ i, j = string.find(s, "hello")
--~ print(i, j)
