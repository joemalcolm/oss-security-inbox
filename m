X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1612" "Tuesday" "7" "February" "2017" "01:56:16" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<cfbff1a9c0f2415692d5eb80113b00bf@imshyb02.MITRE.ORG>" "38" "[oss-security] Re: CVE request Qemu: usb: integer overflow in emulated_apdu_from_guest" nil nil nil "2" "2017020706:56:16" "[oss-security] Re: CVE request Qemu: usb: integer overflow in emulated_apdu_from_guest" (number mark "U       cve-assign@m Feb  7   38/1612  " thread-indent "\"[oss-security] Re: CVE request Qemu: usb: integer overflow in emulated_apdu_from_guest\"\n") "<alpine.LFD.2.20.1702070101020.4225@wniryva>" ("<alpine.LFD.2.20.1702070101020.4225@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30332 invoked by uid 550); 7 Feb 2017 06:56:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30308 invoked from network); 7 Feb 2017 06:56:28 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1702070101020.4225@wniryva>
Message-ID: <cfbff1a9c0f2415692d5eb80113b00bf@imshyb02.MITRE.ORG>
Date: Tue, 7 Feb 2017 01:56:16 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: usb: integer overflow in emulated_apdu_from_guest

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Quick Emulator(Qemu) built with the CCID Card device emulator support is
> vulnerable to an integer overflow flaw. It could occur while passing message
> via command/responses packets to and from the host.
> 
> A privileged user inside guest could use this flaw to crash the Qemu process
> on host resulting in DoS.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-02/msg01075.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1419699
> http://git.qemu-project.org/?p=qemu.git;a=commit;h=c7dfbf322595ded4e70b626bf83158a9f3807c6a

Use CVE-2017-5898.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYmW4LAAoJEHb/MwWLVhi2SCUP/j/Oy+K8VNyjXK+10PXCEw5E
GYZn60Ni+f7hbyH6qfj8/Mut1hfNUzDaWasJtqYggHYfywRYzDNSpXhmAReNWgY7
0gWMkcPArwUX/JntGKt24jFJV+VA7QPxXFIVrXhk8bTuvT4o9rzpWg5K12u7WLb6
gJpQVqLm2hVNZCHNbD8Bp5oBkE24X2uYK4FKuHfDr525/zVXci1jjPrqFd476wMy
1gZuDMPoCNmctslDMNOZp+BxSicHK69r8Wg0Y8y0A/N0zOZqNGwqXTfeuj+Fc1cG
jqYa+YaWVyaVzH85rtlZmg5Y0+oyUHenpnm5JgdKqHq6gGMYMd2+q8YQISFBBBSm
Wwkh3859/qreQUGwxa8WWhb866FJL+U37gY6ZuyWzRwwOyKnHwiwDojgimXn7JZU
k5kz1AC/I0Kno9tdunv1sfr3ZrepD765unrL69LoimZxpd0I+0gDFoUVsWNIb9gK
z1Mhbn6o/SF1b8Vp1onBSlti58/94eMj8YRlryBb9PIv/zIpNomaqVwAEqgKxR56
LQD+Xg8yQ5tYtCiGHO/dpzX2b7Zh2T9mo6X5O2Rx9w3qa42P43LwNkzlz4FT75yO
zduqoMugISuJsrL2H53vXcHKL6ZRAknBRgWK9gMAJ1NwF7fJedQzQPtAUXUE9Tx6
fpL9MSGOs1Br827mKz3Q
=JS1o
-----END PGP SIGNATURE-----
