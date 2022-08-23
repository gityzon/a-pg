### 在Shell界面

### Enter后,执行以下命令

createdb -h 127.0.0.1
psql -h 127.0.0.1
create user alist with password 'alist-admin';
CREATE DATABASE alist OWNER alist;
GRANT ALL PRIVILEGES ON DATABASE alist to alist;



#### Options of database connection:

- 数据库类型：postgres / PostgreSQL
- 数据库主机：127.0.0.1:5432 / localhost:5432
- 用户名：alist
- 数据库用户密码：alist-admin
- 数据库名称：alist
- SSL：disable
- Schema：alist_ / (empty)
