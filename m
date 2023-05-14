Received: (qmail 5186 invoked by uid 550); 14 May 2023 21:42:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3859 invoked from network); 14 May 2023 21:41:35 -0000
Date: Sun, 14 May 2023 23:41:21 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20230514214121.GA18829@openwall.com>
References: <CAGUWgD8jWfhdA5+o_BJN-Mgh0+4x7yYPDcjb+Bve14b9Hxnp3A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGUWgD8jWfhdA5+o_BJN-Mgh0+4x7yYPDcjb+Bve14b9Hxnp3A@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Real world vulnerabilities of CWE-1077: Floating Point Comparison with Incorrect Operator?

On Mon, Apr 24, 2023 at 04:43:29PM +0300, Georgi Guninski wrote:
> Are there real world examples of vulnerabilities of this:
> 
> https://cwe.mitre.org/data/definitions/1077.html
> CWE-1077: Floating Point Comparison with Incorrect Operator
> 
> This issue can prevent the product from running reliably. If the
> relevant code is reachable by an attacker, then this reliability
> problem might introduce a vulnerability.
> 
> One simple example in python:
> 
> >>> A=(0.1+0.2)+0.3;B=0.1+(0.2+0.3);(A==B,A-B,A,B)
> (False, 1.1102230246251565e-16, 0.6000000000000001, 0.6)

See this thread:

https://www.openwall.com/lists/oss-security/2011/01/05/2

"Since this problem stems from a single codebase, strtod.c, so it gets a
single CVE identifier (already assigned CVE-2010-4645).  The CVE
description will "blame" strtod.c and mention PHP, and any other
high-profile software that is discovered to use the same vulnerable,
shared code."

CVE-2010-4645 description currently in NVD is:

"strtod.c, as used in the zend_strtod function in PHP 5.2 before 5.2.17
and 5.3 before 5.3.5, and other products, allows context-dependent
attackers to cause a denial of service (infinite loop) via a certain
floating-point value in scientific notation, which is not properly
handled in x87 FPU registers, as demonstrated using
2.2250738585072011e-308."

Interestingly, at least PHP's fix at the time wasn't to avoid the direct
comparison, but to avoid having the floating-point values stay in x87 FP
registers.  This should be sufficient to workaround GCC "bug" 323, but
it might not be robust across platforms and it does not fix CWE-1077.

Alexander
