Received: (qmail 3845 invoked by uid 550); 9 Apr 2026 17:48:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18186 invoked from network); 9 Apr 2026 17:40:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nesten.eu;
	s=simplycom2; t=1775756407;
	bh=ultdtFqT0d1jspIH6ZI4fs52jnESaG5YiSIq3V8qiVU=;
	h=From:Subject:Date:References:To:In-Reply-To;
	b=hui/8zYUHhHcXh4syRykU6o5eAtLf71JMrN0nHBs1CqrJqwAYTSYHZjDmM43zM7IA
	 7l1LXw7mWRqHA0r05qr137i23SpmCXzqp1GX70AC5mSGTeDR9TT0MOyU1NCMC0kkTg
	 mBPrlrtiR0BEdL9l0VDLPA2BTx/XGj8QLZZQQQLlhpcL/4mW5w5VrvJdzuEQ73lI1G
	 LHuKtf5xsQsH1YKJlacvHQJspntG4idocbcr2ewPcQjaqzK9pBRhbNYJ49vIhLq0N1
	 ti8ezkUit4faiVA72KxS7mEZIsOxT+BDq/OAPVj6iXkmn1ikl9Sa/4cuoSYJTwmiQk
	 QlKRFS9rgTQJQ==
From: =?utf-8?Q?Jens_Jarl_Nest=C3=A9n_Hansen-Nord?= <jens@nesten.eu>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_7ED04298-4EB9-44C5-8D8D-05ADDCBBEEF8"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Date: Thu, 9 Apr 2026 19:40:20 +0200
References: <D88F611E-18F2-4250-9726-5BC891A1073E@nesten.eu>
To: oss-security@lists.openwall.com
In-Reply-To: <D88F611E-18F2-4250-9726-5BC891A1073E@nesten.eu>
Message-Id: <ADFD0EF5-5E7E-41FE-AA32-59CA60314C59@nesten.eu>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
Subject: [oss-security] Re: [libc musl] - Algorithmic complexity DoS in iconv GB18030 decoder

--Apple-Mail=_7ED04298-4EB9-44C5-8D8D-05ADDCBBEEF8
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

The following CVE has been assigned to this issue:

CVE-2026-6042




> On 2 Apr 2026, at 22.27, Jens Jarl Nest=C3=A9n Hansen-Nord <jens@nesten.e=
u> wrote:
>=20
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> libc musl Security Advisory: April 2, 2026
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Description:
> The GB18030 4-byte decoder in musl libc's iconv() implementation contains=
 a gap-skipping loop that performs a full linear scan of the gb18030126 loo=
kup table (23,940 entries) on each iteration of an outer loop whose iterati=
on count is input-dependent. For 4-byte sequences whose linear index falls =
just below the dense CJK Unified Ideographs range, the outer loop executes =
approximately 20,905 times, resulting in approximately 500 million comparis=
ons per input character.=20
> Classification:
> Inefficient Algorithmic Complexity (CWE-407)
> Impact:
> This allows a remote attacker to cause denial of service via CPU exhausti=
on by sending a crafted GB18030 payload to any network service that uses mu=
sl's iconv() for character encoding conversion. Measured on musl 1.2.6 and =
1.2.5: a single 4-byte input character (bytes 0x82 0x35 0x8F 0x33) takes ap=
proximately 260ms to decode, compared to approximately 13 microseconds for =
a benign character =E2=80=94 a 19,000x slowdown. A payload of 40kB will tak=
e ~43 minutes to decode.
>=20
> Versions affected:=20
> musl 0.8.0 to 1.2.6
>=20
> Status:
> The issue has been confirmed and fixed by maintainer, Rich Felker.=20
> A CVE has been requested and is pending assignment.
>=20
> Reported by:
> Jens Jarl Nest=C3=A9n Hansen-Nord
>=20
> Upstream fix:
> Iconv-gb18030-fix.diff
>=20
> diff --git a/src/locale/iconv.c b/src/locale/iconv.c
> index 52178950..e559aa4c 100644
> --- a/src/locale/iconv.c
> +++ b/src/locale/iconv.c
> @@ -74,6 +74,10 @@ static const unsigned short gb18030[126][190] =3D {
>  #include "gb18030.h"
>  };
>=20=20
> +static const unsigned short gb18030utf[][2] =3D {
> +#include "gb18030utf.h"
> +};
> +
>  static const unsigned short big5[89][157] =3D {
>  #include "big5.h"
>  };
> @@ -224,6 +228,8 @@ static unsigned uni_to_jis(unsigned c)
>     }
>  }
>=20=20
> +#define countof(a) (sizeof (a) / sizeof *(a))
> +
>  size_t iconv(iconv_t cd, char **restrict in, size_t *restrict inb, char =
**restrict out, size_t *restrict outb)
>  {
>     size_t x=3D0;
> @@ -430,16 +436,14 @@ size_t iconv(iconv_t cd, char **restrict in, size_t=
 *restrict inb, char **restri
>                 d =3D *((unsigned char *)*in + 3);
>                 if (d-'0'>9) goto ilseq;
>                 c +=3D d-'0';
> -               c +=3D 128;
> -               for (d=3D0; d<=3Dc; ) {
> -                   k =3D 0;
> -                   for (int i=3D0; i<126; i++)
> -                       for (int j=3D0; j<190; j++)
> -                           if (gb18030[i][j]-d <=3D c-d)
> -                               k++;
> -                   d =3D c+1;
> -                   c +=3D k;
> +               for (int i=3D0; i<countof(gb18030utf); i++) {
> +                   if (c<gb18030utf[i][1]) {
> +                       c +=3D gb18030utf[i][0];
> +                       break;
> +                   }
> +                   c -=3D gb18030utf[i][1];
>                 }
> +               c +=3D 0x10000;
>                 break;
>             }
>             d -=3D 0x40;
>=20
>=20
>=20
>=20


--Apple-Mail=_7ED04298-4EB9-44C5-8D8D-05ADDCBBEEF8--
