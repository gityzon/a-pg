#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署
#！RUN之前请看注释：
#！如果你选择远程数据库，请#注释掉第678行，并查看隐藏文件.replit获取帮助

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
./alist -docker