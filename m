Received: (qmail 16000 invoked by uid 550); 2 Apr 2026 23:07:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5573 invoked from network); 2 Apr 2026 20:27:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nesten.eu;
	s=simplycom2; t=1775161646;
	bh=VEgqGzkvfsO20v/cJVmHvV7yaKj79DPsl9tm8IKWN+4=;
	h=From:Subject:Date:To;
	b=Iu7yqgJEaE/zZwRtrRXTTKU43LSzQOrYOi0m+QaBJM5NEfPkODp1q/KLesIejsGt/
	 hK6kdqi0706fz8GnXzWRHCJqkuttZOcEq6tFLkRnsfh3VDUhvaOIszUdQL9ufRpNFI
	 ONr3R+UbCpVZujL/fssssoMVD4pOSz5s13+PDOaDOg7MngfR+Gqa6QYBSlOb5F7/78
	 80+8X6Jh3ZNw5SwksZ4x0DK/NBR1YDWwbsR2xCzY5ldWHKj0xtnPyU2VZi3VuUO2IT
	 30tyZvHvSYCekpuyNeDaStok1W/b4xGpqDHN216cqRf2JDOiLRIdv/cAVb71Wa7pRC
	 gBSRwMHnscgZQ==
From: =?utf-8?Q?Jens_Jarl_Nest=C3=A9n_Hansen-Nord?= <jens@nesten.eu>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_1FA1C9D0-74AA-48BD-92E8-8AD5E72D2797"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Message-Id: <D88F611E-18F2-4250-9726-5BC891A1073E@nesten.eu>
Date: Thu, 2 Apr 2026 22:27:38 +0200
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3826.400.131.1.6)
Subject: [oss-security] [libc musl] - Algorithmic complexity DoS in iconv GB18030 decoder

--Apple-Mail=_1FA1C9D0-74AA-48BD-92E8-8AD5E72D2797
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
libc musl Security Advisory: April 2, 2026
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Description:
The GB18030 4-byte decoder in musl libc's iconv() implementation contains a=
 gap-skipping loop that performs a full linear scan of the gb18030126 looku=
p table (23,940 entries) on each iteration of an outer loop whose iteration=
 count is input-dependent. For 4-byte sequences whose linear index falls ju=
st below the dense CJK Unified Ideographs range, the outer loop executes ap=
proximately 20,905 times, resulting in approximately 500 million comparison=
s per input character.=20
Classification:
Inefficient Algorithmic Complexity (CWE-407)
Impact:
This allows a remote attacker to cause denial of service via CPU exhaustion=
 by sending a crafted GB18030 payload to any network service that uses musl=
's iconv() for character encoding conversion. Measured on musl 1.2.6 and 1.=
2.5: a single 4-byte input character (bytes 0x82 0x35 0x8F 0x33) takes appr=
oximately 260ms to decode, compared to approximately 13 microseconds for a =
benign character =E2=80=94 a 19,000x slowdown. A payload of 40kB will take =
~43 minutes to decode.

Versions affected:=20
musl 0.8.0 to 1.2.6

Status:
The issue has been confirmed and fixed by maintainer, Rich Felker.=20
A CVE has been requested and is pending assignment.

Reported by:
Jens Jarl Nest=C3=A9n Hansen-Nord

Upstream fix:
Iconv-gb18030-fix.diff

diff --git a/src/locale/iconv.c b/src/locale/iconv.c
index 52178950..e559aa4c 100644
--- a/src/locale/iconv.c
+++ b/src/locale/iconv.c
@@ -74,6 +74,10 @@ static const unsigned short gb18030[126][190] =3D {
 #include "gb18030.h"
 };
=20
+static const unsigned short gb18030utf[][2] =3D {
+#include "gb18030utf.h"
+};
+
 static const unsigned short big5[89][157] =3D {
 #include "big5.h"
 };
@@ -224,6 +228,8 @@ static unsigned uni_to_jis(unsigned c)
    }
 }
=20
+#define countof(a) (sizeof (a) / sizeof *(a))
+
 size_t iconv(iconv_t cd, char **restrict in, size_t *restrict inb, char **=
restrict out, size_t *restrict outb)
 {
    size_t x=3D0;
@@ -430,16 +436,14 @@ size_t iconv(iconv_t cd, char **restrict in, size_t *=
restrict inb, char **restri
                d =3D *((unsigned char *)*in + 3);
                if (d-'0'>9) goto ilseq;
                c +=3D d-'0';
-               c +=3D 128;
-               for (d=3D0; d<=3Dc; ) {
-                   k =3D 0;
-                   for (int i=3D0; i<126; i++)
-                       for (int j=3D0; j<190; j++)
-                           if (gb18030[i][j]-d <=3D c-d)
-                               k++;
-                   d =3D c+1;
-                   c +=3D k;
+               for (int i=3D0; i<countof(gb18030utf); i++) {
+                   if (c<gb18030utf[i][1]) {
+                       c +=3D gb18030utf[i][0];
+                       break;
+                   }
+                   c -=3D gb18030utf[i][1];
                }
+               c +=3D 0x10000;
                break;
            }
            d -=3D 0x40;





--Apple-Mail=_1FA1C9D0-74AA-48BD-92E8-8AD5E72D2797--
