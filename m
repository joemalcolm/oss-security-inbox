X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3433" "Tuesday" "30" "July" "2019" "13:37:15" "+0200" "Peter van Dijk" "peter.van.dijk@powerdns.com" "<cdfea5779d02a81804aba92e092d8207f395c8d6.camel@powerdns.com>" "88" "[oss-security] PowerDNS Security Advisory 2019-06: Denial of service via crafted zone records" nil nil nil "7" "2019073011:37:15" "[oss-security] PowerDNS Security Advisory 2019-06: Denial of service via crafted zone records" (number mark "U       peter.van.di Jul 30   88/3433  " thread-indent "\"[oss-security] PowerDNS Security Advisory 2019-06: Denial of service via crafted zone records\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] PowerDNS Security Advisory 2019-06: Denial of service via crafted zone records" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28251 invoked by uid 550); 30 Jul 2019 15:00:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3072 invoked from network); 30 Jul 2019 11:37:27 -0000
Message-ID: <cdfea5779d02a81804aba92e092d8207f395c8d6.camel@powerdns.com>
From: Peter van Dijk <peter.van.dijk@powerdns.com>
To: oss-security@lists.openwall.com
Date: Tue, 30 Jul 2019 13:37:15 +0200
Organization: PowerDNS.COM B.V.
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-fgVnXqjr5WpydUW29JGN"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Subject: [oss-security] PowerDNS Security Advisory 2019-06: Denial of service via crafted
 zone records

--=-fgVnXqjr5WpydUW29JGN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

please find below the text of PowerDNS Security Advisory 2019-06.
Updated packages (that only contain a Postgres schema change) will be
released later. Just upgrading at that time will not fix the
vulnerability - applying the schema change is mandatory.

> PowerDNS Security Advisory 2019-06: Denial of service via crafted zone re=
cords
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
>=20
> -  CVE: CVE-2019-10203
> -  Date: July 30th, 2019
> -  Affects: PowerDNS Authoritative 4.0.0 and up, when using the gpgsql (P=
ostgreSQL) backend
> -  Not affected: 4.2.0, 4.1.11, 4.0.9
> -  Severity: Low
> -  Impact: Denial of Service
> -  Exploit: This problem can be triggered via crafted records
> -  Risk of system compromise: No
> -  Solution: Update the database schema
> -  Workaround: run the process inside the guardian or inside a supervisor
>=20
> An issue has been found in PowerDNS Authoritative Server allowing an
> authorized user to cause the server to exit by inserting a crafted record=
 in a
> MASTER type zone under their control. The issue is due to the fact that t=
he
> Authoritative Server will exit when it tries to store the notified serial=
 in
> the PostgreSQL database, if this serial cannot be represented in 31 bits.
>=20
> This issue has been assigned CVE-2019-10203.
>=20
> PowerDNS Authoritative up to and including 4.1.10 is affected. Please note
> that at the time of writing, PowerDNS Authoritative 3.4 and below are no
> longer supported, as described in
> https://doc.powerdns.com/authoritative/appendices/EOL.html.
>=20
> To fix the issue, run the following command against your PostgreSQL pdns
> database: `ALTER TABLE domains ALTER notified_serial TYPE bigint USING CA=
SE
> WHEN notified_serial >=3D 0 THEN notified_serial::bigint END;`. No softwa=
re
> changes are required.
>=20
> We would like to thank Klaus Darilion for finding and subsequently report=
ing
> this issue!

Kind regards,
--=20
Peter van Dijk
PowerDNS.COM BV - https://www.powerdns.com/

--=-fgVnXqjr5WpydUW29JGN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iQJQBAABCgA6FiEE+64DI4IcdwalyhUb3PUT+n7tGfMFAl1AK+scHHBldGVyLnZh
bi5kaWprQHBvd2VyZG5zLmNvbQAKCRDc9RP6fu0Z8+/3EACQGlTzJ1phZnnCcf6T
p7dln7IQ5WxBGTzRli+Vprqf7awuXYnobC7kcaRdwn19j1fHRDDFi8nd/fAXSR22
gwx12PWxo9FZjzUw91mOnWY/1Yf4zuy0CCgcgtmWbc+orMdMCJiRYk91VM4eQeuC
xnoW1y9wIOt6/63vrCzYtuzVgn7qOLePNUS9gyaBaPRNnIKvSVSItfwt+ochofcw
5YqhANDOOeLtkBII+IyUueAD9pGemiCgvVN0H+KmclnDS42665vCNJS9KxGclqY7
U4pvVDzHqjqvY4FAygVK1lzSAVfyKo1Gq7XUR7VHbR6vAQee61AO06sJejoSS3bT
PXFgBpkQCXA3LxK0rAknaoMGTjzY0+wW8rTHepY5kCVvDxblbWocQeKOEZ4/OdO2
JSHlod0fmRzlIZRk0VVRFgYAsXKPg8m0B0cl5Ilglvxj4xfRRSFSIJrny95MMclK
BpdTf9BIf/a/QxFqG4qxBguX7zY+K5dPWkImX7LOge+SbsavQeXpMiG/UhRNoGXW
rqLNBHZLbnJyy4yTr2xeAdQ/y6zlr9MUtpiFsJeonTFBrzsts16njLMdBXvxbBp8
xEhxx3wrQIayK7tfmgPidAJF+bhhYSmI8DHVKR1YNA/UHWIbtWSqHU69biPjTtlW
HJzdRqAVPGp+cLUkr+G8naN9ng==
=wmTa
-----END PGP SIGNATURE-----

--=-fgVnXqjr5WpydUW29JGN--

