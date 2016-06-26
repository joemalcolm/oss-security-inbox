X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1595" "Sunday" "26" "June" "2016" "05:43:57" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160626094357.1CE236C0717@smtpvmsrv1.mitre.org>" "36" "[oss-security] Re: CVE Request: Linux kernel HID: hiddev buffer overflows" nil nil nil "6" "2016062609:43:57" "[oss-security] Re: CVE Request: Linux kernel HID: hiddev buffer overflows" (number mark "U       cve-assign@m Jun 26   36/1595  " thread-indent "\"[oss-security] Re: CVE Request: Linux kernel HID: hiddev buffer overflows\"\n") "<576F61B4.1020505@plzdonthack.me>" ("<576F61B4.1020505@plzdonthack.me>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6046 invoked by uid 550); 26 Jun 2016 09:44:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6016 invoked from network); 26 Jun 2016 09:44:09 -0000
From: cve-assign@mitre.org
To: sbauer@plzdonthack.me
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <576F61B4.1020505@plzdonthack.me>
Message-Id: <20160626094357.1CE236C0717@smtpvmsrv1.mitre.org>
Date: Sun, 26 Jun 2016 05:43:57 -0400 (EDT)
Subject: [oss-security] Re: CVE Request: Linux kernel HID: hiddev buffer overflows

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> There is a small buffer overflow in the hiddev driver code which seems to have come due
> to a re-factor of the driver in 2008-ish.
> 
> If a user-land process calls the hiddev ioctl with the HIDIOCGUSAGES or HIDIOCSUSAGES command,
> and passes a report id of HID_REPORT_ID_UNKNOWN it bypasses a series of bounds checks. Later in
> the code the attacker can loop on some controlled value and overwrite
> 
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=93a2001bdfd5376c3dc2158653034c20392d15c5

Use CVE-2016-5829.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXb6MwAAoJEHb/MwWLVhi2J5wP/0/8awKnFGpO7tqUTuEQvdfW
+MpW320Q2/GvJD+vzr/QqwOTMfuGa4CTkJi1OeZPdET+zxrxdUJd2e6JGmtvWKBM
4aXeecyvqQYvfs51xvLYYqk6oCPCnlii1QhBgm9AI2lwttfjD9y/h/ek9Fj14CJo
6nNKcZJJub5yUI5YmeXWC+Wu6AfcIndoJoEq1+gsLE63pdLwEOF6iIgCWyj6PDey
oQ87iIkUozv9CjamuMUlw+xB4zfXlOw/ewbMrngV0ii6Hgcau28qBdxxDko9g4nV
SIau0Nhh3LCAfPdo18VAYNs+2wlUI5BGcZ4EDPv97LmVcaRUuFZTLWsZYP8coFvt
VQLXphUOZCIEKmo2aIPYVCQ6QG+1ghjfnfH4AJdpDoYSIq5aEzh2q+UnVRIrOGsy
5NqtJCEgHA+Lv7M1IK9DNUfDEBTA1vOfeT3wCHPtqp+iuZ67J6vG428t/utTV+zc
ymLZ5I1YmAIvpeFDWkYuv/spI67HQ740ySFt2xbw9dF3JZUYqLGU9iN6vOd83Pe4
YxCT99JdejDQeJBYcSR4JdcLCnWMquI44ocNMZmM42LyS9XEUr996ebE6sKhcDNR
HSrAr7bPdeUq4CpmB+cl8/BMXIKK/e/0CgGo26vgmkm7qm2aNUIMHOvD0cjRGB4p
9QjX4Our+cZXGF6a2gIv
=Vb9B
-----END PGP SIGNATURE-----
