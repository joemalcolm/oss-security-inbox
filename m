X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1298" "Thursday" "25" "June" "2015" "06:42:41" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150625104241.D22D76C063C@smtpvmsrv1.mitre.org>" "30" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" nil nil nil "6" "2015062510:42:41" "[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function" (number mark "        cve-assign@m Jun 25   30/1298  " thread-indent "\"[oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function\"\n") "<20150625095432.GH18896@dhcp-25-225.brq.redhat.com>" ("<20150625095432.GH18896@dhcp-25-225.brq.redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10099 invoked by uid 550); 25 Jun 2015 10:42:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10080 invoked from network); 25 Jun 2015 10:42:53 -0000
In-Reply-To: <20150625095432.GH18896@dhcp-25-225.brq.redhat.com>
Message-Id: <20150625104241.D22D76C063C@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 25 Jun 2015 06:42:41 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request -- Linux kernel - kvm: x86: out-of-bounds memory access in pit_ioport_read function
To: pmatouse@redhat.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Doesn't this fall under different code base?

No. There would be separate CVE IDs if it were a conceptually
identical vulnerability in different code found in different
codebases. We do not assign multiple CVE IDs to the same vulnerability
in the same piece of code, regardless of how or why that code has been
copied into different projects. This is a case with reuse of an entire
substantial function: the function name is the same, the code
structure is the same, names of variables and structure members are
largely the same, etc. The reuse extends to pit_ioport_write as well.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVi9qMAAoJEKllVAevmvmsNHcIAKMyN14lL05mYXYPwReV8H7q
Y9zAOEmowL7/x+vREAFOivCnqMa3QZdA+tx6lKwVJxh72fPUu+n21Rnb7mQSpkaD
653JOtRHu6hHT36JU8XspnzdSzOSFOiPb30IaIFhKG32zoKPbCw66wb+KQ09xGWR
7s4PTlOt04oFDGzH6J2EFDg3Qn43JRP+/ROuEpr0t64TIxPNKghSex+PUkvzFG4I
u2F5x1eTaJ/X0GjePRVlq/oM1sCNrxSYnDd5WQabcme/it+yWrYP1QRM1Z4+b97O
uYvM016P4Q/kN3scEaJB8mzhGNJSM7ZpAjI/gsuOobWyAbgk6zF6l58SBQnjn5I=
=0Eos
-----END PGP SIGNATURE-----
