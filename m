X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["575" "Sunday" "1" "January" "2017" "16:41:25" "+0100" "Agostino Sarubbo" "ago@gentoo.org" "<1557139.J15zvKlvWX@arcadia>" "21" "[oss-security] libtiff: multilple crashes" nil nil nil "1" "2017010115:41:25" "[oss-security] libtiff: multilple crashes" (number mark "U       ago@gentoo.o Jan  1   21/575   " thread-indent "\"[oss-security] libtiff: multilple crashes\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8136 invoked by uid 550); 1 Jan 2017 15:39:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8101 invoked from network); 1 Jan 2017 15:39:58 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 01 Jan 2017 16:41:25 +0100
Message-ID: <1557139.J15zvKlvWX@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.1.15-gentoo-r1; KDE/4.14.24; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] libtiff: multilple crashes

Happy year to everyone.

I discovered several crashes in libtiff. To avoid dozens of posts, I tried =
to=20
group them based on the type of issue.
Summary:

1) The majority of the issues were reproducible by upstream and they were=20
fixed
2) Few issues were reproducible by upstream and they were NOT fixed
3) Some issues were NOT reproducible by upstream.

So for now I will not post the issues described at the point N=C2=B03 and t=
ry in=20
the near future to make upstream able to reproduce them.

Will follow the details.

--=20
Agostino Sarubbo
Gentoo Linux Developer
