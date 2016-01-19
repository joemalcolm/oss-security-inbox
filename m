X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1736" "Tuesday" "19" "January" "2016" "19:04:17" "+0100" "Florian Weimer" "fweimer@redhat.com" "<569E7AA1.1040700@redhat.com>" "48" "[oss-security] CVE assignment request for security bugs fixed in glibc 2.23" "^Date:" nil nil "1" "2016011918:04:17" "[oss-security] CVE assignment request for security bugs fixed in glibc 2.23" (number mark "        fweimer@redh Jan 19   48/1736  " thread-indent "\"[oss-security] CVE assignment request for security bugs fixed in glibc 2.23\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13442 invoked by uid 550); 19 Jan 2016 18:04:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13423 invoked from network); 19 Jan 2016 18:04:31 -0000
X-Enigmail-Draft-Status: N1110
Message-ID: <569E7AA1.1040700@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Tue, 19 Jan 2016 19:04:17 +0100
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE assignment request for security bugs fixed in glibc 2.23
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

Hi,

we are preparing the glibc 2.23 release upstream and have fixed the
following security bugs which, to my best knowledge, lack public CVE
assignment so far:

Passing out of range data to strftime() causes a segfault
https://sourceware.org/bugzilla/show_bug.cgi?id=18985

Out-of-range time values passed to the strftime function may cause it to
crash, leading to a denial of service, or potentially disclosure
information.

LD_POINTER_GUARD is not ignored for privileged binaries
https://sourceware.org/bugzilla/show_bug.cgi?id=18928

LD_POINTER_GUARD was an environment variable which controls
security-related behavior, but was not ignored for privileged binaries
(in AT_SECURE mode).  This might allow local attackers (who can supply
the environment variable) to bypass intended security restrictions.

hcreate((size_t)-1) should fail with ENOMEM
https://sourceware.org/bugzilla/show_bug.cgi?id=18240

This is an integer overflow in hcreate and hcreate_r which can result in
an out-of-bound memory access.  This could lead to application crashes
or, potentially, arbitrary code execution.

nan function unbounded stack allocation
https://sourceware.org/bugzilla/show_bug.cgi?id=16962

A stack overflow (unbounded alloca) can cause applications which process
long strings with the nan function to crash or, potentially, execute
arbitrary code.

catopen() Multiple unbounded stack allocations
https://sourceware.org/bugzilla/show_bug.cgi?id=17905

A stack overflow (unbounded alloca) in the catopen function can cause
applications which pass long strings to the catopen function to crash
or, potentially execute arbitrary code.


Several people have asked for CVE assignment for swbz#18928 on
oss-security already.

Thanks,
Florian
