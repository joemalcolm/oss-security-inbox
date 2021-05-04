X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5700" "Tuesday" "4" "May" "2021" "15:39:05" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "154" "[oss-security] Exim 4.94.2 - security update released" nil nil nil "5" nil nil (number mark "U       hs@nodmarc.s May  4  154/5700  " thread-indent "\"[oss-security] Exim 4.94.2 - security update released\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Exim 4.94.2 - security update released" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32429 invoked by uid 550); 4 May 2021 13:39:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32394 invoked from network); 4 May 2021 13:39:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=nodmarc.schlittermann.de; s=2020-06-19; h=Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:In-Reply-To:References:Resent-Cc:Resent-To;
	bh=4rEmEDQ7GWe/yGTv0SmqvTDRIe7XtXavorKXi48yYVY=; b=Z03jwcEgKCj/vQ08hvX3uJQ8Tz
	ZxjV+rHknMKPDbcDjvtxilYvyk9E80Paz9p19HsRpu3qc2YAeaeR78HM013KR0HDg3/azQR0AR6c9
	H4DexWiJDzJefUT3vEhrDDkh0JkjiUtpFH9jre42UoHyrSUx4CtMve7RUdFCxhHRm/ElitVIa2COq
	LKILaCcKF0XTkLtkxmgRQnLlRZNlpSVmbAqsQvDEv5cyEgkgkC6xBkM2CEpydsYDJjvsLA+G+73qF
	L3WeDvKdi5C2IhFL8Kzj+FJzyce+NekurrQRw3HA+TtVm+M99MYL8QK5ED/wA+Hl1HV1yKR1LMiZO
	hwHFOMbQ==;
