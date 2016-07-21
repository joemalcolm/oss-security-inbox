X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1502" "Thursday" "21" "July" "2016" "10:09:20" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160721140920.5C8D06C49AA@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: mupdf library use after free" nil nil nil "7" "2016072114:09:20" "[oss-security] Re: mupdf library use after free" (number mark "U       cve-assign@m Jul 21   42/1502  " thread-indent "\"[oss-security] Re: mupdf library use after free\"\n") "<CAFkTriJ_Gdghr4XZY3VbdtsmWN46ZMmPo9TX9c-CPebpwVhz2A@mail.gmail.com>" ("<CAFkTriJ_Gdghr4XZY3VbdtsmWN46ZMmPo9TX9c-CPebpwVhz2A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7574 invoked by uid 550); 21 Jul 2016 14:09:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7505 invoked from network); 21 Jul 2016 14:09:32 -0000
From: cve-assign@mitre.org
To: marco.gra@gmail.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <CAFkTriJ_Gdghr4XZY3VbdtsmWN46ZMmPo9TX9c-CPebpwVhz2A@mail.gmail.com>
Message-Id: <20160721140920.5C8D06C49AA@smtpvmsrv1.mitre.org>
Date: Thu, 21 Jul 2016 10:09:20 -0400 (EDT)
Subject: [oss-security] Re: mupdf library use after free

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> I disclosed a UAF in MuPDF, you can find the reproducer and report here:
> 
> http://bugs.ghostscript.com/show_bug.cgi?id=696941
> 
> mupdf ./mupdf_debug/build/debug/mupdf-x11 mucrash1.pdf
> 
> AddressSanitizer: heap-use-after-free ...
> READ of size 4
> 
> #0 0x6b0a53 in pdf_load_xref
> ... source/pdf/pdf-xref.c

Use CVE-2016-6265.

As far as we can tell, this is not yet referenced on the
http://git.ghostscript.com/?p=mupdf.git;a=shortlog page.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXkNc6AAoJEHb/MwWLVhi24isQALZ8CLX1M0+Hva0aICremI3a
yyL7gQLxK/+Pda3uq20K1J/phQWGU4PUB8Xda1JHxJu6iAdxXvbXrarHtwdvUx5n
1axHjaEsFwVPh3jivU2Dy3mQuRomcSEYS8AojdAhNNC84z+DBEXroRi0ugS84AkN
IwRQTY3hAu9kV3Vq5wh2kKPBfUPSIq4X4l0+pulwahLzEZtPs2fUUiV+ft5T3UtU
lJuHz9n1nhiY0ScItic6fPu34U2iFT8CGSp/0Tigu8gIMkHkcoPIVK7cq1HhVMI4
gGgn0fLNa/6qldR1XLeRIK4rFWg5i5b5JxuPEVk4zQ3trFNUZT9PvMKoKJwNeTj7
s6k0yCOLBs0izrVBN66eD+zlgLywuaGzqfszuA7I+dUCB2bfeJV0/PEZS6hV6gSP
Csnimw7qPAf7c5Zw9NVtqsu3ojRq2GtWat/YoG31+z5lOlokfnkxRw6EheDjYmdM
wsS+aU211em9oO3pFgXtn6Rv/ipaloQFG2RwBEXdZb1hTuNkkoWWHdV9dn4RVCCC
VPX21ROUVd85KDd45yEliZOtqA65GdDoNmvzKOaYXZSsLbXI2ywKZ5GYWvguQfe7
TIfrkm4wqzWjVwWS93GpoJNpwc13gu+LJ3YfRND8U4klJPCzF/BxG/jqRk/4RaQu
ioc3SAefDUtrPooRl3g4
=4FHP
-----END PGP SIGNATURE-----
