X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/03/07/7
Message-ID: <20130307194816.GA412@openwall.com>
Date: Thu, 7 Mar 2013 23:48:16 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Requests (maybe): Linux kernel: various info leaks, some NULL ptr derefs
Content-Type: text/plain; charset=utf-8

Steve,

On Thu, Mar 07, 2013 at 06:09:52PM +0000, Christey, Steven M. wrote:
> This is a major challenge for CVE, but to do bug-based assignments [...]

What about per-subsystem assignments?  (In Linux kernel context and in
general.)  I think this is what would make sense here.  Kurt assigned
just one CVE ID for 21 bugs across multiple subsystems, with the only
things in common being that these are infoleak bugs and that they were
brought to oss-security at once.  With per-subsystem assignments, we'd
have up to 11 CVE IDs for these 21 bugs, or maybe fewer (depending on
what to count as separate subsystems) - but definitely not just 1.

> Note - the more fundamental problem here is that CVE is being used much earlier in the disclosure process than it used to be, and it's basically being used as a universal bug ID.

Maybe CVE should support such use to the extent that it is reasonable
for CVE to do so.

Alexander
