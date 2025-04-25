Received: (qmail 5771 invoked by uid 550); 25 Apr 2025 17:26:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32198 invoked from network); 25 Apr 2025 17:25:02 -0000
Date: Fri, 25 Apr 2025 19:24:47 +0200
From: Solar Designer <solar@openwall.com>
To: xiaolin <dongxiaolin@deepin.org>
Cc: oss-security@lists.openwall.com
Message-ID: <20250425172447.GA29094@openwall.com>
References: <tencent_43AA27D65C46DEB244310CDB@qq.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <tencent_43AA27D65C46DEB244310CDB@qq.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2024-56431: libtheora: incorrect bitwise shift in huffdec.c

On Fri, Apr 25, 2025 at 03:17:52PM +0800, xiaolin wrote:
> Severity:
> - moderate
> 
> Affected versions:
> - libtheora through 1.2.0
> 
> Fixed software:
> - v1.2.0
> 
> Description:
> A flaw was found in Theora (libtheora). An incorrect bitwise shift may be triggered via specially-crafted input, potentially resulting in an application crash.
> 
> -------------------------------------------------------------
> References:
> https://github.com/advisories/GHSA-8xp8-gmmj-xc8w
> https://github.com/UnionTech-Software/openfhe-PoC

The above link is to a wrong PoC, I think you meant this one:

https://github.com/UnionTech-Software/libtheora-CVE-2024-56431-PoC

> https://gitlab.xiph.org/xiph/theora/-/merge_requests/28
> https://gitlab.xiph.org/xiph/theora/-/commit/5665f86b8fd8345bb09469990e79221562ac204b

This doesn't look like a security issue, so the CVE should be rejected
unless there's justification.

Just how would "an incorrect bitwise shift" result in "an application
crash"?  In a build with UbSan, sure.  In a production build, it would
not, unless the resulting incorrect computation result causes that, or
the compiler can infer it at compile time (in which case it could
correctly assume it's undefined behavior and optimize it out).  Neither
appears to be the case here.

Also, the linked GitHub advisory currently shows a ridiculous CVSS score
of 9.8 resulting from the CVSS vector specifying High impact for all of
Confidentiality, Integrity, and Availability.  But you only claim
"application crash" impact, which (if it were for real) would mean no
impact on Confidentiality and Integrity, but only on Availability.

That said, thank you for your fuzzing efforts, for reporting and getting
the bug fixed (even if non-security, it was still a bug), and for
reporting this issue to oss-security anyway, which gives us a chance to
dispute its security relevance.

Alexander
