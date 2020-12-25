X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/12/25/1
Message-ID: <CAH8yC8=VXvPCwbSSDv==QPOp7N+j28_9H1E0C+fSC84JbMdHQg@mail.gmail.com>
Date: Thu, 24 Dec 2020 21:05:31 -0500
From: Jeffrey Walton <noloader@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request experience (was: Multiple memory leaks fixed in Privoxy 3.0.29 stable)
Content-Type: text/plain; charset=utf-8

On Wed, Dec 23, 2020 at 12:21 PM Fabian Keil
<freebsd-listen@...iankeil.de> wrote:
>
> Fabian Keil <freebsd-listen@...iankeil.de> wrote on 2020-11-29:
>
> >                Announcing Privoxy 3.0.29 stable
> [...]
> > - Security/Reliability:
> >   - Fixed memory leaks when a response is buffered and the buffer
> >     limit is reached or Privoxy is running out of memory.
> >     Commits bbd53f1010b and 4490d451f9b. OVE-20201118-0001.
>
> I tried to get a CVE for OVE-20201118-0001 by using the
> "new" form at https://cveform.mitre.org/ on 2020-11-18 but
> was told by MITRE that "the reported vulnerabilities would
> fall in the scope of Red Hat for assignment" and that their
> mail should be forwarded to secalert@...hat.com.
> ...

Related, you are not alone. I just tried to use the form at
https://cveform.mitre.org/ to get a CVE for a memory error.

That form is impossible to use. I emailed cve@...re.org and asked for
the assignment.

Jeff
