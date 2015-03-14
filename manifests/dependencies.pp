class phpmyadmin::dependencies
{
    if $osfamily != 'Debian' {
        fail("Unsupported platform: ${osfamily}/${operatingsystem}")
    }
    require wget
    phpmyadmin::secure::install {['php5', 'php5-mysqlnd','php5-mcrypt']:}
}
