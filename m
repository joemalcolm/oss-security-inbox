X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4173" "Monday" "11" "May" "2020" "12:21:35" "+0200" "Matthias Gerstner" "mgerstner@suse.de" "<20200511102135.GA12619@f195.suse.de>" "100" "[oss-security] oddjob: mkhomedir: CVE-2020-10737: race condition when copying skeleton tree" nil nil nil "5" "2020051110:21:35" "[oss-security] oddjob: mkhomedir: CVE-2020-10737: race condition when copying skeleton tree" (number mark "U       mgerstner@su May 11  100/4173  " thread-indent "\"[oss-security] oddjob: mkhomedir: CVE-2020-10737: race condition when copying skeleton tree\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] oddjob: mkhomedir: CVE-2020-10737: race condition when copying skeleton tree" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5633 invoked by uid 550); 11 May 2020 10:21:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5608 invoked from network); 11 May 2020 10:21:47 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Mon, 11 May 2020 12:21:35 +0200
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <20200511102135.GA12619@f195.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bg08WKrSYDhXBjb5"
Content-Disposition: inline
Subject: [oss-security] oddjob: mkhomedir: CVE-2020-10737: race condition when copying
 skeleton tree

--bg08WKrSYDhXBjb5
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

during a review [1] of oddjob [2] for inclusion in openSUSE Tumbleweed
I found a security issue in an accompanying utility called "mkhomedir".

Oddjob is a kind of D-Bus meta service to simplify the implementation of
specific D-Bus services. It allows to use simple command line utilities
to supply a D-Bus interface while all the D-Bus implementation details
are kept within the oddjob daemon and its configuration files.

A simple implementation of such a utility is shipped as part of oddjob
and is called "mkhomedir". It allows to create a user's home directory
if it doesn't exist yet. This logic can either be triggered via D-Bus or
via a simple pam_oddjob_mkhomedir PAM module. The D-Bus interface is by
default only accessible to the root user. If the PAM module is
configured then the logic can also be triggered by regular users
logging in, if they don't have an existing home directory yet.

This "mkhomedir" utility contains a race condition. The problem is found
in the copying of /etc/skel to a newly created home directory. The home
directory itself is created as a first step and ownership of it is
passed to the respective user. In a second step the skel directory is
recursively copied into the new home directory.

If the target user has the ability to run code during this operation
then he can setup a symlink attack. The following symlink, for example:

```
user $ ln -s /etc /home/user/bin
```

when created at the right time will cause the mkhomedir service to give
ownership of the /etc directory to the unpriviliged user, should
/etc/skel/bin exist. The reason is found in the call to `chown()` in
`oddjob_selinux_mkdir()` called in mkhomedir.c:157.

A potential attacker could try and login in parallel e.g. via SSH to win
this race condition. The probability to actually exploit this is low,
however, because once the home directory is created, there is no way to
repeat the attack. Chances could be higher in specialized setups where
new users without home directories can be repeatedly created without
special authentication requirements.

There can also be other symlink attack vectors when more deeply nested
/etc/skel directory structures are involved.

I reported this privately to upstream on 2020-04-24. The issue was
handled by the Red Hat Security team. They assigned CVE-2020-10737
for this issue. The upstream fix [3] for the issue is based on a
suggested patch that I included in my initial report to upstream. A
new minor release 0.34.5 has been created by upstream that includes this
fix. Coordinated disclosure of the issue took place around 2020-05-08.

[1]: https://bugzilla.suse.com/show_bug.cgi?id=3D1170459
[2]: https://pagure.io/oddjob
[3]: https://pagure.io/oddjob/c/10b8aaa1564b723a005b53acc069df71313f4cac?br=
anch=3Dmaster

Best regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Dipl.-Wirtsch.-Inf. (FH), Security Engineer
https://www.suse.com/security
Phone: +49 911 740 53 290
GPG Key ID: 0x14C405C971923553

SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Felix Imend=F6rffer


--bg08WKrSYDhXBjb5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAl65Jy4ACgkQFMQFyXGS
NVNFBQ//XsWUUSK6JIrB3xhbtpt4dhlHQ8FhxQwjEugVd+JsOrBorlBzxTTOqqHU
zlc8K+7dq3nw2w3UP0W6wtQg8LBeXdIu6ByomngKOx7/03FtVGYAKVu8HHP4GuzI
q8sutKzobkRsAkrFuBJMoqW0Z0Q4aY5krU5V3GdmQweji2mwE98gz0sQwKq+Cua2
gf7VJqyDY1oqJIa5riYFP9SMaSInkJ+3igVV6InGsTRmgh+ckomdoCnyuto6U4WI
EVaUjyNlfrY3G5HuxN9T4SgtuQpqKHvAojZr9uuRMJkWAe1hPwRk9lPMs8Kdk0tq
3YRjDNAMaO8kb0kOEL/gqSvsDv/zJZVOAlIS06zCRCOLcr6EjZa95/WFMleZTns6
n1V0rFkmfHkDmuSI81bmg512TLX/ODtVQggEpOulLpo7KonQlyQbVhtZgmZnW/ca
6CRvrlO7GRiMBwMoDZtUyRkQIg6o9SgQ+jxgBLCU/qTiNiBY/FtpeKQod4SnIjpn
H0ieUPkYlMQiFnnBJyPNPdDNeGYwEYX3B9W3ODYj0ocNc7YF6MUGgZpxCihunhMo
Bwrs8RmPgt0wXJtE1E5RFkyCmzlvePz4AQvXujYTVeh1h86aiusDTYxfly40NQty
pzMhRAyNp0Pul+NrnokQa8HWWn8xeXg8I5XmoZlxtumTb/lZJfw=
=r75h
-----END PGP SIGNATURE-----

--bg08WKrSYDhXBjb5--
