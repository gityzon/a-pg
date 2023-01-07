#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署
#！RUN之前请看注释：
#！如果你使用远程数据库，请#注释掉第789行，并查看隐藏文件.replit获取帮助
#！如果你选择本地数据库，请按照 create-db.md 的指示创建数据库

#启动pgSQL
sh startpg.sh
pg_ctl stop
pg_ctl -l ./postgresql.log start

#下载最新版replit
if [ ! -f "alist" ];then
  curl -L https://github.com/alist-org/alist/releases/latest/download/alist-linux-musl-amd64.tar.gz -o alist.tar.gz
  tar -zxvf alist.tar.gz
  rm -f alist.tar.gz
  mv alist-linux-musl-amd64 alist
fi

#！！待数据库信息配置好之后，取消注释以下行，并“RUN"
#！！初始密码在console的"Initial password"一行
#./alist server
