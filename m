X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/09/1
Message-Id: <83756B79-2460-412D-B3A7-4B35C8B99B61@dwheeler.com>
Date: Mon, 8 Jun 2026 19:46:07 -0400
From: "David A. Wheeler" <dwheeler@...eeler.com>
To: oss-security@...ts.openwall.com
Subject: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

All: I propose that we create a *separate* mailing list, say
"oss-security-vulnerability-reports", for run-of-the-mill vulnerability reports
about open source software (OSS). Run-of-the-mill reports would then go there
and *not* to this mailing list "oss-security". This would leave *this* oss-security" mailing list
for general discussions about the topic of OSS security, including discussions about
specific publicly known vulnerabilities that are especially noteworthy in some way.
Tools that want the full flood could monitor "oss-security-vulnerability-reports".

Here's my rationale.

In short: There are so many OSS projects that it's *already*
dubious to have a single mailing list for OSS vulnerability reports.
However, I believe the coming AI vulnpocalypse will make it completely absurd.
If we don't do this, I think the human participants will need to unsubscribe
from this list sooner or later, and that would be sad.

This is *NOT* a dig at Eric Covener (Apache).
In fact, I want to praise Eric Covener (Apache) for his effort
to make people aware of various vulnerabilities that have been fixed.
I also want to thank the various finders, such as Pavel Kohout (Aisle Research),
for finding and *reporting* vulnerabilities through coordinated disclosure.
That's awesome! Eric Covener has simply been following the rules
and purpose of this mailing list as originally created.

However... things have changed.
I think this set of reports from Eric Covener is only a *sliver* of what's to come.

I notice that many of these vulnerability findings are thanks, at least in part,
to AI use. I (and many others) think we're going to see *lots* more of this.
Below is evidence that Iwe're going to see a *LOT* of vulnerabilities found by AI systems,
at least *orders* of magnitude more for the next few years.

In the long term I think this will help make software more secure, but we're
going to have to weather that storm of AI vulnerability reports (the "vulnpocalpyse") first.

Let's get ready. Let's split off the flood of reports to a different list, so that this
mailing list can continue to be available for human discussion.

Thanks!

--- David A. Wheeler

=== Evidence ===

[CSA2026] CSA CISO Community, SANS, [un]prompted, OWASP Gen AI Security Project and the wider community (and many contributing authors), 2026, “The “AI Vulnerability Storm”: Building a “Mythos-ready” Security Program”, https://labs.cloudsecurityalliance.org/mythos-ciso/
- "In the near term, security organizations will likely be overwhelmed by the need to apply patches and respond to AI-discovered vulnerabilities, exploits, and autonomous attacks."
- "re-orient security program resources for increasing volume of patches, decreasing time to patch, and more persistent and complex attacks."

[Grinstead2026-05] Grinstead, Brian, Christian Holler, Frederik Braun, 2026-05-07, “Behind the Scenes Hardening Firefox with Claude Mythos Preview”, https://hacks.mozilla.org/2026/05/behind-the-scenes-hardening-firefox/
“Just a few months ago, AI-generated security bug reports [were mostly] unwanted slop. [This changed] due to a combination of two main factors. First, the models got a lot more capable. Second, we dramatically improved our techniques for harnessing these models — steering them, scaling them, and stacking them to generate large amounts of signal and filter out the noise."

[Hellekson2026] Gunnar Hellekson et al, 2026-04-08, “Navigating the Mythos-haunted world of platform security”, https://www.redhat.com/en/blog/navigating-mythos-haunted-world-platform-security
"we now expect AI to exponentially accelerate the discovery of flaws like these within the very foundations of the software supply chain."

[Holley2026] Bobby Holley, 2026-04-21, “The zero-days are numbered”, https://blog.mozilla.org/en/privacy-security/ai-security-zero-day-vulnerabilities/
"Since February, the Firefox team has been working around the clock using frontier AI models to find and fix latent security vulnerabilities in the browser. We wrote previously about our collaboration with Anthropic to scan Firefox with Opus 4.6, which led to fixes for 22 security-sensitive bugs in Firefox 148."
"As part of our continued collaboration with Anthropic, we had the opportunity to apply an early version of Claude Mythos Preview to Firefox. This week’s release of Firefox 150 includes fixes for 271 vulnerabilities identified during this initial evaluation."

[LowLevel2026] Low Level, 2026, “Mythos has been unleashed (we have results)” [video], https://www.youtube.com/watch?v=IS4OgH74gY4
“If Mythos only found 1 vulnerability in curl, is Mythos all hype or is curl just a really good piece of software? The answer to this is complicated. It is literally impossible to ignore the fact that AI is getting very good at reverse engineering and vulnerability research. Not only for open source projects or code that you have the source code to [but also] on closed source binaries… it’s getting very good at quickly taking code apart and finding vulnerabilities in them… [Mythos can find vulnerabilities and] chain them together… is it end the world apocalypse? I don’t think so. It’s impossible to ignore that these models are getting really good. … why did it not find more bugs in curl? I think curl is just objectively a good code base” [8:00]

[Yan2026] Written by Eugene Yan and Henna Dattani, et al, 2026-05-27, “Using LLMs to secure source code”, Claude (Anthropic) Blog, https://claude.com/blog/using-llms-to-secure-source-code
"To give some indication of this discrepancy, as part of our own scanning of open source software, as of May 22, 2026, we had disclosed 1,596 vulnerabilities."

[Carlini2026] Nicholas Carlini, Newton Cheng, Keane Lucas, Michael Moore, Milad Nasr, Vinay Prabhushankar, Winnie Xiao, et al, 2026-04-07, “Assessing Claude Mythos Preview’s cybersecurity capabilities”, https://red.anthropic.com/2026/mythos-preview/
“During our testing, we found that Mythos Preview is capable of identifying and then exploiting zero-day vulnerabilities in every major operating system and every major web browser when directed by a user to do so. ...
“Most security tooling has historically benefitted defenders more than attackers....
“We believe the same will hold true here too—eventually ...
But the transitional period may be tumultuous regardless."

Here's the report that got me thinking about the likely flood to come:

> On Jun 8, 2026, at 8:50 AM, Eric Covener <covener@...che.org> wrote:
> 
> Severity: low 
> 
> Affected versions:
> 
> - Apache HTTP Server 2.4.0 through 2.4.67
> 
> Description:
> 
> Use After Free vulnerability in Apache HTTP Server with mod_ldap in per-directory configuration
> 
> This issue affects Apache HTTP Server: from 2.4.0 through 2.4.67.
> 
> Users are recommended to upgrade to version 2.4.68, which fixes the issue.
> 
> Credit:
> 
> Pavel Kohout, Aisle Research, Aisle.com (finder)
> 
> References:
> 
> https://httpd.apache.org/security/vulnerabilities_24.html
> https://httpd.apache.org/
> https://www.cve.org/CVERecord?id=CVE-2026-29167
> 
> Timeline:
> 
> 2026-03-02: reported
> 2026-06-03: fixed in 2.4.x by r1934935
> 2026-06-08: 2.4.68 released
> 

