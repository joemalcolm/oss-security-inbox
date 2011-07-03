X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/03/2
Message-ID: <20110703225241.GB8243@openwall.com>
Date: Mon, 4 Jul 2011 02:52:41 +0400
From: Solar Designer <solar@...nwall.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: openssl timing attack
Content-Type: text/plain; charset=utf-8

On Tue, May 31, 2011 at 03:44:40PM -0400, Josh Bressers wrote:
> ----- Original Message -----
> > looks like this following has not CVE-ID assigned yet:
> > http://www.kb.cert.org/vuls/id/536044
> 
> Please use CVE-2011-1945.

I'm being a bit late to post this, but here's a decent interview with
Billy Bob Brumley, one of the researchers who worked on this timing attack:

https://threatpost.com/en_us/blogs/three-questions-billy-brumley-openssl-timing-attack-052511

"... we feel that this attack target in fact encompasses a wide range of
real-world cryptosystems."

vs. OpenSSL's statement to CERT:

"... we believe that the affected code (ECDSA used with binary curves)
is very rarely used at present."

These are not exactly contradictory (please read them in context), yet
perhaps we should patch the issue sooner rather than later.

Question to OpenSSL developers: is the patch given in Billy Bob Brumley
and Nicola Tuveri's paper "Remote Timing Attacks Are Still Practical" OK
to be used by distros?  Basically, I am interested in its "review
status" by upstream - reviewed and approved, reviewed but not approved
for specific reasons, not sufficiently reviewed.  (The patch is tiny,
but even tiny changes might have non-obvious implications.)

Thanks,

Alexander
