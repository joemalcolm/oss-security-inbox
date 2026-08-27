X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/27/3
Message-ID: <2026082700-prance-critter-20dc@gregkh>
Date: Thu, 27 Aug 2026 06:42:09 +0200
From: Greg KH <greg@...ah.com>
To: oss-security@...ts.openwall.com
Subject: Re: Reporter attribution is absent from GitHub's machine-readable vulnerability records, and from the NVD entirely
Content-Type: text/plain; charset=utf-8

On Wed, Aug 26, 2026 at 06:19:44PM -0700, Syed wrote:
> This is a measurement, not a vulnerability report.
> 
> The CVE v5 format defines a `credits` container naming who found or
> reported an
> issue, with typed roles. The OSV schema defines an equivalent field. GitHub
> collects credit from reporters, requires them to accept it before display,
> shows
> it on the advisory page, and serves it through its advisories REST API. It
> emits
> it into neither standardized format.

Yes, cve.org json records are known to have this issue, because almost
all fields are not required.  Unless cve.org makes this a requirement,
any CNA is free to not populate the fields if they so desire.

github isn't the only CNA that doesn't do this, most don't, for various
reasons (not the least being the amount of squabbling that ensues when
one wishes to attempt to populate this field...).  It's up to the CNA as
to what they wish to populate or not, if you object to this, please take
it up with the CNA itself, OR work with cve.org to make more fields
mandatory.

good luck!

greg k-h
