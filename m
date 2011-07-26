X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/07/26/6
Message-ID: <CAOSRhRMs7p+Q6nA7nRHPiorQ1To4A2Nfyf9FrKTWNkKLE5uDEg@mail.gmail.com>
Date: Tue, 26 Jul 2011 11:26:29 -0400
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Cc: meskes@...ian.org
Subject: Re: Information on CVE-2011-2300/CVE-2011-2305 for VirtualBox ?
Content-Type: text/plain; charset=utf-8

On Tue, Jul 26, 2011 at 11:19 AM, Moritz Muehlenhoff <jmm@...ian.org> wrote:
> Hi,
> does anyone have further information on
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2011-2300 and
> http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2011-2305
> and whether if affects the open source version of Virtual Box?
>

These issues were found by Tarjei Mandt, and are described in this blog post:
http://mista.nu/blog/author/mista/

CVE-2011-2300 allows gaining elevated privileges within a Windows
guest due to a vulnerability in the Windows Guest Additions.
CVE-2011-2305 allows executing arbitrary code on the host due to a
vulnerability in the VirtualBox graphics stack.

Tarjei found these issues via code auditing, so it follows that they
affect the open source version of VirtualBox.

-Dan
