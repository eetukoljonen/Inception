<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpressdb' );

/** Database username */
define( 'DB_USER', 'ekoljone_user' );

/** Database password */
define( 'DB_PASSWORD', 'pw' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'Ffir%^wK!_(?^(uvRZ8NzKb{6s@?b[G|y$igP<&0P_IJ_LE+t*6>.wVx^UF &%i~' );
define( 'SECURE_AUTH_KEY',   'xebH9i~J@h@&Q]WmKIsiP=mc@yX:6dJPGO]iro^S VXi9k#Wio+bY, pe>kKsHwW' );
define( 'LOGGED_IN_KEY',     '>|#*}I^BsibdL}&dPivuJ`$FmnNY:j:6g?IL~!:%`$cW6&b18c-8BEwS(yI4La~L' );
define( 'NONCE_KEY',         '$a`-jT2|/qk18_4yL-3g/S$&<;W~GeWGk1&Iu9g*MewuCQMKl||_B<SGczV?:V6{' );
define( 'AUTH_SALT',         'Om%D6Pc;,JH.dON7)FmRNke?p?=S[c:zZ)=1^!N44.W-@d)f6R^(fX8j8o^d+#F>' );
define( 'SECURE_AUTH_SALT',  ']I`>pG@WT|&6~x%n-d#/iZplV74{KC+*$`mu_hgec9nmh1~<(O97,e;1x~ZOrYXb' );
define( 'LOGGED_IN_SALT',    ']KGlwqHoCN1TJfBWmY,@>5}0=txb__Er4uWO_hesRoY+QE^~uYpt:JHfKX:@NW/R' );
define( 'NONCE_SALT',        's$:Hg+,`w=#*YqunZnDv ,em35{]5w`?5CU[:p.<G]9OqXm0[W~KKeV<T3=g?TU.' );
define( 'WP_CACHE_KEY_SALT', 'ks-!P~*|+E`V`5j#Zl*g5`,d,|,7(3 EX|4ZH,h$&SbRwCT]WMs9hhCo9@U(%]KG' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
