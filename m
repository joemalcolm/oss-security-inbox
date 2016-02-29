X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2267" "Monday" "29" "February" "2016" "16:26:48" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160229212648.BCC2B6C082B@smtpvmsrv1.mitre.org>" "48" "[oss-security] Re: CVE request: Heap buffer overflow in pcretest" nil nil nil "2" "2016022921:26:48" "[oss-security] Re: CVE request: Heap buffer overflow in pcretest" (number mark "U       cve-assign@m Feb 29   48/2267  " thread-indent "\"[oss-security] Re: CVE request: Heap buffer overflow in pcretest\"\n") "<56D40C3B.3090806@redhat.com>" ("<56D40C3B.3090806@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24290 invoked by uid 550); 29 Feb 2016 21:27:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24257 invoked from network); 29 Feb 2016 21:27:04 -0000
From: cve-assign@mitre.org
To: amaris@redhat.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
In-Reply-To: <56D40C3B.3090806@redhat.com>
Message-Id: <20160229212648.BCC2B6C082B@smtpvmsrv1.mitre.org>
Date: Mon, 29 Feb 2016 16:26:48 -0500 (EST)
Subject: [oss-security] Re: CVE request: Heap buffer overflow in pcretest

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> Heap-based buffer overread caused by specially crafted input triggering
> infinite loop in pcretest.c 

Can you clarify the threat model for an infinite loop caused by the
pcretest.c source code?

Our understanding is that pcretest and pcre2test are standalone
command-line programs; they are not normally linked into applications
that use the PCRE library. This type of bug in pcretest or pcre2test
might not have any common associated use case in which an unattended
process receives untrusted patterns, and uses a huge amount of CPU time
before anyone notices. In other words, a person who has any awareness
of running pcretest or pcre2test could observe the long run time, and
could apparently recover from the bug by removing the problematic
patterns from the set of input patterns, and then running the program
again. Obviously, some infinite-loop issues have CVE ID assignments
but they are almost always issues in which the use case is
realistically unattended (kernel, daemons, CGI scripts, web browsers,
network-monitoring tools, general-purpose library code, etc.).

If a pattern can result in code execution when pcretest or pcre2test
is executed with untrusted input, then a CVE ID could be considered.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJW1LMNAAoJEL54rhJi8gl5JIsP/jgsHL19qJdWD8LwgxXqlhSp
4WhvoC0kxG/vwKLMKMWh/ofKvV4qF5JY7lpX3s5JFsoZ4FZbizGiPFOYCcF7q/d+
lwBUmyalBjzqaQReuFvS+TZaNVgVUzlaJ40E0E6d3NoTfZCrD28N+ciVzDKpS2SX
Fz0svDJMYANQz5Yl15uRMC+3RNkQtLoomxXpO3IhQwboCbmEE2XJUXU0xXBATVHf
qhzyGsMGa8GRdtKzPY4vYMuGnbfVkCbNzitxjIvFS8zbWtx+ZtqIRiPEFJgwYdRN
F6REM9tSIDtobLp31+PJrez4AVDT28khm7xjOmcEjtG4zBWQ2iJ/LiuqJzpjWOPR
NWZjghKZ3pMRIa8h7ygKWHhaYwD9AeSFD3yfyh9gMMqpx65a+QZF7sUlSOkO9bWA
NOsr3U8c0Vfnf+gsk+SznvaQGTfrL2orKrYh8fIpO8HKiUQwxKUYbvuuHnJJg9Mf
p+FLM9DploIuGcig4lZ00wi4JzQzCoQdjSpsYMf9xG7pTJzj2qjR3P74RSMax/CY
bkLGz7J0eE+Ztfxantgajl4jOW0nBx9XcJjV2hstvwYVNkDkrWXw93zbPlMVAajm
hQ+sEJyJN1ggENvM+pyGDVC2e03eeh1WOiQyzR9Y4hbQ+HXkphhQqLsp6FYs3ymA
OvK05MdCdUMXe0k14PeN
=mSgo
-----END PGP SIGNATURE-----
