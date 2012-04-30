X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/30/7
Message-ID: <1335828888.2997.17.camel@mdlinux>
Date: Mon, 30 Apr 2012 19:34:48 -0400
From: Marc Deslauriers <marc.deslauriers@...onical.com>
To: oss-security@...ts.openwall.com
Cc: Vincent Untz <vuntz@...e.com>
Subject: Re: CVE Request: libsoup 2.32.2 sets ssl trusted flag despite no verification
Content-Type: text/plain; charset=utf-8

On Tue, 2012-04-24 at 12:04 +0200, Ludwig Nussel wrote:
> Hi,
> 
> libsoup 2.32.2 does not verify certificates at all if an application does
> not explicitly specify a file with trusted root CA's. Since that libsoup
> version relies on the verification failure to clear the trust flag it
> always considers ssl connections as trusted in that case.
> 
> Reference:
> https://bugzilla.novell.com/show_bug.cgi?id=758431
> 

Here is an upstream bug about the issue.

https://bugzilla.gnome.org/show_bug.cgi?id=666280

Marc.


