create user vultar@'%' identified by 'password';
grant all on *.* to vultar@'%';
flush privileges;