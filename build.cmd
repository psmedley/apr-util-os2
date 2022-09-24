make clean
make 2>&1 | tee build.log
gcc -Zdll -Zomf -o dbdmysql.dll dbd/apr_dbd_mysql.o -L/mysql56/lib     -lmysqlclient -L/mysql56/lib -lmysqlclient -lu:/extras/lib/ssl.lib -lu:/extras/lib/crypto.lib -lpthreads -lcx -lapr-1 -laprutil-1
emxomf -o .libs\aprutil-1.lib .libs\aprutil-1.a
copy .libs\aprutil-1.lib \extras\lib