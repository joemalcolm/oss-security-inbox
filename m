X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2556" "Tuesday" "5" "April" "2016" "22:37:58" "+0100" "Michael Tremer" "michael.tremer@ipfire.org" "<1459892278.30749.347.camel@ipfire.org>" "77" "[oss-security] CVE request: Remote command execution/XSS vulnerability after login in IPFire's web user interface" nil nil nil "4" "2016040521:37:58" "[oss-security] CVE request: Remote command execution/XSS vulnerability after login in IPFire's web user interface" (number mark "U       michael.trem Apr  5   77/2556  " thread-indent "\"[oss-security] CVE request: Remote command execution/XSS vulnerability after login in IPFire's web user interface\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9379 invoked by uid 550); 5 Apr 2016 22:37:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30243 invoked from network); 5 Apr 2016 21:38:18 -0000
Message-ID: <1459892278.30749.347.camel@ipfire.org>
From: Michael Tremer <michael.tremer@ipfire.org>
To: oss-security@lists.openwall.com, cve-assign@mitre.org
Date: Tue, 05 Apr 2016 22:37:58 +0100
Organization: IPFire.org
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-z/WmW/bw+sxXPeTLZuAX"
X-Mailer: Evolution 3.18.5.1 (3.18.5.1-1.fc23) 
Mime-Version: 1.0
Subject: [oss-security] CVE request: Remote command execution/XSS vulnerability after login
 in IPFire's web user interface

--=-z/WmW/bw+sxXPeTLZuAX
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I would like to request a CVE number for the following two issues in the web
user interface of IPFire reported by Yann Cam [1].

We currently have an upstream bug report [2] that is non-public at the mome=
nt
and patches are under review by the reporter.


1) XSS in GET parameter in ipinfo.cgi

A non-persistent XSS in GET param is available in the ipinfo.cgi. The injec=
tion
can be URLencoded with certain browsers or blocked with Anti-XSS engine.

This XSS works on IE and affect IPFire version <=3D 2.17 Core Update 99 for=
 the
moment.
=C2=A0
File /srv/web/ipfire/cgi-bin/ipinfo.cgi line 87 :
=C2=A0=C2=A0=C2=A0=C2=A0&Header::openbox('100%', 'left', $addr . ' (' . $ho=
stname . ') : '.$whoisname);
=C2=A0

2) Remote command execution in proxy.cgi

Remote Command Execution in the proxy.cgi file. This file is protected from=
 CSRF
execution. Affected version <=3D 2.17 Core Update 99 for the moment.

File /srv/web/ipfire/cgi-bin/proxy.cgi line 4137 :
=C2=A0=C2=A0=C2=A0=C2=A0system("/usr/sbin/htpasswd -b $userdb $str_user $st=
r_pass");

The $str_pass isn't sanitized before execution in command line. It's possib=
le to
change the "NCSA_PASS" and "NCSA_PASS_CONFIRM" post data with arbitrary dat=
a.


Thank you,
-Michael

[1]=C2=A0https://www.asafety.fr/data/20160403_-_IPFire_2.17_i586_Core_Updat=
e_99_Remote_Command_Execution.txt
[2]=C2=A0https://bugzilla.ipfire.org/show_bug.cgi?id=3D11087=

--=-z/WmW/bw+sxXPeTLZuAX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJXBDA2AAoJEIB58P9vkAkHJkkQAJQT4UeP2JP9NFD3O2528FyC
2FNQtmalupUs7rZcU9g7vJ8ZFWFz5VO9u1I3MgXdiRRIeSCKVAPRv1MAaamAPZwK
hYhKDHToljfKI9Xk8E5a8xSXAy/xoCclZ9Sl77UoYecSqVjL1fh5iJgdnJZGLouK
vkFp0aKGUcYcT1zRWwrwLAZ4AzSp3PWrBD4fkZzd2G8QMxmWJr9h6uqa5VAw17br
lW5Gog5A0uFyER2S/EIqIYfNTm7htjw1tEzxQVQD/TLf6tpbhxCmwTmd8O/UPORu
dKXgV5OaTmnPgech0W1Z5owYYSTnnaLnwmnif2JVa2TYhcmUfOlrAkZIIUveNmMi
VJYnFV3Bze4L8GsEdpfmS5xaMR0QgBHDWhlNcFAEdEwIBtuN/kreHF8UDyXMNbXp
1RL7ppuCNFuEOR3KAcVm4Rl5BuB68YRgKjqci+WDNNNb2a74Aj25QvWUDdJ+TjMF
pXttX35BBpf3gvsnr1Tvo0xgkPs7VslBD8CCAsNcsl+WaSyQ6d4WFfJIyHOOLSj0
gq7JDFNFAxcUp5XdU10ZPKSZvUStzkdLSk7HawlV9TweYYFJnZHc0XB8uaY/ycCy
uG0z3KbSV37x8h8a5UsZ0ssHOC+gCpel77Omioi7eQaCT7Yckwc3FGuwptz+LXbM
tIiVk448m1FPM2BB6xDL
=IN+O
-----END PGP SIGNATURE-----

--=-z/WmW/bw+sxXPeTLZuAX--

