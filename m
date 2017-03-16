X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2154" "Thursday" "16" "March" "2017" "10:31:17" "+0100" "Adam Maris" "amaris@redhat.com" "<1489656677.3059.3.camel@redhat.com>" "63" "Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" nil nil nil "3" "2017031609:31:17" "[oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme" (number mark "U       amaris@redha Mar 16   63/2154  " thread-indent "\"Re: [oss-security] CVE request for unchecked size argument in malloc() in CHICKEN Scheme\"\n") "<20170315224749.GG759@scully.more-magic.net>" ("<20170315224749.GG759@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7223 invoked by uid 550); 16 Mar 2017 09:31:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7202 invoked from network); 16 Mar 2017 09:31:36 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com 50C0EC04B30E
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx07.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=amaris@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com 50C0EC04B30E
Message-ID: <1489656677.3059.3.camel@redhat.com>
From: Adam Maris <amaris@redhat.com>
To: oss-security@lists.openwall.com
Cc: peter@more-magic.net
Date: Thu, 16 Mar 2017 10:31:17 +0100
In-Reply-To: <20170315224749.GG759@scully.more-magic.net>
References: <20170315224749.GG759@scully.more-magic.net>
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-nYelhvTMIizKelTGmzxA"
Mime-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.31]); Thu, 16 Mar 2017 09:31:25 +0000 (UTC)
Subject: Re: [oss-security] CVE request for unchecked size argument in
 malloc() in CHICKEN Scheme

--=-nYelhvTMIizKelTGmzxA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2017-03-15 at 23:47 +0100, Peter Bex wrote:
> Hello all,
>=20
> I'd like to request a CVE for an unchecked malloc() argument in
> CHICKEN Scheme's SRFI-4 vector constructors, when allocating the
> vector in unmanaged memory.=C2=A0=C2=A0Due to the missing range check, th=
is
> could result in negative or too small size allocations, which would
> result in a crash or a buffer overrun, depending on the size.
>=20
> This issue affects all current releases of CHICKEN Scheme, including
> the latest release, 4.12.0.
>=20
> The official announcement was made here:
> http://lists.gnu.org/archive/html/chicken-announce/2017-03/msg00000.h
> tml
>=20
>=C2=A0

Hi Peter,

oss-security mailing is no longer a place for requesting CVEs. Please,
request CVE from MITRE via=C2=A0https://cveform.mitre.org/=C2=A0or also pos=
sibly
from DWF project via=C2=A0http://iwantacve.org/

Thanks!

Best Regards,

--=20
Adam Mari=C5=A1, Red Hat Product Security
1CCD 3446 0529 81E3 86AF =C2=A02D4C 4869 76E7 BEF0 6BC2=C2=A0=

--=-nYelhvTMIizKelTGmzxA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCgAGBQJYyltmAAoJEEhpdue+8GvCBXUQAI/GL9wHkXUakfwPM7eLVDqO
MtwAQrZFxXNJCVIbL9jezCrmkO39QBS2ctjSk3RAgXl0OcKkTOexqm7t5ucYYuY8
wcK8kTmnCnqIEjIQO61cjlukiA9gNxXoxmSiZ2VBLxqNhWqIS9f2WzpgTJ81oW3q
rK5ZKjeqsEB5FbPILloAyysBiNNkNoPNrVW5aJX2ktbgqHI06mzpLf7jHXTESR7Z
QRHoeOV/pCP2nGackjfg6PGnFnz6wHm72FuB3mUjmltZ0/VOblq14qlHShyWhfOA
kIksTvXtcUU9ZPcu/cJdEHWH224bnRIEe3eJCP4Fj/1JBdK2CO1iW7KwMv8X6MBT
dKM4RMJByBaHf/7k7xvhgKJrOr60FTco4Jx59DmSkfT7KdrcqKDrJnecqdSZ/C6r
kKul1WTpFdXAm0lLiXazvxaybWb/7+d1CjvtGJQ4WYdFzO0Eai0UEUrizdESe4t4
e1PVx7V/Z+ENCV/mTeEy7GsBcKgRrMgM4AucS5GFyCuRJB4zjLH0tixQHjySpMdY
IRMqh+zKlW7prhz7nphkCuL4ZaWmDDQmDnNc3ilBfYjK4IItqt+H+YuxFwD4Tn85
dmeN47/VgevJ5vnv0eijKOu9waRGbgsqOd9ZnoJHOq7qPgGwZjVb6U/OwUqKRm6P
40Z5Q3R4uiSW8n823ehA
=JZ7H
-----END PGP SIGNATURE-----

--=-nYelhvTMIizKelTGmzxA--

