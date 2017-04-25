X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2437" "Tuesday" "25" "April" "2017" "11:20:12" "+0200" "Andrej Nemec" "anemec@redhat.com" "<b3892063-b093-4353-88e3-49cbec582422@redhat.com>" "67" "[oss-security] CVE-2017-7477 kernel: net: Heap overflow in skb_to_sgvec in macsec.c" nil nil nil "4" "2017042509:20:12" "[oss-security] CVE-2017-7477 kernel: net: Heap overflow in skb_to_sgvec in macsec.c" (number mark "U       anemec@redha Apr 25   67/2437  " thread-indent "\"[oss-security] CVE-2017-7477 kernel: net: Heap overflow in skb_to_sgvec in macsec.c\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3315 invoked by uid 550); 25 Apr 2017 09:20:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3297 invoked from network); 25 Apr 2017 09:20:26 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mx1.redhat.com CD18F19D24B
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; dmarc=none (p=none dis=none) header.from=redhat.com
Authentication-Results: ext-mx05.extmail.prod.ext.phx2.redhat.com; spf=pass smtp.mailfrom=anemec@redhat.com
DKIM-Filter: OpenDKIM Filter v2.11.0 mx1.redhat.com CD18F19D24B
To: oss-security@lists.openwall.com
From: Andrej Nemec <anemec@redhat.com>
Message-ID: <b3892063-b093-4353-88e3-49cbec582422@redhat.com>
Date: Tue, 25 Apr 2017 11:20:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="fo75roP2U4eVLNmoDmiC2dE0pnoNtS47b"
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Tue, 25 Apr 2017 09:20:14 +0000 (UTC)
Subject: [oss-security] CVE-2017-7477 kernel: net: Heap overflow in skb_to_sgvec in macsec.c

--fo75roP2U4eVLNmoDmiC2dE0pnoNtS47b
Content-Type: multipart/mixed; boundary="gNdp7xg0sxjOpfIcUo5KT4FgGwSjidUjb";
 protected-headers="v1"
From: Andrej Nemec <anemec@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <b3892063-b093-4353-88e3-49cbec582422@redhat.com>
Subject: CVE-2017-7477 kernel: net: Heap overflow in skb_to_sgvec in macsec.c

--gNdp7xg0sxjOpfIcUo5KT4FgGwSjidUjb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello folks,

Red Hat has been notified about a possible heap overflow vulnerability
in kernel networking, specifically in the macsec.c module. We have
assigned a CVE-2017-7477 for this issue. Corresponding commit which
fixes this issue can be found at [1]. There is no preliminary impact
available as of now.

Short description:

A heap overflow vulnerability was found in the Linux kernel in macsec
module. Specifying MAX_SKB_FRAGS + 1 and using NETIF_F_FRAGLIST which
calls skb_to_sgvec will overflow the heap.

This is now available as a Red Hat bugzilla at [2].

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=3D=
4d6fa57b4dab0d77f4d8e9d9c73d1e63f6fe8fee
[2] https://bugzilla.redhat.com/show_bug.cgi?id=3D1445207

Best Regards,

--=20
Andrej Nemec, Red Hat Product Security
3701 3214 E472 A9C3 EFBE 8A63 8904 44A1 D57B 6DDA



--gNdp7xg0sxjOpfIcUo5KT4FgGwSjidUjb--

--fo75roP2U4eVLNmoDmiC2dE0pnoNtS47b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCgAGBQJY/xTMAAoJEIkERKHVe23aRwkP/jkpvnkFOeIFh3gPoCLTuXw/
iZqM/preNzpzrsOvEEYdCg3lqgWXDiwoceb3YMOcl6hyh2YlfJZV3wKS9FytErxA
uwNGXckd6gK4Ryu6DepyqAkYobKcTOxCiyS6IJWIo5OrslTNogEF9dc76DTmsJt2
flYwFBF1PEaxPqzIrT4sb3FXKELNvb0dpYcf4kGLPnni/qwVTJ/uHbhH29v0sgOl
7/qxoPNcddJGwTnTb4zs4H4Lnbi7RiENGymlZz9mABDEeQ3/uNFX4/AYXm9uO7Dy
mQkQHbLqYPkicGqDIpJijsuTZUg5p3F43Fzh3rmUM/zcjGIJ6ActgPuFCkU5ySaS
lux7SJUWfE5kYGJay9QVuSxOoumSVbaVbyXMlqwdwNciOn3sdp0H1KtsuNezJz0J
LyA0dlVseOBWOYr5r47MaX0sJ8YJVVNxGIcAZwzdNUzRBAlZd87F/0mWJdGAKI4G
7S76p+Wgn0ChQxiIQ1obRUDJYLRBIugB2EXKSzmixIEBjEHpl3TnLsh5FOypWtus
eGz/9m7uVX+T3GdUPGFW29wd30x3XytUggIqpaYOy2RVnQMt8DdDHGJAtyfF8QNs
de4oDDe/aYt/MZFTOre+1EKcPNGw3LoHQfCux9nJmrP7c/saXw3pDG7kUGOhnTXq
hKV89dxx679pcqhU6Jrw
=Lfr/
-----END PGP SIGNATURE-----

--fo75roP2U4eVLNmoDmiC2dE0pnoNtS47b--
