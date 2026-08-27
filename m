X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/27/4
Message-ID: <CAKUNu1fzDiE+zEzZN-6wdZY++AKUzpTUYaYYS7eFA2MSPb2LSg@mail.gmail.com>
Date: Thu, 27 Aug 2026 01:03:47 -0400
From: Syed <anasmohiddinsyed@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Reporter attribution is absent from GitHub's machine-readable vulnerability records, and from the NVD entirely
Content-Type: text/plain; charset=utf-8

> Yes,
https://www.google.com/url?q=http://cve.org&source=gmail&ust=1787893426670000&sa=E
json records are known to have this issue, because almost
> all fields are not required.

Fair. Optional means a CNA leaving credits empty is behaving correctly,
not incorrectly, and the post should have said that plainly.

The squabbling you mention is the useful part, and it is in no spec. If
the field stays empty because agreeing on who found a bug is contentious,
that explains a 0/570 better than a thin exporter does, and it argues
against making the field mandatory rather than for it.

The second hop is separate from CNA discretion. NVD API 2.0 defines no
credits field, and the 43 credit-bearing records I traced through it
arrived with credits gone, 14 of them marked Analyzed. Credits that
diligent CNAs do emit are dropped there whatever the CNA does. That one
is not a CNA's to fix. NIST has an RFI open on NVD's future, docket
NIST-2026-0100, which is where I will take it.

Write-up, since the post linked only the data:
https://www.google.com/url?q=https://doi.org/10.5281/zenodo.22119724&source=gmail&ust=1787893426670000&sa=E

Thanks for the pointer.

Anas Mohiuddin Syed

On Wed, Aug 26, 2026 11:46 PM, Greg KH <greg@...ah.com> wrote:

> On Wed, Aug 26, 2026 at 06:19:44PM -0700, Syed wrote:
> > This is a measurement, not a vulnerability report.
> >
> > The CVE v5 format defines a `credits` container naming who found or
> > reported an
> > issue, with typed roles. The OSV schema defines an equivalent field.
> GitHub
> > collects credit from reporters, requires them to accept it before
> display,
> > shows
> > it on the advisory page, and serves it through its advisories REST API.
> It
> > emits
> > it into neither standardized format.
>
> Yes, cve.org json records are known to have this issue, because almost
> all fields are not required.  Unless cve.org makes this a requirement,
> any CNA is free to not populate the fields if they so desire.
>
> github isn't the only CNA that doesn't do this, most don't, for various
> reasons (not the least being the amount of squabbling that ensues when
> one wishes to attempt to populate this field...).  It's up to the CNA as
> to what they wish to populate or not, if you object to this, please take
> it up with the CNA itself, OR work with cve.org to make more fields
> mandatory.
>
> good luck!
>
> greg k-h
>

