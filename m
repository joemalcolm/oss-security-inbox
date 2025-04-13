Received: (qmail 13648 invoked by uid 550); 13 Apr 2025 01:43:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 13337 invoked from network); 13 Apr 2025 01:43:32 -0000
Date: Sun, 13 Apr 2025 03:41:42 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20250413014142.GA17270@openwall.com>
References: <2add2962-34f5-4b4c-abfe-f780501c3a4e@oracle.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2add2962-34f5-4b4c-abfe-f780501c3a4e@oracle.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Security audit of PHP

Hi,

Thank you for bringing this in here, Alan!

On Sat, Apr 12, 2025 at 08:58:59AM -0700, Alan Coopersmith wrote:
> https://blog.quarkslab.com/security-audit-of-php-src.html announces the
> completion of a security audit of PHP by Quarkslab, thanks to funding
> provided by Sovereign Tech Fund to The Open Source Technology Improvement 
> Fund.
> 
> The blog provides details and a link to the audit report for more.
> The summary it provides of the findings is:
> 
> >    2 security issues considered as high severity;
> >    6 security issues considered as medium severity;
> >    9 security issues considered as low severity;
> >    10 issues considered informative.

The PHP Foundation's blog post gives slightly different breakdown by
severity, with "3 High-severity" and "5 Medium-severity".

> CVE-2024-8928 is still marked reserved & not yet published, the report 
> lists it as "Details to be shared after fixes are applied".
> 
> The Quarkslab blog also points to corresponding blogs from the PHP 
> Foundation
> and the Open Source Technology Improvement Fund at:
> https://thephp.foundation/blog/2025/04/10/php-core-security-audit-results/
> https://ostif.org/php-audit-complete/

This mystery CVE is listed with a brief description in the PHP
Foundation's blog post above:

CVE-2024-8928: Memory-related vulnerability in PHP's filter handling,
leading to segmentation faults.

Alexander
