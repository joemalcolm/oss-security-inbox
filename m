X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1445" "Thursday" "17" "November" "2016" "18:28:44" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<df2fb53117de43a4b3a7884ff078adb4@imshyb02.MITRE.ORG>" "38" "[oss-security] Re: bash - popd controlled free" nil nil nil "11" "2016111723:28:44" "[oss-security] Re: bash - popd controlled free" (number mark "U       cve-assign@m Nov 17   38/1445  " thread-indent "\"[oss-security] Re: bash - popd controlled free\"\n") "<CAEr-gPFsVAB+5KrxRigmb=TkuSPxdGAW-GZ6cdQemxmJf2CFUA@mail.gmail.com>" ("<CAEr-gPFsVAB+5KrxRigmb=TkuSPxdGAW-GZ6cdQemxmJf2CFUA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19843 invoked by uid 550); 17 Nov 2016 23:28:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19793 invoked from network); 17 Nov 2016 23:28:56 -0000
From: <cve-assign@mitre.org>
To: <fernando@null-life.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>,
	<chet.ramey@case.edu>
In-Reply-To: <CAEr-gPFsVAB+5KrxRigmb=TkuSPxdGAW-GZ6cdQemxmJf2CFUA@mail.gmail.com>
Message-ID: <df2fb53117de43a4b3a7884ff078adb4@imshyb02.MITRE.ORG>
Date: Thu, 17 Nov 2016 18:28:44 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: bash - popd controlled free

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> popd can be tricked to free a user supplied address in the following way:
> 
> $ popd +-111111

> Program received signal SIGSEGV, Segmentation fault.
> 0x0827f93a in popd_builtin (list=<optimized out>) at ./pushd.def:384
> 384          free (pushd_directory_list[i]);

> This could be used to bypass restricted shells (rsh) on some
> environments to cause use-after-free.

Use CVE-2016-9401.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYLjy/AAoJEHb/MwWLVhi2P8QQAKfY3sVxQ/vVBeiKqG+c61Jb
l+HoVjuWR+OOFjJ/ugbeaSE1dYFCoQzoVx+/b4nhP4sNiZExs+Odj/A2cGCr6oAj
1p9do/oEm7pE/n3VAhpqoLxnOflWvk/AOSLcR5kv2IyZWQxq/htBxdzuzdN3cdoz
4L98GPPCAnF8rhHrHiLRfkDCiC5HbzfPouL9LegUYjHAVwE6IvW+Ckoqx6fX6Diw
iXahNo0Rw4TR1HgGcp46AiThY98g1K2EeaAaz+bVNmnvX3jc+VTNkd2BMDj+QKJf
g39zYpP5BDsPhgvJHT65gqnbiWbHP6SnrANgxR7n8W/WKm+X7NAoPCfsYj1OQ3Wd
Q7UULEYZneqBwXmVrSD4IORTdOLEW1yL7FSfa6lKYpe33R32MTgOCu4oJNLWBzGy
KtpPioEahBbNX+QeyEH7wDPILWn/KitZR5WIn/wfas84Z8Tfdb1EEyIq6V6J4NA9
7IXDnwBWTG6Ipu0+VsiL2uvUUTjgiUZAo97YKblYyZmkVMKKG4Cg3CheciPbgVf8
2qpEsc4ROKjZ0Y+KWP7yI8IfUQxvtw/mAiVIJds7D092VeM/EIbXlqT2kWc1g7nA
47f94cLsskul95GeCyqZTidMMfTF+pu3RIJS8npWYXoCeh5qfFArTjsNgk2SqIHA
HrJRIk35K2RgXQ3g6jFT
=zUdd
-----END PGP SIGNATURE-----
