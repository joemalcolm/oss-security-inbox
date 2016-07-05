X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1548" "Tuesday" "5" "July" "2016" "16:32:05" "+0200" "Christoph Biedl" "debian.axhn@manchmal.in-ulm.de" "<1467728683@msgid.manchmal.in-ulm.de>" "43" "[oss-security] CVE-2016-6160: Segmentation fault in tcprewrite (tcpreplay)" nil nil nil "7" "2016070514:32:05" "[oss-security] CVE-2016-6160: Segmentation fault in tcprewrite (tcpreplay)" (number mark "U       debian.axhn@ Jul  5   43/1548  " thread-indent "\"[oss-security] CVE-2016-6160: Segmentation fault in tcprewrite (tcpreplay)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32679 invoked by uid 550); 5 Jul 2016 14:39:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29784 invoked from network); 5 Jul 2016 14:32:17 -0000
Date: Tue, 5 Jul 2016 16:32:05 +0200
From: Christoph Biedl <debian.axhn@manchmal.in-ulm.de>
To: oss-security@lists.openwall.com
Message-ID: <1467728683@msgid.manchmal.in-ulm.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PZWZlfPHthN0RAqA"
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2016-6160: Segmentation fault in tcprewrite (tcpreplay)

--PZWZlfPHthN0RAqA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

as already reported in Debian BTS#829350, the tcprewrite program, part
of the tcpreplay suite, does not check the size of the frames it
processes. Huge frames may trigger a segmentation fault, and they
occur on interfaces with an MTU of or close to 65536. For example, the
loopback interface lo of the Linux kernel has such a value.

This has been assigned CVE-2016-6160.

The Debian BTS also contains a fix.

    Christoph

[1] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=829350

--PZWZlfPHthN0RAqA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCgAGBQJXe8TlAAoJEMQsWOtZFJL9V5gP/0JgTbGoTT472utxhQ1VvKBf
LGCBt3NCBvsAoZy90xatfFGFmwGyU7R00uoLACxHX3snIDZJH193oW+/2w/8aDlK
ozbJamyylgR/5Uuh4eTfyW1UZDrj/osy7KRpxHizYIZms2BwrTQKckbIG08Hnm46
F+sotymxuloXL8qKhsV1u6US2l7LlWlG/BA9vR1Wy73p8bXg20LLAw2tSQeDvytN
OUz/rFfi2zD2JZzeolYNE6F2HUUdHBWJ51kAo7GVM/xJldVhoe8SpUm860HqFYeo
gT1CiDcovuHWawYw7/xNSM6h5BqjoP4jeljbQ1crjuNbaMwqkLUKak3xcbvvJ3Vx
b8Q9TsEJTdtMgGkCATO90ZAl9N3ld3AXdYAr/CNXnu4LHVsuuWUz/uo+s4Yey6ai
M2dJ5mzbta0u+553D/NszlZclNFBzxMIwodQZatzy9Qg+mpZB1PSc2X2Le35I0Db
mPKmiqPVFEa8Jd4AY6QUrzZaxVm4Lcv0wLzG+6NKSE+fLKQJWNG2MQXPXnUS1keO
gIcIZN08y4HwfcNCO6eRxBeLM4oWAyuGsv+42d8BPReR59LMeatVuAW5SdcuY2Wi
oT4cIa8QZhdV8mHkfB2wvpRsiPi5XM5ooGoUTV6+k/WTdx9KBZ5W5PJR++xxFypk
v7U083O8M+EgzJ4uVnLw
=mUsi
-----END PGP SIGNATURE-----

--PZWZlfPHthN0RAqA--
