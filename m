X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/04/5
Message-ID: <20260704025053.GA31671@openwall.com>
Date: Sat, 4 Jul 2026 04:50:53 +0200
From: Solar Designer <solar@...nwall.com>
To: xylove21 <xylove21@...ton.me>
Cc: oss-security@...ts.openwall.com
Subject: Re: Wasm OCI Image Fetcher Bearer Realm SSRF Bypass
Content-Type: text/plain; charset=utf-8

Hi,

I first wrote the below thinking I'd include xylove21 as a recipient,
but actually the address xylove21@...ton.me does not exist.  So it seems
these are four AI slops, and we should just ignore them and move on.
But I did approve them in case anyone cares to look into them, as well
as to show what's being sent to us.

On Sat, Jul 04, 2026 at 10:19:07AM +0800, xylove21 wrote:
> # Security Disclosure Draft — Wasm OCI Image Fetcher Bearer Realm SSRF Bypass

We got 4 assorted vulnerability disclosures from you posted to
oss-security today.  The first 3 I (as a moderator) approved with their
original Subject lines, even if just to show how confused they were.
This one was even worse, with original Subject saying "[Security]
CVE-class disclosure", which is too non-informative for a thread here,
so I changed it per the title line quoted above.

What's common in all of them is:

1. They are pretty certainly AI generated.  The use of AI and extent of
any human review (perhaps none) is not disclosed.  This puts everything
else in them in doubt.

2. Their wording is inconsistent on whether the issues are being made
public or embargoed.  Posting them to oss-security has made them public.
Such confusion is typical for low-quality AI-generated reports.

3. Some of these messages attempt to request CVEs right from here.  We
don't do this here this decade.  Apparently, some AIs have learned from
ancient messages to wrongly "think" we still do.

xylove21 - going forward, please at least proof-read what you're
sending, and please disclose your use of AI, including the specifics of
such use.  If an external link is referenced, do bother to check what it
says (one of your messages refers to oss-security policy and includes a
link, but further content is then inconsistent with that).  Please set
message Subject lines in accordance with our content guidelines:

https://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"When applicable, the message Subject must include the name and
version(s) of affected software, and vulnerability type."

Extra tags in brackets, CVSS scores, etc. do not belong in there.

> ## Sign-off
> 
> This 0-day is unpublished. We request that Istio follow its standard
> coordinated disclosure process (typically 90 days). We will keep this
> report private until the Istio security team agrees to publication.

This is now published.

> If you have any questions, please reach out to security@...io.io (or
> the contact channel of the auditing organization) referencing this
> disclosure.

Are you (your AI) asking them to reach out to themselves?

Alexander
