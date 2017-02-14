X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2305" "Tuesday" "14" "February" "2017" "19:43:32" "+0100" "Moritz Muehlenhoff" "jmm@debian.org" "<20170214184332.z5goeazi2kvqsaor@pisco.westfalen.local>" "60" "Re: [oss-security] Pending CVE requests for glibc" nil nil nil "2" "2017021418:43:32" "[oss-security] Pending CVE requests for glibc" (number mark "U       jmm@debian.o Feb 14   60/2305  " thread-indent "\"Re: [oss-security] Pending CVE requests for glibc\"\n") "<55EE8F1C.605@redhat.com>" ("<55EE8F1C.605@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1976 invoked by uid 550); 14 Feb 2017 18:43:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1955 invoked from network); 14 Feb 2017 18:43:46 -0000
Date: Tue, 14 Feb 2017 19:43:32 +0100
From: Moritz Muehlenhoff <jmm@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <20170214184332.z5goeazi2kvqsaor@pisco.westfalen.local>
References: <55EE8F1C.605@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55EE8F1C.605@redhat.com>
User-Agent: NeoMutt/20161126 (1.7.1)
X-SA-Exim-Connect-IP: 93.204.221.190
X-SA-Exim-Mail-From: jmm@inutil.org
X-SA-Exim-Scanned: No (on inutil.org); SAEximRunCond expanded to false
Subject: Re: [oss-security] Pending CVE requests for glibc

On Tue, Sep 08, 2015 at 01:02:44PM +0530, Huzaifa Sidhpurwala wrote:
> Hi MITRE,
> 
> I could not help but notice, some glibc security issues were not
> assigned CVE ids.

Blast from the past :-)

I re-submitted this via the new MITRE webform and this got assigned
within a few hours. Here's the assignments looped back to oss-security:

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

CVE-2015-8982

> 2. glibc: _IO_wstr_overflow integer overflow
> An integer overflow flaw, leading to a heap-based buffer overflow, was
> found in glibc's _IO_wstr_overflow() function. If an application used
> this function, it could cause the application to crash or, potentially,
> execute arbitrary code with the privileges of the user running the
> application.
> 
> https://sourceware.org/bugzilla/show_bug.cgi?id=17269
> https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=bdf1ff052a8e23d637f2c838fa5642d78fcedc33

CVE-2015-8983

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

CVE-2015-8984

> 4. glibc: potential denial of service in pop_fail_stack()
> A crash was reported [1] during glibc extended regular expression
> processing. No known patch exists at the time of writing.
> https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=779392

CVE-2015-8985

Cheers,
        Moritz
