X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/09/13/8
Message-ID: <Pine.GSO.4.64.1009131653470.24720@faron.mitre.org>
Date: Mon, 13 Sep 2010 16:55:26 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Josh Bressers <bressers@...hat.com>
cc: oss-security@...ts.openwall.com
Subject: Re: CVE Request: mailman
Content-Type: text/plain; charset=utf-8


Josh,

Was there a particular reason to split these into separate CVEs?  A quick 
glance suggests they affect the same version, and since they're the same 
type, would normally argue for a merge.

- Steve


On Mon, 13 Sep 2010, Josh Bressers wrote:

>
> ----- "Huzaifa Sidhpurwala" <huzaifas@...hat.com> wrote:
>
>> Hi,
>>
>> There are two mailman vulns. fixed by the following patch:
>> http://mail.python.org/pipermail/mailman-announce/2010-September/000151.html
>>
>> Particular Red Hat Bugzilla entries are the following:
>>
>> 	https://bugzilla.redhat.com/show_bug.cgi?id=631881
>
> CVE-2010-3089 mailman XSS via list information HTML template
>
>
>> 	https://bugzilla.redhat.com/show_bug.cgi?id=631859
>
> CVE-2010-3090 mailman XSS in list information overview
>
> Thanks.
>
> --
>    JB
>
