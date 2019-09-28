X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2699" "Sunday" "29" "September" "2019" "01:20:24" "+0200" "Heiko Schlittermann" "hs@nodmarc.schlittermann.de" nil "82" nil "^Date:" nil nil "9" nil nil (number mark "        hs@nodmarc.s Sep 29   82/2699  " thread-indent "\"Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer overflow" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7237 invoked by uid 550); 28 Sep 2019 23:20:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7219 invoked from network); 28 Sep 2019 23:20:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=schlittermann.de; s=dd201504; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:To:From:Date:Cc:Content-Description:Content-ID:
	Content-Transfer-Encoding:Resent-Cc:Resent-To;
	bh=DfFblB+QOScwyFTI7+zhnU6VEHEyJFQZVwWJJzwB2FM=; b=H1uMfVNYWun1iiO+O/L69DLOXr
	YuHZhIDPHARYvgB9blKPXiHsPals+ld24pgBGFAYrAXFF60zV1boP5Bkihd7tpKsErRyZJuPEPvuA
	dTmkboWsadsqyrlSxfNJk9lPCPa7Y+9F0UTOunU5h0OFKUCY35Abbv96O1XtyV589I0I=;
Message-ID: <20190928232024.GK16334@jumper.schlittermann.de>
Mail-Followup-To: oss-security@lists.openwall.com, exim-users@exim.org,
	exim-maintainers@exim.org, exim-announce@exim.org
References: <20190928003428.GI16334@jumper.schlittermann.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0ywUhQCikZ2Y3PNw"
Content-Disposition: inline
In-Reply-To: <20190928003428.GI16334@jumper.schlittermann.de>
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
Date: Sun, 29 Sep 2019 01:20:24 +0200
From: Heiko Schlittermann <hs@nodmarc.schlittermann.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Exim CVE-2019-16928 RCE using a heap-based buffer
 overflow
To: oss-security@lists.openwall.com, exim-users@exim.org,
	exim-maintainers@exim.org, exim-announce@exim.org

--0ywUhQCikZ2Y3PNw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

** Exim 4.92.3 released (security release) **

CVE ID:     CVE-2019-16928
Date:       2019-09-27 (CVE assigned)
Version(s): from 4.92 up to and including 4.92.2
Reporter:   QAX-A-TEAM <areuu@outlook.com>
Reference:  https://bugs.exim.org/show_bug.cgi?id=2449
Issue:      Heap-based buffer overflow in string_vformat,
            remote code execution seems to be possible

Conditions to be vulnerable
===========================

All versions from (and including) 4.92 up to (and including) 4.92.2 are
vulnerable.

Details
=======

There is a heap-based buffer overflow in string_vformat (string.c).
The currently known exploit uses a extraordinary long EHLO string to
crash the Exim process that is receiving the message. While at this
mode of operation Exim already dropped its privileges, other paths to
reach the vulnerable code may exist.

Mitigation
==========

There is - beside updating the server - no known mitigation.

Fix
===

Download and build the fixed version 4.92.3

    Tarballs: https://ftp.exim.org/pub/exim/exim4/
    Git:      https://github.com/Exim/exim.git (mirror)
                git://git.exim.org/exim.git
              - tag    exim-4.92.3
              - branch exim-4.92.3+fixes

The tagged commit is the officially released version. The +fixes branch
isn't officially maintained, but contains the security fix *and* useful
fixes.

The tarballs, the Git tag, and the Git commits are signed with my GPG
key (same as I used to sign this mail.)

If you can't install the above versions, ask your package maintainer for
a version containing the backported fix. On request and depending on our
resources we will support you in backporting the fix.  (Please note,
the Exim project officially doesn't support versions prior the current
stable version.)

Timeline
=========

- 2019-09-27    Report as Bug 2499
- 2019-09-28    Announcement to exim-maintainers, oss-security
- 2019-09-28    Release 4.92.3, Release-Announcements to
                exim-{announce,users,maintainers}, oss-security

--0ywUhQCikZ2Y3PNw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEE0L/WueylaUpvFJ3Or0zGdqa2wUIFAl2P6rcACgkQr0zGdqa2
wUL1DQf9HM4pvPtoWBLFN/WMwuO72WPPeBl1FyHi3a1z/ZplT5ZvMbRSFAi3xhrs
4lhibAsYn6kaC4Cn82gbcxDoOcURFDKTRROpXWTV6QH0aDAV4KWamHjpfUE8IPMw
TcRDuQcd9UsZ3W/+zznBS5j6ojlN9YdXWUpKHuNFLUoV7t2WgP45gk4aKNhMGLal
WeR53eu2T8zLdP57PyJlewYcduBxDvLyxq0BofOl62iyKOvKhoYwXbPfHj5OE+7p
cJECsO1Ozujpg0gtkr1lYrWe4jipJOxBDCBmnpeocVhlx0uM7k4TxQRydLD9J2mf
l9YvRuAjKulaCQPJ2/nifr+bGHFbEg==
=wTZT
-----END PGP SIGNATURE-----

--0ywUhQCikZ2Y3PNw--
