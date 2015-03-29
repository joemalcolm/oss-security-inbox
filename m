X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1730" "Sunday" "29" "March" "2015" "02:21:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150329062148.7E31113A8B6@smtpvmsrv1.mitre.org>" "42" "[oss-security] Re: CVE Request: arj: free on invalid pointer due to to buffer overflow" nil nil nil "3" "2015032906:21:48" "[oss-security] Re: CVE Request: arj: free on invalid pointer due to to buffer overflow" (number mark "        cve-assign@m Mar 29   42/1730  " thread-indent "\"[oss-security] Re: CVE Request: arj: free on invalid pointer due to to buffer overflow\"\n") "<20150328075139.GA16356@eldamar.local>" ("<20150328075139.GA16356@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9402 invoked by uid 550); 29 Mar 2015 06:22:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9381 invoked from network); 29 Mar 2015 06:22:00 -0000
In-Reply-To: <20150328075139.GA16356@eldamar.local>
Message-Id: <20150329062148.7E31113A8B6@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Sun, 29 Mar 2015 02:21:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: arj: free on invalid pointer due to to buffer overflow
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Jakub Wilk reported arj crashing on a ARJ file in [1]. Guillem Jover
> pointed out that the invalid pointer is due to a buffer overflow write
> access initiated by a value which is under user control, see [2]. He
> prepared as well a patch for this issue[3]. Could assign a CVE for
> this issue?
> 
>  [1] https://bugs.debian.org/774015
>  [2] https://bugs.debian.org/774015#11
>  [3] http://git.hadrons.org/gitweb/?p=debian/pkgs/arj.git;a=blob_plain;f=debian/patches/security-afl.patch

For purposes of determining the number of CVE IDs,
https://bugs.debian.org/774015#11 is considered a 2015 vulnerability
announcement, and https://bugs.debian.org/774015#3 is not considered a
vulnerability announcement at all.

(There was another conceivable interpretation in which part of
security-afl.patch fixed an issue discovered by Jakub Wilk in 2014,
and another part of security-afl.patch fixed a second similar issue
discovered by Guillem Jover in 2015, with two CVEs. We aren't doing
that here.)

Use CVE-2015-2782.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVF5mQAAoJEKllVAevmvmsTmEH/ReeQDQTDs+tTkIjaKluhuwV
0U2+fpmNTkKfkr2Gf8CWaQ891Topc/c+dIEMVmuIJuWMJVdYfJ3V8ifB0n4U8srO
Jd4TYqgsWP4xoPBmQtEev5bxPk00/yhnlFv6xUF8Sic2iloLbzEKG+vnBaMCuvxr
uUSu5/xOCPZhxwJAYww0FzS1ZrV4D12iDLtEobfpPq9EEdrQdgMa6n/luX7Lrowe
tDiJTT2vG8I0ITIi5E7itAFTYqcjmWgQ8pt4qqYEeMdgDCsoTEwJz8k8U+JnrjQC
CEVixkXwkY8xxvNzlQE1zArRM6869qWVzCDT2tiTcoMXcPYuDQwAG6VUBGp+XEQ=
=+r+1
-----END PGP SIGNATURE-----
