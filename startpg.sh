# start Postgres
pg_ctl stop

initdb
cp postgresql.conf.tpl data/postgresql.conf
mkdir postgres

socker_dir="\/home\/runner\/${REPL_SLUG}\/postgres"

sed -i "s/replace_unix_dir/${socker_dir}/" data/postgresql.conf


if [ -f "create-complete.md" ];then
sh create-db.sh 
mv create-db.sh create-complete.md
fi
