X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2475" "Tuesday" "3" "November" "2015" "15:53:22" "+0100" "Raphael Hertzog" "hertzog@debian.org" "<20151103145322.GA23043@home.ouaza.com>" "68" "[oss-security] Re: Pending CVE requests for glibc" nil nil nil "11" "2015110314:53:22" "[oss-security] Re: Pending CVE requests for glibc" (number mark "U       hertzog@debi Nov  3   68/2475  " thread-indent "\"[oss-security] Re: Pending CVE requests for glibc\"\n") "<55EE8F1C.605@redhat.com>" ("<55EE8F1C.605@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7992 invoked by uid 550); 3 Nov 2015 14:57:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6116 invoked from network); 3 Nov 2015 14:53:34 -0000
Date: Tue, 3 Nov 2015 15:53:22 +0100
From: Raphael Hertzog <hertzog@debian.org>
To: oss-security@lists.openwall.com
Cc: Mitre CVE assign department <cve-assign@mitre.org>
Message-ID: <20151103145322.GA23043@home.ouaza.com>
References: <55EE8F1C.605@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <55EE8F1C.605@redhat.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Virus-Scanned: clamav-milter 0.98.7 at mail
X-Virus-Status: Clean
Subject: [oss-security] Re: Pending CVE requests for glibc

Hello,

it seems that this CVE request fell through the cracks. Can you
please assign the requested CVE ids?

Thank you very much.

Le mardi 08 septembre 2015, Huzaifa Sidhpurwala a écrit :
> Hi MITRE,
> 
> I could not help but notice, some glibc security issues were not
> assigned CVE ids.
> 
> 1. glibc: multiple overflows in strxfrm()
> Integer overflow when computing memory allocation sizes (similar to
> CVE-2012-4412) was reported [1] in glibc strxfrm() function. Attached
> strxfrm-int32.c should trigger this issue on a 32-bit systems.
> Additionally, it was discovered [1] that strxfrm() falls back to an
> unbounded alloca if malloc fails making it vulnerable to stack-based
> buffer overflows (similar to CVE-2012-4424). Attached strxfrm-alloca.c
> should trigger this issue.
> 
> Previously a request was made via:
> http://seclists.org/oss-sec/2015/q1/540
> 
> 2. glibc: _IO_wstr_overflow integer overflow
> An integer overflow flaw, leading to a heap-based buffer overflow, was
> found in glibc's _IO_wstr_overflow() function. If an application used
> this function, it could cause the application to crash or, potentially,
> execute arbitrary code with the privileges of the user running the
> application.
> 
> https://sourceware.org/bugzilla/show_bug.cgi?id=17269
> https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=bdf1ff052a8e23d637f2c838fa5642d78fcedc33
> 
> 3. glibc: potential denial of service in internal_fnmatch()
> It was reported [1] that when processing certain malformed patterns,
> fnmatch can skip over the NUL byte terminating the pattern.  This can
> potentially result in an application crash if fnmatch hits an unmapped
> page before encountering a NUL byte.
> 
> https://sourceware.org/bugzilla/show_bug.cgi?id=18032
> https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=4a28f4d55a6cc33474c0792fe93b5942d81bf185
> 
> Previously a request was made via:
> http://seclists.org/oss-sec/2015/q1/689
> 
> 4. glibc: potential denial of service in pop_fail_stack()
> A crash was reported [1] during glibc extended regular expression
> processing. No known patch exists at the time of writing.
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=779392
> 
> 
> Can MITRE please assign CVE ids to these flaws?
> 
> Thanks!
> 
> 
> -- 
> Huzaifa Sidhpurwala / Red Hat Product Security Team
> 
> 

-- 
Raphaël Hertzog ◈ Writer/Consultant ◈ Debian Developer

Discover the Debian Administrator's Handbook:
→ http://debian-handbook.info/get/
