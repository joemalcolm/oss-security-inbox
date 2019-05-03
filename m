X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["451" "Friday" "3" "May" "2019" "17:42:18" "+0200" "Hanno =?iso-8859-1?Q?B=F6ck?=" "hanno@hboeck.de" nil "18" nil nil nil nil "5" nil nil (number mark "U       hanno@hboeck May  3   18/451   " thread-indent "\"[oss-security] XSS via EXIF tag in Serendipity blog\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] XSS via EXIF tag in Serendipity blog" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25947 invoked by uid 550); 3 May 2019 15:42:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25913 invoked from network); 3 May 2019 15:42:30 -0000
Date: Fri, 3 May 2019 17:42:18 +0200
From: Hanno =?iso-8859-1?q?B=F6ck?= <hanno@hboeck.de>
To: oss-security@lists.openwall.com
Message-ID: <20190503174218.79d22fbc@computer>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] XSS via EXIF tag in Serendipity blog

Hi,

I reported some XSS issues via EXIF tags in the Serendipity blog
software:
https://github.com/s9y/Serendipity/issues/598

These have now been fixed:
https://blog.s9y.org/archives/282-Serendipity-2.1.5-released.html

This is backend XSS and only relevant if you have multiple authors or
upload potentially untrusted image files.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
