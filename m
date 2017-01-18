X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1714" "Wednesday" "18" "January" "2017" "11:35:22" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a23b9a5939ad4e50a10dcc1e65d6305e@imshyb01.MITRE.ORG>" "39" "[oss-security] Re: CVE request Qemu: audio: memory leakage in ac97 device" nil nil nil "1" "2017011816:35:22" "[oss-security] Re: CVE request Qemu: audio: memory leakage in ac97 device" (number mark "U       cve-assign@m Jan 18   39/1714  " thread-indent "\"[oss-security] Re: CVE request Qemu: audio: memory leakage in ac97 device\"\n") "<alpine.LFD.2.20.1701180043410.31247@wniryva>" ("<alpine.LFD.2.20.1701180043410.31247@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9678 invoked by uid 550); 18 Jan 2017 16:35:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9654 invoked from network); 18 Jan 2017 16:35:34 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1701180043410.31247@wniryva>
Message-ID: <a23b9a5939ad4e50a10dcc1e65d6305e@imshyb01.MITRE.ORG>
Date: Wed, 18 Jan 2017 11:35:22 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: audio: memory leakage in ac97 device

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] Quick Emulator(Qemu) built with the ac97 audio device emulation support is
> vulnerable to a memory leakage issue. It could occur while doing a device
> unplug operation; Doing so repeatedly would result in leaking host memory,
> affecting other services on the host.
> 
> A privileged user inside guest could use this flaw to cause a DoS and/or
> potentially crash the Qemu process on the host.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01740.html
> http://git.qemu.org/?p=qemu.git;a=commit;h=12351a91da97b414eec8cdb09f1d9f41e535a401

Use CVE-2017-5525 for this (i.e., a memory consumption issue, not an
information disclosure issue).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYf5h/AAoJEHb/MwWLVhi23fIP/0fuLRdLp9NZ5o5pn6LmGfEX
dENdnZplDoWUTCRSkDPVW5tNDT/Ksz+OyQ45jhmAgyGjZgMKCkg8xErRoOe9M24+
i2Er+2jeoR1TNaFmmPf2oakdEhU5IBtEj9LhJHq2CqvtNtscf2TOFi5LAzXKmaeM
MoO43kn0OX8LlWn8CuHy5LpXAXVjVl0JG1D1+koKQFjKMnSfxCGmgePZHMIwSFIO
FEYgLTC03l65YmzSrd20exYMua4fNgLq2KC9cR/29TM5YuT9flr/n13sS2oQcCs1
QIxgvlOhMh9B1JKK14aZvPpRELHRnJcDBSq4dFSPxYb1yqC5d+9VvksyzJ4sK+uX
3WuDCddLgFPHgQHAVfkkvD8hCpGEjjCJbtfLdar1NGwPgWjkBLgdgljpEToVUXOU
KqkgEl3ZwoEc/dY0bndvoRy5ttEDGjWpZpGNrmF7jSLXVFOZrJ3QEtyj8uieH2v1
ugvg2RYPb7ucAZssUe3hFOOj8mprIrTAkKoPs7HI7+r8ECsh1DXdKzo2J8awp/87
7/7X/TVbVgVgXLAf9W1HYmnIZXX68ryAvfjfb7lvTJYV6LMsv++XmIuwkYh6/O9y
OcfBV9TkMzPtoLNnh6cOFBzQphVwS5slC/cjSkT08ppubh9hOLFiu+VaWeLtcq59
dMKgDbKn6VcQhjxWKqg1
=6yzY
-----END PGP SIGNATURE-----
