X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3961" "Thursday" "21" "April" "2016" "09:12:21" "+0100" "Sysdream Labs" "labs@sysdream.com" "<57188B65.4080501@sysdream.com>" "126" "[oss-security] Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Generation (access rights)" nil nil nil "4" "2016042108:12:21" "[oss-security] Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Generation (access rights)" (number mark "U       labs@sysdrea Apr 21  126/3961  " thread-indent "\"[oss-security] Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Generation (access rights)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18305 invoked by uid 550); 21 Apr 2016 16:17:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 2001 invoked from network); 21 Apr 2016 08:12:35 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org
From: Sysdream Labs <labs@sysdream.com>
Message-ID: <57188B65.4080501@sysdream.com>
Date: Thu, 21 Apr 2016 09:12:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.7.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="V0WPiuepdguePdtbmAJVb20Cs7mhO5Iff"
Subject: [oss-security] Wordpress iThemes Security (Better WP Security) Insecure
 Backup/Logfile Generation (access rights)

--V0WPiuepdguePdtbmAJVb20Cs7mhO5Iff
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Wordpress iThemes Security (Better WP Security) Insecure Backup/Logfile Gen=
eration (access rights)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

A vulnerability has been found in iThemes Security backup function that may=
 allow attackers to gain access to backup/log files.


By default, when using the "database backup on filesystem" feature, iThemes=
 Security saves the backup files in a world-readable directory :

wp-content/uploads/ithemes-security/backups

The .htaccess file is generated during the plugin initial setup/update, onl=
y if the wp-content/uploads/ithemes-security/backups exists (or wp-content/=
uploads/ithemes-security/logs). Note that it does *NOT* exists by default.

When running a backup, the ITSEC_Backup class creates the directory but *wi=
thout* any .htaccess file inside.
The same thing happens with log saving.

If the webserver has directory listing enabled, then anybody can download t=
he complete database backup or view the log files.


**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-219

**CVSS Base Score**: 7.5

---------------
Vulnerable code
---------------

The vulnerable code is located in core/modules/backup/class-itsec-backup.ph=
p, line 246 :

    if ( ! is_dir( $itsec_globals['ithemes_backup_dir'] ) ) {
        @mkdir( trailingslashit( $itsec_globals['ithemes_dir'] ) . 'backups=
' );
    }

And in core/class-itsec-logger.php, line 31 :

    //Make sure the logs directory was created
    if ( ! is_dir( $itsec_globals['ithemes_log_dir'] ) ) {
            @mkdir( trailingslashit( $itsec_globals['ithemes_dir'] ) . 'log=
s' );
    }

The application creates the backup/log directory, but *not* the .htaccess/i=
ndex file inside.

--------
Solution
--------

Add a default index file file inside the backup folder when creating the di=
rectory or store the backups outside of the web root.

Update iThemes Security to version >=3D 5.3.1

Timeline (dd/mm/yyyy)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* 26/02/2016 : Initial contact with iThemes.
* 26/02/2016 : iThemes confirms the vulnerabilities.
* 29/02/2016 : iThemes publishes a new version (5.3.1) of iThemes Security =
that fixes the vulnerabilities.

Credits
=3D=3D=3D=3D=3D=3D=3D

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)



--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream


--V0WPiuepdguePdtbmAJVb20Cs7mhO5Iff
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXGItlAAoJEI60jNnVslmhGOgQAIPKMEvz2pX58tuVcWmfrduy
SkMewsK+UO4GcUlCbBp98VkGJ1D6sHn7cRFTTbGFKW7RF6OfXeCoMyKvvStGup0Q
w67jgy7KgEPKlP0cDwQuuMdqofFTRUhYVT+g7JzjQ7cc92aC9aWANmJPia+dPaFF
WkDC9gVjibnk1BdUQF+BRbKTjsOGl8WKgq86mCMDy0W6BKW2YBQYwj0YtWVgr+z8
00QZsF87sHCUs38onuTmDefV5DWc73Wvkz96tz5vFgHFKgUQfBP2RjVsMc/BKamc
/d/Ykvd3YaXEW9sIxsJq+6m9s3tSBJ4mq2d5QENzByKze4A3aAHMf4gxEf1X97B3
J3eG/0jsoHqmYEXpKNXZraOK5d3ONdJldJtoAz/xjriBR/73xXaPXNQGh4Nm130M
4spB0zw0xRcN+08eF9oI4Wn8FFZaZc8KrgigBt3hTEBriiqBl2WAL3JOAL1Zxz+H
V5IkP2W/DhbLmW0fqVQjUbqIc/T6hYqYgUeQNCBn3Am885KK3u6YaUHID6ahNN+u
vakCquQvA+mB2hxLF2F1NC12B0o1w4V8qyNqUtpvFgZjE2z8D7V404ptrQgXlop0
MsO1nfGSPPUAcTCcEOdnInxl0kr0KhP7tzqSgJa4dlGxlE6qjZfOPL/TyZkL5Jje
Pa4jNFj2F2tvbzi1fmqr
=5lEx
-----END PGP SIGNATURE-----

--V0WPiuepdguePdtbmAJVb20Cs7mhO5Iff--
