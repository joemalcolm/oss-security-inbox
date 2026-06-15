X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/15/2
Message-ID: <ai_5vXcSQ3XmMC3S@symphytum.spacehopper.org>
Date: Mon, 15 Jun 2026 14:10:21 +0100
From: Stuart Henderson <stu@...cehopper.org>
To: oss-security@...ts.openwall.com
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

On 2026/06/14 00:32, Solar Designer wrote:
> Whenever practical, please group related vulnerability disclosures into
> fewer messages (like security advisories) and use helpful Subject lines.
> Include the project name in a fixed place near the beginning of Subject,
> and make the Subject specific to the one disclosure rather than generic
> shared between multiple disclosures.

btw, mutt users who filter mail into folders (so they already know from
the context that the message is from oss-security) might like this to
strip the list tag from Subject lines, freeing up a few more columns in
the index:

subjectrx '\[oss-security\] ?' '%L%R'

if used in a folder hook, you need extra escaping

folder-hook . unsubjectrx '*'
folder-hook =oss-security subjectrx '\\[oss-security\\]\ ?' '%L%R'

> I greatly appreciate that Apache projects post their CVE disclosures in
> here, but it does sometimes result in a lot of messages for the same
> project on the same day.  Also sometimes individual CVEs are missed -
> like for the previous (not the latest) Apache httpd set of CVEs, I spent
> some time to ensure all were eventually brought in here, as initially
> some were not.  If some CVE disclosures are similarly missed for a less
> popular Apache project, this would remain unnoticed (maybe already was).

The Apache ones were what pushed me into discovering 'subjectrx'; before
that I only had 2 characters left for the project name, e.g.
"[oss-security] CVE-xxxx-yyyyy: Apache Ai".

> I understand it took time and effort to get the current system working
> well, but maybe it's time for someone at Apache to start looking into
> updating the system to group CVE disclosures by project and release.
> 
> Ditto for Perl CPAN.

It would be appreciated.

