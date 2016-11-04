X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1983" "Friday" "4" "November" "2016" "03:06:52" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e6957bccb1334b74a39ff42d1ce6aa5d@imshyb02.MITRE.ORG>" "46" "[oss-security] Re: CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by null-deref" "^CC:" nil nil "11" "2016110407:06:52" "[oss-security] Re: CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by null-deref" (number mark "U       cve-assign@m Nov  4   46/1983  " thread-indent "\"[oss-security] Re: CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by null-deref\"\n") "<1614761186.10592613.1478186149176.JavaMail.zimbra@redhat.com>" ("<1614761186.10592613.1478186149176.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17889 invoked by uid 550); 4 Nov 2016 07:07:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17867 invoked from network); 4 Nov 2016 07:07:03 -0000
In-Reply-To: <1614761186.10592613.1478186149176.JavaMail.zimbra@redhat.com>
Message-ID: <e6957bccb1334b74a39ff42d1ce6aa5d@imshyb02.MITRE.ORG>
MIME-Version: 1.0
Content-Type: text/plain
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
Date: Fri, 4 Nov 2016 03:06:52 -0400
From: <cve-assign@mitre.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- linux kernel: crypto: GPF in lrw_crypt caused by null-deref
To: <vdronov@redhat.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> The lrw_crypt() function in 'crypto/lrw.c' in the Linux kernel
> before 4.5 allows local users to cause a system crash and a denial
> of service by the NULL pointer dereference via accept(2) system call
> for AF_ALG socket without calling setkey() first to set a cipher key.
> 
> Initial discussion:
> https://groups.google.com/forum/#!msg/syzkaller/frb2XrB5aWk/xCXzkIBcDAAJ
> 
> Red Hat Product Security Bugzilla:
> https://bugzilla.redhat.com/show_bug.cgi?id=1386286
> 
> Initial upstream patch (followed by a set of the related patches):
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=dd504589577d8e8e70f51f997ad487a4cb6c026f

Use CVE-2015-8970.

(The scope of this CVE does not include other issues related to the
https://groups.google.com/forum/#!original/syzkaller/frb2XrB5aWk/R1UNCBm_DwAJ
"However, crypto is still considerably unstable. I will post reports
that I see separately." statement.)

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYHDIjAAoJEHb/MwWLVhi2cN8P/3vw2bO6dXiF2lT052yLL7PK
wVp0lXruDV4LgpUjxUkSdYDVMaW/p/J+CFGSBhyk0hrrBqTVTolgCZPmiHK+7ry7
Ujm+qGP6dwnr2YIJ1E5Du2gIuwRncPk1EbtmRB2rtTLAZ/bkIEBl90HxBB9kC6V7
Hi3qk9xGh9TMy6UHdibR83l+5NB2/L5cHQjAyA4VX39///ZjZwpX2d6lmL2k7vTI
XLpaPZXHK+dhXLdSjGGrx5B7+7IXFkWxPCy/uW2srnE3OwycMiPzBOyOHRYf+G9Y
gZoVBzyCmWFmJEqR/TC+mSfO+EWVplKq5n9gdW7siUNeBItAPhPvlw7ldsgmHyhV
cGkrQX9eDFeU1I43uTpUOk6rDzc8Ue/J+iU1gbaD0PRlMqjBaNJ7HO1nqzKTwrR9
HhL2qmWyL6b/a8h/OH+e0jOwSyDl73Ai7l7M6BywqZFO9tw5L/UdBZmWYBwL+Cu0
491JFgsyNejgrnyFMxzwN4rbBZiYQxMIdu7TRHPkVzOM1TX5XyWMhnP72tvJ6lPw
z1ZMaTvx8CD4majrRHtraOHB5xQRncIWy9c6N+wMJr5msOueQHGofNj8wakbzZCR
gTphUq0U6ka7Oxx2UvxTmHNj1Xv5lpy8SrIkiH3nCHmwodYDuOFXTN3kMXPoZX39
jIXh42I22cKUT4rkWgbh
=LQ8Q
-----END PGP SIGNATURE-----
