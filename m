X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/06/6
Message-ID: <12989e59-ff4a-4c20-9e70-7eff726a952a@cpansec.org>
Date: Mon, 6 Jul 2026 12:30:55 +0100
From: Robert Rothenberg <rrwo@...nsec.org>
To: oss-security@...ts.openwall.com
Subject: Security Considerations for Statsd Clients
Content-Type: text/plain; charset=utf-8

As part of a CPANSec project to scan Perl modules on CPAN for security 
vulnerabilities, we ran across common issues with 11 of the statsd 
client modules.

All of these allowed metric injections. Some had only partial or 
ineffective mitigation for this.

If the metric names, value or tags (for extensions like DataDog Statsd) 
are assembled from untrusted input, then the clients as susceptible to 
metric injections. If the underlying server supports command extensions 
or has vulnerabilities that can be accessed over the statsd port, then 
there may be a larger attack surface.

We also found potential issues with Plack and Catalyst plugins that used 
the statsd set_add method for counting unique items: counting session 
ids, usernames, emails or IP addresses could leak sensitive information 
if the connections to statsd servers and aggregating servers are not 
secured.

This is likely because there is no "official" specification or RFC for 
statsd, and security issues have been overlooked.

I have written a blog post about this at 
https://security.metacpan.org/2026/07/06/security-considerations-for-statsd.html 
with more details, in part to raise awareness for other ecosystems synce 
only Perl moduels were examined in this project.


