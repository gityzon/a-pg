### 先 RUN，初始化pgSQL

### 在Shell界面

### Enter后,执行以下命令

createdb -h 127.0.0.1
psql -h 127.0.0.1
create user alist with password 'alist-admin';
CREATE DATABASE alist OWNER alist;
GRANT ALL PRIVILEGES ON DATABASE alist to alist;

### 之后去除main.sh最后一行的注释，RUN！

#### 以下是数据库连接信息（虽然都在.replit文件配置好了，不需要手动加参数）：
#### Options of database connection:

- 数据库类型：postgres / PostgreSQL
- 数据库主机：127.0.0.1:5432 / localhost:5432
- 用户名：alist
- 数据库用户密码：alist-admin
- 数据库名称：alist
- SSL：disable
- Schema：alist_ / (empty)
