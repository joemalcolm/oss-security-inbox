X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1573" "Monday" "19" "December" "2016" "11:34:56" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<e53a33b2e1e14b4ebe7f85cec7f4f631@imshyb02.MITRE.ORG>" "40" "[oss-security] Re: Xen Security Advisory 204 - x86: Mishandling of SYSCALL singlestep during emulation" nil nil nil "12" "2016121916:34:56" "[oss-security] Re: Xen Security Advisory 204 - x86: Mishandling of SYSCALL singlestep during emulation" (number mark "U       cve-assign@m Dec 19   40/1573  " thread-indent "\"[oss-security] Re: Xen Security Advisory 204 - x86: Mishandling of SYSCALL singlestep during emulation\"\n") "<E1cJ00d-0004mG-QD@xenbits.xenproject.org>" ("<E1cJ00d-0004mG-QD@xenbits.xenproject.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30481 invoked by uid 550); 19 Dec 2016 16:35:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30443 invoked from network); 19 Dec 2016 16:35:11 -0000
From: <cve-assign@mitre.org>
To: <security@xen.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <E1cJ00d-0004mG-QD@xenbits.xenproject.org>
Message-ID: <e53a33b2e1e14b4ebe7f85cec7f4f631@imshyb02.MITRE.ORG>
Date: Mon, 19 Dec 2016 11:34:56 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: Xen Security Advisory 204 - x86: Mishandling of SYSCALL singlestep during emulation

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>                     Xen Security Advisory XSA-204

> Xen wrongly raised the exception based on the flags at the start of
> the instruction.

> Guest userspace which can invoke the instruction emulator can use this
> flaw to escalate its privilege to that of the guest kernel.

> A 64-bit guest kernel which uses an IST for #DB handling will most likely
> mitigate the issue, but will have a single unexpected #DB exception
> frame to deal with. This in practice means that Linux is not
> vulnerable.

Use CVE-2016-10013.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYWAvbAAoJEHb/MwWLVhi2rVQP/jbDygsBkkatt/w7GbxvpCjr
IoSo+krkGda29Dgi4pMAcP8zG3KgRso4tJ48z+Jn30+EpO3zgQSLcCfEaB6Vfbcp
zZ1wrer8KTvm5ZcV01vncEO/FVvyXX2KZ6h7XuVakOXCRE1+YEPuvdqdc6UyH7aD
mctdIVrR6jDzpsLDT6uZM6ahcCwRp6VDmxz0r4195RygOWqkmsVPmM9Q6F/VyG4A
KxBAUFIHUYHdu9Hy/s6U3+M8ugzvpeKKkkBuUcDrFvKu/gfeyFisDlG7GgUtFvp0
DRKHzxrE20UQjU7VJBXpfvkSaorWp9IlhsnrXyIJNyTxb1N3UtkYrDJpxXRlar7y
Jj/cVdPT7apIWDIRmRxLWqWrvB2dlx+j3NP3z+wETaKBrLNKj8Aq2h/013VR4CZm
QMvNQEYhKr+/AdGiVTDeUBsyqAlpp1aXhrvka4Bz1Ws9BAfTdjivGuOn6ab+Zm2U
foecT2t7ktS927yD4uAtE/dFqNrGHORFt4Kr6A+akqYMwxmuaItpctsqMTecB09p
vXFAnYk4leKzqd5QkDmqqIilTDAhdN9M0K0SJUebiJgRmhxqU0fhrA4I5jzofggh
yoKuStjvt0mM3+UQngv56ohPpCjvMxsbPwl8nN8yhwJUx/ncmpWRm74+wece5SuD
agwy+ENLZv0fk0rv5BKv
=KJsh
-----END PGP SIGNATURE-----
