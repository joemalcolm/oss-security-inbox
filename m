X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1234" "Friday" "23" "June" "2017" "22:53:56" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<CAHmME9pFsfuGgvY6pkAZPoJYXUzabqxiWbo54Qo7LufhJB-J1w@mail.gmail.com>" "31" "[oss-security] Remotely exploitable crash in dhcpcd" nil nil nil "6" "2017062320:53:56" "[oss-security] Remotely exploitable crash in dhcpcd" (number mark "U       Jason@zx2c4. Jun 23   31/1234  " thread-indent "\"[oss-security] Remotely exploitable crash in dhcpcd\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1900 invoked by uid 550); 23 Jun 2017 20:54:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1867 invoked from network); 23 Jun 2017 20:54:11 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
	:from:date:message-id:subject:to:cc:content-type; s=mail; bh=ql7
	W+i7Ksrc6fHHoCOgjewjB/m4=; b=mRBKyRYDv7PhX1Zz8P6qR0LRtwwJVkiUHBQ
	GVrnsloxn5Fo+9LmtNUo5yAUbEIS+f2bdvbfefENQkiTsCtyc2t6lzK0UsRGw/UE
	7AMYHz1k56y7j8JeZvAaNO0CiTkXSyAd+Q93zbFO1abwvIw7PciDtzqQUZ+FF2Gj
	3vHRUUSMR7fXt68X52ihn376BYtBhuU9BYw8ZkjdjYxznzECDYu4ferb9hOklY//
	WlPvkKBl1mGYTfpUO/iSwtz0nUAsDggcb8Wp/nBtFxlFpp2yY0hkPamta6Bhge2+
	f5j8HGQu5F7xl8yGby6GHLTDcymKp93/0zUR6ltLz0EYf9PLOwQ==
X-Gm-Message-State: AKS2vOwxlcV2M0i5kwt4mUWnBaOeo4RbqYlLxl8G0q5LcDHsLu8OVH/c
	iJukahTZHex9Zlmyp3IBrJ8O5zFsyA==
X-Received: by 10.202.182.86 with SMTP id g83mr1310106oif.4.1498251238056;
 Fri, 23 Jun 2017 13:53:58 -0700 (PDT)
MIME-Version: 1.0
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Fri, 23 Jun 2017 22:53:56 +0200
X-Gmail-Original-Message-ID: <CAHmME9pFsfuGgvY6pkAZPoJYXUzabqxiWbo54Qo7LufhJB-J1w@mail.gmail.com>
Message-ID: <CAHmME9pFsfuGgvY6pkAZPoJYXUzabqxiWbo54Qo7LufhJB-J1w@mail.gmail.com>
To: dhcpcd-discuss@marples.name, Roy Marples <roy@marples.name>
Cc: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/mixed; boundary="001a113cf188d451940552a6cc5a"
Subject: [oss-security] Remotely exploitable crash in dhcpcd

--001a113cf188d451940552a6cc5a
Content-Type: text/plain; charset="UTF-8"

Hi Roy,

I found that by sending the same exact DHCP response to two different
DHCP requests on different interfaces, I was able to segfault dhcpcd.
The attached patch fixes the problem, though you might want to
investigate a bit further precisely why this is necessary.

Regards,
Jason

--001a113cf188d451940552a6cc5a
Content-Type: text/x-patch; charset="US-ASCII"; name="dhcpcd-7.0.0-crash-fix.patch"
Content-Disposition: attachment; filename="dhcpcd-7.0.0-crash-fix.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j4ac300d0

ZGlmZiAtcnUgZGhjcGNkLTcuMC4wLXJjMS9zcmMvaXB2NC5jIGRoY3BjZC03
LjAuMC1yYzEtZml4ZWQvc3JjL2lwdjQuYwotLS0gZGhjcGNkLTcuMC4wLXJj
MS9zcmMvaXB2NC5jCTIwMTctMDUtMTAgMTI6MjQ6MjguMDAwMDAwMDAwICsw
MjAwCisrKyBkaGNwY2QtNy4wLjAtcmMxLWZpeGVkL3NyYy9pcHY0LmMJMjAx
Ny0wNi0yMyAyMjozNzo1NS45Mjk4NTc5MDggKzAyMDAKQEAgLTI1NSw3ICsy
NTUsNyBAQAogCWludCBuOwogCiAJc3RhdGUgPSBEX0NTVEFURShpZnApOwot
CWlmIChzdGF0ZSA9PSBOVUxMIHx8IHN0YXRlLT5zdGF0ZSAhPSBESFNfQk9V
TkQpCisJaWYgKHN0YXRlID09IE5VTEwgfHwgc3RhdGUtPnN0YXRlICE9IERI
U19CT1VORCB8fCBzdGF0ZS0+YWRkciA9PSBOVUxMKQogCQlyZXR1cm4gMDsK
IAogCVRBSUxRX0lOSVQoJm5yb3V0ZXMpOwo=

--001a113cf188d451940552a6cc5a--
