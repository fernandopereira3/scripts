for (($i=0); $i -le 255; $i++)
{
    ping -a 10.14.180.$i -n 1 >> \\10.14.180.204\programas\ips2.txt
    echo -e "ping finalizado em" "$i"
}