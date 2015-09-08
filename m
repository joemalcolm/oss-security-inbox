X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2025" "Tuesday" "8" "September" "2015" "13:02:44" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<55EE8F1C.605@redhat.com>" "52" "[oss-security] Pending CVE requests for glibc" nil nil nil "9" "2015090807:32:44" "[oss-security] Pending CVE requests for glibc" (number mark "U       huzaifas@red Sep  8   52/2025  " thread-indent "\"[oss-security] Pending CVE requests for glibc\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20072 invoked by uid 550); 8 Sep 2015 07:19:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20052 invoked from network); 8 Sep 2015 07:19:28 -0000
To: oss-security@lists.openwall.com,
        Mitre CVE assign department <cve-assign@mitre.org>
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Message-ID: <55EE8F1C.605@redhat.com>
Date: Tue, 8 Sep 2015 13:02:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Subject: [oss-security] Pending CVE requests for glibc

Hi MITRE,

I could not help but notice, some glibc security issues were not
assigned CVE ids.

1. glibc: multiple overflows in strxfrm()
Integer overflow when computing memory allocation sizes (similar to
CVE-2012-4412) was reported [1] in glibc strxfrm() function. Attached
strxfrm-int32.c should trigger this issue on a 32-bit systems.
Additionally, it was discovered [1] that strxfrm() falls back to an
unbounded alloca if malloc fails making it vulnerable to stack-based
buffer overflows (similar to CVE-2012-4424). Attached strxfrm-alloca.c
should trigger this issue.

Previously a request was made via:
http://seclists.org/oss-sec/2015/q1/540

2. glibc: _IO_wstr_overflow integer overflow
An integer overflow flaw, leading to a heap-based buffer overflow, was
found in glibc's _IO_wstr_overflow() function. If an application used
this function, it could cause the application to crash or, potentially,
execute arbitrary code with the privileges of the user running the
application.

https://sourceware.org/bugzilla/show_bug.cgi?id=17269
https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=bdf1ff052a8e23d637f2c838fa5642d78fcedc33

3. glibc: potential denial of service in internal_fnmatch()
It was reported [1] that when processing certain malformed patterns,
fnmatch can skip over the NUL byte terminating the pattern.  This can
potentially result in an application crash if fnmatch hits an unmapped
page before encountering a NUL byte.

https://sourceware.org/bugzilla/show_bug.cgi?id=18032
https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=4a28f4d55a6cc33474c0792fe93b5942d81bf185

Previously a request was made via:
http://seclists.org/oss-sec/2015/q1/689

4. glibc: potential denial of service in pop_fail_stack()
A crash was reported [1] during glibc extended regular expression
processing. No known patch exists at the time of writing.
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=779392


Can MITRE please assign CVE ids to these flaws?

Thanks!


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
