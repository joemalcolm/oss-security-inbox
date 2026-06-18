X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/18/3
Message-ID: <50e3238d-3970-4870-8378-1a8bf7fd191a@beuc.net>
Date: Thu, 18 Jun 2026 15:11:47 +0200
From: Sylvain Beucler <beuc@...c.net>
To: oss-security@...ts.openwall.com
Subject: Re: Proposal: Add separate oss-security-vulnerability-reports mailing list (for AI vulnpocalypse)
Content-Type: text/plain; charset=utf-8

Hi,

On 14/06/2026 00:32, Solar Designer wrote:
> On Mon, Jun 08, 2026 at 07:46:07PM -0400, David A. Wheeler wrote:
> I greatly appreciate that Apache projects post their CVE disclosures in
> here, but it does sometimes result in a lot of messages for the same
> project on the same day.  Also sometimes individual CVEs are missed -
> like for the previous (not the latest) Apache httpd set of CVEs, I spent
> some time to ensure all were eventually brought in here, as initially
> some were not.  If some CVE disclosures are similarly missed for a less
> popular Apache project, this would remain unnoticed (maybe already was).
> 
> I understand it took time and effort to get the current system working
> well, but maybe it's time for someone at Apache to start looking into
> updating the system to group CVE disclosures by project and release.
> 
> Ditto for Perl CPAN.

I skim through the oss-security posts as part of CVE triaging for Debian 
Long Term Support.

I'd rather see projects group their notifications by release (which is 
when we usually have to act in the distros), as Alexander suggested, 
instead of sending them individually / automatically.
For example, I don't need 10 notifications for a single project release 
that we don't even package at Debian.

This way, I believe there would be no need for a separate discussion 
list. With a separate list, it may also be confusing the receive only 
reactions to (part of) the CVE announcement, without the initial CVE.

Cheers!
Sylvain
