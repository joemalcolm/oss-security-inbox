X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1770" "Wednesday" "18" "January" "2017" "11:36:50" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<27e8b0704a65446bb5165cc0785caa69@imshyb01.MITRE.ORG>" "40" "[oss-security] Re: CVE request Qemu: audio: memory leakage in es1370 device" nil nil nil "1" "2017011816:36:50" "[oss-security] Re: CVE request Qemu: audio: memory leakage in es1370 device" (number mark "U       cve-assign@m Jan 18   40/1770  " thread-indent "\"[oss-security] Re: CVE request Qemu: audio: memory leakage in es1370 device\"\n") "<alpine.LFD.2.20.1701180857430.10484@wniryva>" ("<alpine.LFD.2.20.1701180857430.10484@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20175 invoked by uid 550); 18 Jan 2017 16:37:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20154 invoked from network); 18 Jan 2017 16:37:02 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1701180857430.10484@wniryva>
Message-ID: <27e8b0704a65446bb5165cc0785caa69@imshyb01.MITRE.ORG>
Date: Wed, 18 Jan 2017 11:36:50 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Qemu: audio: memory leakage in es1370 device

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] Quick Emulator(Qemu) built with the ES1370 audio device emulation support is
> vulnerable to a memory leakage issue. It could occur while doing a device
> unplug operation; Doing so repeatedly would result in leaking host memory,
> affecting other services on the host.
> 
> A privileged user inside guest could use this flaw to cause a DoS and/or
> potentially crash the Qemu process on the host.
> 
> https://lists.nongnu.org/archive/html/qemu-devel/2017-01/msg01742.html
> https://bugzilla.redhat.com/show_bug.cgi?id=1414209
> http://git.qemu.org/?p=qemu.git;a=commit;h=069eb7b2b8fc47c7cb52e5a4af23ea98d939e3da

Use CVE-2017-5526 for this (i.e., a memory consumption issue, not an
information disclosure issue).

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYf5h4AAoJEHb/MwWLVhi2em4P/1KkgoHvZ6YoAHAjNTBDT4A3
3dnuGXztJxMWal2PD92HA7CLCFxalqtIn6Xjs3I6a6FIcYjQ3SZpByTLb/8qOBPa
waoDJJ3LLgErTZnUyQhUbNrS/zNNZkYAYjx2W6/OfgukaEQviZ3RsVYG58EUPqmi
HZli1xdiqKnB7D/8Wa26XjVx2bxJK4npGK51zx8SDDqEmk99BGaJjYJhEJbBSMbl
6L5u0Epw94I+JGpFo+qoCWJZ2n8Zhn22yNCMS1fsiqWkjhHF0EPlR/h/nZrfh/Yt
CUnyQN6LBJXB/L9xQ09tnSNYpTb1AoyB5DtPZxz+uytP8TpboeexhbLA1Qv5MLH7
q2zBJwyl7HIeNqWtgnQ7PQdVCrVSRjDgWwkvAEM6QbtxD3eIIXF9REKApsHdl5om
kd90UocZmLNDZEiTZ8ATaDJnrotPyi0F+4YNEyA30F4j2eiZpVv4ndoGFOQ7UF9Y
64InaVmTmHNosBCDw1FTysuNeVPKXaZ8hc7XlL0zWAYaga/1Skr8DpTFwOVF1r6d
NjsV/8QQETHUslEm6T/Xo9TXPytchlonkc4+ZGd4eodjrEYxYnOCS7XbLG2z3+Xf
LpBv1rKtt7ybp1GdVb/DaiVZO1oEMCDfJbza6z8gDXqB6+f53vnNb8x9UulmlpT0
GQ6KSrEdRU6cR9koa1zT
=vGTC
-----END PGP SIGNATURE-----
