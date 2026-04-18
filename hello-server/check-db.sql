-- 确认连接到正确的数据库并检查表结构
\c sys_user

-- 查看所有表
\dt

-- 查看 user 表结构
\d "user"

-- 直接查询表数据
SELECT * FROM "user" LIMIT 1;
