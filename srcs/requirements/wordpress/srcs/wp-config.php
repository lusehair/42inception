<?php
/**
 * Custom WordPress configurations on "wp-config.php" file.
 *
 * This file has the following configurations: MySQL settings, Table Prefix, Secret Keys, WordPress Language, ABSPATH and more.
 * For more information visit {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php} Codex page.
 * Created using {@link http://generatewp.com/wp-config/ wp-config.php File Generator} on GenerateWP.com.
 *
 * @package WordPress
 * @generator GenerateWP.com
 */


/* MySQL settings */
define( 'DB_NAME',     'wordpress' );
define( 'DB_USER',     '${MARIA_LOGIN}' );
define( 'DB_PASSWORD', '${MARIA_PASS}' );
define( 'DB_HOST',     'mariadb' );
define( 'DB_CHARSET',  'utf8mb4' );


/* MySQL database table prefix. */
$table_prefix = 'wp_';


/* Authentication Unique Keys and Salts. */
define('AUTH_KEY',         '=oYas{EwI,Xc=`[X<#l+!f,SEdPMN0!_]M@)Gn,nEXMlfUY:;RfZ7Y3~ |H4}V 2');
define('SECURE_AUTH_KEY',  'Ng4NxAcAn+dVo 6w0!,WZZLVBc=tA^Gi|h(rhg3NL(%({1/ht( *3bR?gQI|QC');
define('AUTH_SALT',        '`u{$-tMqYm.]BK3JU8LP@KX^;q0r(K7-;Xr.Ub+WlkN8&p=Xl,.t1`VJN?pD#|L<');
define('SECURE_AUTH_SALT', 'y(c4rCUUwCBw%/cKKs^m7(lF{D@aBPebki0S91|<*@*rmLsw/UDw=rJ!iq9sY|#]');
define('LOGGED_IN_SALT',   'PRk4Ad^@$Ux=TfWVg,Tx1b,90S53c;(za]Nfj>-)Hm49TQNG4:~UY`C#Et-Q)LOu');
define('NONCE_SALT',       ']H-_1+FGc{-aI+}T7*WE,^2OR3(&(dH-z]n]D$z6b3Pj%Sww1}PcN6y,]~mr-n#q');


/* SSL */
define( 'FORCE_SSL_LOGIN', true );


/* Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/* Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');