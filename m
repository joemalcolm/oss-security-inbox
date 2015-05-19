X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["976" "Tuesday" "19" "May" "2015" "15:30:27" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150519193027.730486C00C9@smtpvmsrv1.mitre.org>" "29" "[oss-security] Re: CVE request: xzgrep 4.999.9beta arbitrary code execution vulnerability" nil nil nil "5" "2015051919:30:27" "[oss-security] Re: CVE request: xzgrep 4.999.9beta arbitrary code execution vulnerability" (number mark "        cve-assign@m May 19   29/976   " thread-indent "\"[oss-security] Re: CVE request: xzgrep 4.999.9beta arbitrary code execution vulnerability\"\n") "<20150518111633.GG32306@fmf.nl>" ("<20150518111633.GG32306@fmf.nl>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28170 invoked by uid 550); 19 May 2015 19:30:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28152 invoked from network); 19 May 2015 19:30:39 -0000
In-Reply-To: <20150518111633.GG32306@fmf.nl>
Message-Id: <20150519193027.730486C00C9@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 19 May 2015 15:30:27 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: xzgrep 4.999.9beta arbitrary code execution vulnerability
To: dopheide@fmf.nl

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> xzgrep 4.999.9beta processes filenames containing a semicolon
> incorrectly

> $ touch /tmp/semi\;colon
> $ xzgrep anystring /tmp/semi\;colon 
> xz: /tmp/semi: No such file or directory
> /usr/bin/xzgrep: line 199: colon: command not found

Use CVE-2015-4035.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVW469AAoJEKllVAevmvmsbzkH/A3dSVE5dorfEZvteDOFSmQx
n+gNl9t4Mzduhb2ORkNgxjGDue5ktE/G1om0h8gFae/wLVd0NvkFPhwrHdVUFmOd
F/Tu1wFoeuQjuoOxQQw1ixOFvsbzTXVmeRKatyqbECFivFpoVAK/34rZItYmf6KG
zfRMbN9jpV3eoRNuN7OQFHFe3jcb6InXB2hM/7VA/Wg0WyWx1CKlTWpJ62bsbYiO
ejVxiKUgEQh/oDd4GjYXru+RtxkgpQ638gkEcgTcRxZuDMzSPtFdzcVF3z5zN82E
lmog3UOQlIIKIcApynWWlGZ4OF4g7SIzxhVRcrTGpKMnNQbg6LLVBq7KYvq56ng=
=INqy
-----END PGP SIGNATURE-----
