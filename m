X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/01/21/13
Message-ID: <CAH_aqbtG1p1f68x_EVug0TS+8KSi-cCdx7z=hsZzjhjzdcg43Q@mail.gmail.com>
Date: Mon, 21 Jan 2013 12:03:42 -0200
From: Henrique Montenegro <typoon@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request - Wordpress 3.5 Full-path disclosure vulnerability
Content-Type: text/plain; charset=utf-8

Yes, I also agree that wordpress should fix this and I understand that this
is a low-priority mostly configuration related issue. I was just not sure
if this was eligible for a CVE or not. I'll keep this reference in mind for
future times.

Thanks for the help!

Henrique


On Mon, Jan 21, 2013 at 12:00 PM, Henri Salo <henri@...v.fi> wrote:

> On Mon, Jan 21, 2013 at 11:29:45AM +0000, Giles Coochey wrote:
> > Wouldn't setting PHP "display_errors" be for development only, the
> > entire point of the directive is to give the developer more
> > information 'in page'.
> >
> > http://php.net/manual/en/errorfunc.configuration.php#ini.display-errors
> >
> > Quoting:
> > "This is a feature to support your development and should never be
> > used on production systems (e.g. systems connected to the
> > internet)."
>
> You are correct. No CVE, but WordPress should still fix this. Please note
> that
> some configuration errors still get CVE, but this is not one of those in my
> opinion/knowledge. Path disclosures are usually low-priority issues.
>
> ---
> Henri Salo
>

