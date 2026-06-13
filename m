X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/22
Message-ID: <20260613223241.GA19024@openwall.com>
Date: Sun, 14 Jun 2026 00:32:41 +0200
From: Solar Designer <solar@...nwall.com>
To: "David A. Wheeler" <dwheeler@...eeler.com>
Cc: oss-security@...ts.openwall.com, shvedov@....com
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

Hi David,

On Mon, Jun 08, 2026 at 07:46:07PM -0400, David A. Wheeler wrote:
> All: I propose that we create a *separate* mailing list, say
> "oss-security-vulnerability-reports", for run-of-the-mill vulnerability reports
> about open source software (OSS). Run-of-the-mill reports would then go there
> and *not* to this mailing list "oss-security". This would leave *this* oss-security" mailing list
> for general discussions about the topic of OSS security, including discussions about
> specific publicly known vulnerabilities that are especially noteworthy in some way.
> Tools that want the full flood could monitor "oss-security-vulnerability-reports".
> 
> Here's my rationale.
> 
> In short: There are so many OSS projects that it's *already*
> dubious to have a single mailing list for OSS vulnerability reports.
> However, I believe the coming AI vulnpocalypse will make it completely absurd.
> If we don't do this, I think the human participants will need to unsubscribe
> from this list sooner or later, and that would be sad.

Thank you for bringing this up.

I do indeed see the problem, but I don't like the proposal.  Also, for
now the increased volume on this list hasn't exceeded its historical
pre-AI peak: we had 485 messages in October 2014, but 455 in May 2026.
I'm not seeing a mass exodus of subscribers either.  There's greater
churn - more people are leaving, but at the same time more are joining.

Just by saying to no longer send run-of-the-mill vulnerability reports
in here, we won't instantly achieve that.  Sure the moderators can stop
and re-route them, but that's not an easy job.  It's tricky to draw the
line between run-of-the-mill and noteworthy.

Rather than tell people to send something to the other list, I ask this:

Whenever practical, please group related vulnerability disclosures into
fewer messages (like security advisories) and use helpful Subject lines.
Include the project name in a fixed place near the beginning of Subject,
and make the Subject specific to the one disclosure rather than generic
shared between multiple disclosures.

Example problems:

We got 25 messages on GPAC/MP4Box vulnerabilities in June so far.  The
Subject lines for them have GPAC/MP4Box in various places after the
vulnerability type, whereas someone getting through this would first
care what project is affected (is it even relevant to them) and would
likely want messages grouped by project - if they have to be separate
messages.  Ideally, it would be just 2 messages - one on June 1st
disclosing 6 issues, and one today disclosing 19 issues.

Conversely, some projects do group related issues, but then what goes
into the Subject?  We just had another "OpenSSL Security Advisory" a few
days ago.  It's the same generic Subject line every time.  I think it'd
be preferable to include some identifying information in there, at least
"OpenSSL Security Advisory [9th June 2026]" as the first line says.
Many other projects get this right, e.g. with Subject lines containing
fixed release version numbers or identifying numbers for advisories or
lists of CVEs.

> This is *NOT* a dig at Eric Covener (Apache).
> In fact, I want to praise Eric Covener (Apache) for his effort

Indeed.

I greatly appreciate that Apache projects post their CVE disclosures in
here, but it does sometimes result in a lot of messages for the same
project on the same day.  Also sometimes individual CVEs are missed -
like for the previous (not the latest) Apache httpd set of CVEs, I spent
some time to ensure all were eventually brought in here, as initially
some were not.  If some CVE disclosures are similarly missed for a less
popular Apache project, this would remain unnoticed (maybe already was).

I understand it took time and effort to get the current system working
well, but maybe it's time for someone at Apache to start looking into
updating the system to group CVE disclosures by project and release.

Ditto for Perl CPAN.

Alexander
