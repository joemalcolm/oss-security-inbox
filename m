X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2535" "Monday" "23" "March" "2015" "22:42:08" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<5510EB20.7020405@redhat.com>" "59" "[oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences" nil nil nil "3" "2015032404:42:08" "[oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences" (number mark "        kseifried@re Mar 23   59/2535  " thread-indent "\"[oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9939 invoked by uid 550); 24 Mar 2015 04:42:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9911 invoked from network); 24 Mar 2015 04:42:21 -0000
Message-ID: <5510EB20.7020405@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="3VgSlJLwKQrXfnaLtB85lsbbPgIbVdxEc"
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Mon, 23 Mar 2015 22:42:08 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2014-8166 cups: code execution via unescape ANSI escape sequences
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
        security@apple.com

--3VgSlJLwKQrXfnaLtB85lsbbPgIbVdxEc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

So this one is pretty hard to cause exploitation without heavy social
engineering/etc.

https://bugzilla.redhat.com/show_bug.cgi?id=3D1084577

It was reported that ANSI escape sequences could be added to printer
names in CUPS.  Becaue CUPS has a browsing feature that, when enabled,
allows remote hosts to announce shared printers, a malicious host or
user could send a specially-crafted UDP packet to a CUPS server
announcing an arbitrary printer name that includes ANSI escape
sequences.  Since the CUPS daemon does not remove these characters, a
user on the targeted system could query the printer list (using 'lpstat
-a', for example).  If this were done in a terminal that supported the
ANSI escape sequences (like a terminal with support for color), then
code execution could be possible as the terminal would interpret the
ANSI escape sequences contained in the printer name.

A patch for this is available at
https://bugzilla.redhat.com/attachment.cgi?id=3D916761

My apologies, this issue has been sitting way to long and is certainly
not worth a long embargo.

I can't wait till I'm done cleaning house of all these embargoed issues
that shouldn't be embargoed. I strongly urge other vendors to do the same.

--=20
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


--3VgSlJLwKQrXfnaLtB85lsbbPgIbVdxEc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQIcBAEBAgAGBQJVEOsgAAoJEBYNRVNeJnmTuz0P/AuiWMG5fCcxvq95oSA1l7XZ
+1jvf6eMCGwmbrPdyQiR2n3AcX6D5ThAqf9pe7E0g+cX5UqzoV6Loluh7em2Zspf
Ev7PUCcQ+SqeiEgwcd4+nya36E3/fBVdGi66rDQn60AjpBn6C5KFI/B9sQhN+zWr
DP9/st9W9wXu77NUiGC+SCzoaMge21MBbWWldSIdXffh5MH4ZQHrG2xcNfH0mMau
oStNsSAIEoQ4h38VWpHIzexDOCETYXNCXe4Lqv0uu62+xPPskr2pGYSHtrVZiVi/
R8aAZ8FMUfe3PVYiUXjVZ4IcXwke7L41TGNe6Vi2RC4zcp5hSoXfs6dyRWhxUwd4
Y1ElIfGBwuiR5DBAdD/I56t6m/KSZk/HavoYGr++mdxmRaN+HEmTgN0meGnlnUhU
jw5wSLcMlPF6IpaNDo0ucrhIfCDzWrxquSPg1jmW2zvl6OBQSNdi+k4+oWhV0ixd
E8NXPAdz+uCR4NHx0sd5+xEN+bMjYMhfIMtsnDXZfv7mgiPvJUVSgmumhooAejjp
eu/++BNacYq79V/Bm7R99AXa9p2gAACt2UvERbXRtq6kidAU9jwIlKIJlCnShv7R
394e8hxBbhPXswYCeYfesCZJCcDyZuVcfO3fbIPzR/0rDLUa4CA92fHa3QAEcSNS
c7W2gMAOo3foyc4zspaO
=XC3M
-----END PGP SIGNATURE-----

--3VgSlJLwKQrXfnaLtB85lsbbPgIbVdxEc--
