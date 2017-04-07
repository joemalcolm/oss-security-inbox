X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3132" "Friday" "7" "April" "2017" "10:41:59" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20170407084159.GB9615@f195.suse.de>" "79" "[oss-security] CVE-2017-7572: backintime: usage of deprecated unix-process polkit authorization subject opens a race condition during authorization" nil nil nil "4" "2017040708:41:59" "[oss-security] CVE-2017-7572: backintime: usage of deprecated unix-process polkit authorization subject opens a race condition during authorization" (number mark "U       mgerstner@su Apr  7   79/3132  " thread-indent "\"[oss-security] CVE-2017-7572: backintime: usage of deprecated unix-process polkit authorization subject opens a race condition during authorization\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30033 invoked by uid 550); 7 Apr 2017 09:08:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11998 invoked from network); 7 Apr 2017 08:42:11 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Fri, 7 Apr 2017 10:41:59 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20170407084159.GB9615@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="dc+cDN39EJAMEtIO"
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] CVE-2017-7572: backintime: usage of deprecated unix-process polkit
 authorization subject opens a race condition during authorization

--dc+cDN39EJAMEtIO
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

backintime includes a DBus service helper 'qt/serviceHelper.py'. This helper
uses polkit to authorize some of its APIs, they should only be accessible
through entering the root password. The helper program uses the deprecated
"unix-process" authorization subject for this purpose, however. This polkit
authorization method is known to be affected by a "time of check, time of u=
se"
race condition:

https://www.freedesktop.org/software/polkit/docs/latest/PolkitUnixProcess.h=
tml#polkit-unix-process-new
https://github.com/Kabot/Unix-Privilege-Escalation-Exploits-Pack/blob/maste=
r/2011/CVE-2011-1485/polkit-pwnage.c

To exploit this issue an attacker needs to be able to replace the PID of
a process that requests an affected polkit privilege by a root owned
process, just in time for polkitd to assume that the requesting process
was privileged and no further password entry is required.

In the worst case this could allow a regular user to add udev rules to the
system that run commands in the context of the regular user, once a certain
udev event occurs. I don't think it is easily possible to gain root privile=
ges
this way. This is because the serviceHelper wraps the udev commands in a su=
do
call running as the user owning the requesting process. The determination of
this identity is done in a different, more secure way.

I've proposed a fix to upstream that changes the authorization mechanism to
"system-bus-name" which is considered safe and not affected by the described
race condition.

This issue was discovered by Sebastian Krahmer of the SUSE security team.

References:

[Suggested patch] https://github.com/bit-team/backintime/commit/7f208dc547f=
569b689c888103e3b593a48cd1869
[openSUSE bug] https://bugzilla.suse.com/show_bug.cgi?id=3D1032717

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Telefon: +49 911 740 53 290

SUSE Linux GmbH=20
GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nuernberg)

--dc+cDN39EJAMEtIO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBAgAGBQJY51DXAAoJEBTEBclxkjVT3pYQAKkweZ2To9ewx0or8OO4BhEY
0mNoJgM5RAsvSlHgAzQVdSM/gwrZgWuuCxvZWdkrGZ8Kgv+XBHWj4i1hHvDpV3PG
xQUOHn/sGe9ac8TUAcnNv/Un6IsqPFdD2ZT5bUZGct3in3Xbjjrn/40eCGsClXGB
hgz/4VEF41jzvZmpcCNaLYqrHA4XOHJb4oEH5g7cQb0VjV62ejg9qltsyGxgwA5C
WMieg0ur1rpnc0anH39FIj3ub2HyRMd7t723CEywblIgepjsqiCMHJt1hi41FN0b
SIgNHQFG10I0ihgrd79TIbH6dhSYPU0I08ZHZTvp5SC1Nxy7oYi8kE7LsfavIx+t
LI6iLhkFUEtr65e7M2h89C1/Cx2/Zs9XNUfoi79ELD2d9UadoMSrtxvsFRhyXIyt
R19fl1XlPKHeCj4ZzEQWg1yL1DRbCEsvZT+tS4uWXbF6ftzqyLhXgkuUCvAD3M8L
Q2HFlcWDi6UjK9J6Z8jh4/VZ+1RVhA4Hz4ZkG19MMHzAt9RCzIjadjsSeKXAFJqz
0bH1O3hTyF4m3nNXWftBhRfVmMuOhgtbwWru4yhwGi8DQs0khh9LqdgcZQnA7uMD
LfiOg1LZjFdRYRgcoK6dmjQu0SQYJo/BfeF3HHneGbpjZbU6tb4/zTZBe/mD7ggZ
+eL6+FyftBrIeaSihIQ9
=d5pa
-----END PGP SIGNATURE-----

--dc+cDN39EJAMEtIO--