Date: Tue, 4 May 2021 15:39:05 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
To: oss-security <oss-security@lists.openwall.com>
Message-ID: <20210504133905.GY30431@jumper.schlittermann.de>
Mail-Followup-To: oss-security <oss-security@lists.openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="USQ0BwiCE5W4XvtQ"
Content-Disposition: inline
Organization: schlittermann -- internet & unix support
X-Face: =y#&-VlCH8uT|8#-#JE_^c<:+qPbYxFD`}8`m)xjyA$93tpwm-vKsa(V,0?906(2VIVNQbU
 QzD%zhE+~-AA?\v-v.HY6]ebO4_$vY`l|||Q!EZT5*Xx/>Fj{8E_a.;;#<4S$>&T%n5()2Yt=R5FSC
 y:Na&@T{Rf`kPq^'ffPFA%`mP~>%-LU$d*]]{-%>j={&MsMND.">]H)&#AoSI~(U8Jk;v*;,Pf+l85
 X?H&`
X-Telegram: @HeikoSchlittermann
X-Threema: T5RPWMSS
X-Phone: +49.172.7909055
X-GPG-Fingerprint: E5CA 331D 44AB 8E4C 806F  DBEE 2610 1B62 F693 76CE
X-GPG-Key-ID: F69376CE
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: [oss-security] Exim 4.94.2 - security update released

--USQ0BwiCE5W4XvtQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Dear Exim-Users

Abstract
--------

Several exploitable vulnerabilities in Exim were reported to us and are
fixed.

We have prepared a security release, tagged as "exim-4.94.2".

This release contains all changes on the exim-4.94+fixes branch plus
security fixes.

You should update your Exim instances as soon as possible. (See below
for short upgrade notes.)


Distro users
------------

Several distros will provide updated packages: Just do the update.
If the update contains a version change from <4.94 to 4.94.2, you may
want to read the upgrade notes below.

Self-built Exim
---------------

Fetch the exim-4.94.2 from the known repositories, build and install
the fixed version. If you need to upgrade from versions <4.94 to 4.94.2,
you may want to read the upgrade notes below.


Schedule
--------

2021-05-04 13:30 UTC:   Publish the release on the public
                        repos/website/etc

Repositories
------------

The sources are available:

        tarballs: https://ftp.exim.org/pub/exim/exim4/
                  (the mirrors will follow with some delay)
        source:   https://git.exim.org/exim.git
                  tag: exim-4.94.2
                  branch: exim-4.94.2+fixes

The +fixes branch contains fixes for an issue, that we experienced
occasionally with outgoing SMTP (using DANE, TLS SNI and an unusual
certificate setup on the remote server. See
https://lists.exim.org/lurker/message/20210503.163324.f7021753.en.html)

In case you're running exim-4.92.3 currently and you do not see any
option in updating this to 4.94.2, you *can* try using the branch
exim-4.92.3+fixes. This branch contains the minimal set of backported
security patches, but isn't officially supported by the Exim project
and didn't get the same testing as the official release.

Details
-------

The current Exim versions (and likely older versions too) suffer from
several exploitable vulnerabilities. These vulnerabilities were reported
by Qualys via security@exim.org back in October 2020.

Due to several internal reasons it took more time than usual for the Exim
development team to work on these reported issues in a timely manner.

We explicitly thank Qualys for reporting *and* for providing patches for
most of the reported vulnerabilities.

The details about the vulnerabilities *will* be published in the near
future (on http://exim.org/static/doc/security/), but not today. This
should give you the chance to update your systems.

Another source of information *will* be on the reporter's site:
https://www.qualys.com/2021/05/04/21nails/21nails.txt

For further reference a list of related CVEs:

    Local vulnerabilities
    - CVE-2020-28007: Link attack in Exim's log directory
    - CVE-2020-28008: Assorted attacks in Exim's spool directory
    - CVE-2020-28014: Arbitrary PID file creation
    - CVE-2020-28011: Heap buffer overflow in queue_run()
    - CVE-2020-28010: Heap out-of-bounds write in main()
    - CVE-2020-28013: Heap buffer overflow in parse_fix_phrase()
    - CVE-2020-28016: Heap out-of-bounds write in parse_fix_phrase()
    - CVE-2020-28015: New-line injection into spool header file (local)
    - CVE-2020-28012: Missing close-on-exec flag for privileged pipe
    - CVE-2020-28009: Integer overflow in get_stdinput()
    Remote vulnerabilities
    - CVE-2020-28017: Integer overflow in receive_add_recipient()
    - CVE-2020-28020: Integer overflow in receive_msg()
    - CVE-2020-28023: Out-of-bounds read in smtp_setup_msg()
    - CVE-2020-28021: New-line injection into spool header file (remote)
    - CVE-2020-28022: Heap out-of-bounds read and write in extract_option()
    - CVE-2020-28026: Line truncation and injection in spool_read_header()
    - CVE-2020-28019: Failure to reset function pointer after BDAT error
    - CVE-2020-28024: Heap buffer underflow in smtp_ungetc()
    - CVE-2020-28018: Use-after-free in tls-openssl.c
    - CVE-2020-28025: Heap out-of-bounds read in pdkim_finish_bodyhash()


Upgrade notes
-------------

In case you need to upgrade from a version <4.94, you may encounter
issues with *tainted data*. This is a security measure which we
introduced with 4.94.

Your configuration needs to be reworked.

Alternatively you can use the exim-4.94.2+taintwarn branch. This branch
tracks exim-4.94.2+fixes and adds a new main config option (the option
is deprecated already today and will be ignored in a future release of
Exim): "allow_insecure_tainted_data". This option allows you to turn the
taint errors into warnings. (Debian is set to include this "taintwarn"
patch in its Exim 4.94.2 release).

Thank you for using Exim.
Thanks to Qualys for reporting the issues.

    Best regards from Dresden/Germany
    Viele Gr=C3=BC=C3=9Fe aus Dresden
    Heiko Schlittermann
--
 SCHLITTERMANN.de ---------------------------- internet & unix support -
 Heiko Schlittermann, Dipl.-Ing. (TU) - {fon,fax}: +49.351.802998{1,3} -
 gnupg encrypted messages are welcome --------------- key ID: F69376CE -

--USQ0BwiCE5W4XvtQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAmCRTnkACgkQr0zGdqa2
wUJ3mAf+IQ8WOdScYeUZTVANBFIMWxW1EX4NSfeBMVD2wSRb910ALA+M+0Am7+FC
S+YiemmASfNyOb8QQBYTWVAerGC9/0sygaxyaSaI3+wqNEJFXhcbQamDaOPVoazZ
ZdDYUWE8RyxNHNHDeC3a66wjNdXaLzc9JawF/8pXpWRdevAu/BYj0vaXIdqxPwCK
m2TdUrforioTSto9F7alFhTD5EAfgQYiG1TCe9hB7UZgYM3amp2gFVGkEyTWBdf/
z3SHAG2q0ChCJDm79/At+G8HQUN5MsReLcuqGSuc4foKu1vuyUMvL3XRFnMAk0RP
ZDVM2upbBTmT7elczEI3MP6RMCxfwA==
=d8sH
-----END PGP SIGNATURE-----

--USQ0BwiCE5W4XvtQ--
