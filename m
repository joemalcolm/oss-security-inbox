X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1552" "Wednesday" "25" "January" "2017" "03:43:30" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<a5d4cb3c0ee94490ae2c932b076f42a6@imshyb01.MITRE.ORG>" "37" "[oss-security] Re: CVE request Virglrenderer: host memory leakage when creating decode context" nil nil nil "1" "2017012508:43:30" "[oss-security] Re: CVE request Virglrenderer: host memory leakage when creating decode context" (number mark "U       cve-assign@m Jan 25   37/1552  " thread-indent "\"[oss-security] Re: CVE request Virglrenderer: host memory leakage when creating decode context\"\n") "<alpine.LFD.2.20.1701241256280.7971@wniryva>" ("<alpine.LFD.2.20.1701241256280.7971@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13371 invoked by uid 550); 25 Jan 2017 08:43:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13312 invoked from network); 25 Jan 2017 08:43:42 -0000
From: <cve-assign@mitre.org>
To: <ppandit@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<liqiang6-s@360.cn>
In-Reply-To: <alpine.LFD.2.20.1701241256280.7971@wniryva>
Message-ID: <a5d4cb3c0ee94490ae2c932b076f42a6@imshyb01.MITRE.ORG>
Date: Wed, 25 Jan 2017 03:43:30 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE request Virglrenderer: host memory leakage when creating decode context

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Virgil 3d project, used by Quick Emulator(Qemu) to implement 3D GPU support
> for the virtio GPU, is vulnerable to memory leakage issue. It could occur when
> a guest tries to create decode context via 'VIRTIO_GPU_CMD_CTX_CREATE'
> command.
> 
> A guest user/process could use this flaw to leak host memory resulting in DoS.
> 
> https://cgit.freedesktop.org/virglrenderer/commit/?id=747a293ff6055203e529f083896b823e22523fe7
> https://bugzilla.redhat.com/show_bug.cgi?id=1415944

Use CVE-2016-10163.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYiGPEAAoJEHb/MwWLVhi2YPwP/1lOP3BYfiiEYcQIfnmTdDII
r9Vh3OY9OQGN1gpUepaTGOgINwO5Pue9JI7mQaBEf7aV2eWnQjmqs+HDHhqAT2RA
vPo+LeRqDKwe8kMRF/cxW0HYHo3lw8mIE6dXiwQNYz2R0vGmNMfLwpx1F5oPzqFP
YDcBFqhonAVcHZwAtfnqqD0RmFLCv9kn6MEH0J5Pjzc3aE7nrefynPyjtoIfKWb3
PuahXTdR458uq8GodQemjoamesqEFBCdWim3ycTQrNF6Z5TzBTtzdjuWAhUJ8fN0
GRrDHpVtSSiJcUqlZziz3W0tv1LPUtYutcG1bluxOrCHEATJSrvpkRaP70hp0E94
sOcYQ7Gs+uBWgYOKkurG0msq+/Hn60KwNr4omciA2LD3X3ehPl3BcN1YvRBxTt6r
c4wNfEpZAZasz1A6GRnhDBmtTg/KXf30y+/FY5WQ6X6QEkd9elSD0reNAyL+y/Ul
kx4djZxCGd0mBkp95n90QOZEwXvlxj9wagqGJaz9DF93Y5vBrTop33gRW6pszbid
JqPf1HuGb0I/azGvKLSZNQzHzTJ57QESGJhjiNTk9rdc0sw4notWd4qTZ4P/tt73
1dYooaV31dFKqe1LUm6iaLCG0/FU5xYOHTFe+MeUZDxeo332Cw431+JNgyv7ZuDy
o7wPhJVeTbxHkNmYV/tm
=ak6W
-----END PGP SIGNATURE-----
