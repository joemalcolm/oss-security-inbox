X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/06/27/2
Message-ID: <87ehbo85au.fsf@windlord.stanford.edu>
Date: Wed, 26 Jun 2013 22:56:57 -0700
From: Russ Allbery <rra@...nford.edu>
To: oss-security@...ts.openwall.com
Cc: kseifried@...hat.com,  cve-assign@...re.org,  "Steven M. Christey" <coley@...re.org>
Subject: Re: 1.2k bug reports for Debian, some may be security
Content-Type: text/plain; charset=utf-8

Kurt Seifried <kseifried@...hat.com> writes:

> I will of course be doing CVEs for these (*sob*). In order to make
> this possible though I'm going to need some help in the form of good
> CVE requests in this case I will be fascist.

I suspect you will not want to be doing CVEs for most of these.  The ones
I've seen so far aren't really security issues.  They're cases of
command-line programs crashing on input, but usually input that is not
feasibly under the control of an attacker (command-line options provided
by the user, etc.).

My guess is that the vast majority of these problems are robustness
issues, but are not security issues under any reasonable threat model that
I can think of.

-- 
Russ Allbery (rra@...nford.edu)             <http://www.eyrie.org/~eagle/>
