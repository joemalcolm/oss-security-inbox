X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/29/31
Message-ID: <arvwp6gKyUBDbFWK@horn.ics.muni.cz>
Date: Tue, 29 Sep 2026 19:08:55 +0200
From: Zdenek Salvet <salvet@....muni.cz>
To: oss-security@...ts.openwall.com
Subject: Re: "several" CVEs in latest Debian linux security advisory DSA 6528-1
Content-Type: text/plain; charset=utf-8

On Tue, Sep 29, 2026 at 09:16:35AM -0400, Jan Schaumann wrote:
> Where "several" is a list of 1,313 CVE IDs.
> 
> I understand that this is a result of the Linux kernel
> team assigning a CVE ID for virtually any change
> combined with the onslaught of AI assisted findings,
> but I think a security advisory of this sort serves no
> meaningful purpose and illustrates the argument that
> it's pointless for defenders to attempt to track and
> assess individual vulnerabilities.

Hello,
I think the number also reflects Debian maintainers' effor
to avoid too much churn...  You check Debian changelog
to select issues most relevant to your environment reasonably
quickly (in couple hours :-( )

> (disable unused modules, don't use containers as a
> reliable security boundary, reduce attack surface,
> ...), but at this point I've come to believe that
> multi-user linux systems may effectively no longer be
> viable, as a LPE ought to be assumed.

Nothing is 100% secure, I hope we will run out of the most serious 
vulnerabilities soon at this pace...

Regards,
Zdenek Salvet                                              salvet@....muni.cz 
Institute of Computer Science of Masaryk University, Brno, Czech Republic
and CESNET, z.s.p.o., Prague, Czech Republic
Phone: ++420-549 49 6534                           Fax: ++420-541 212 747
----------------------------------------------------------------------------
      Teamwork is essential -- it allows you to blame someone else.

