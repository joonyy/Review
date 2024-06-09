use shopdb;

create View uv_memberTBL
AS
	select memberName, memberAddress from memberTBL;