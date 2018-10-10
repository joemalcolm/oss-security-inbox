X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/10/11
Message-ID: <20181010171341.GA1223@jasmine.lan>
Date: Wed, 10 Oct 2018 13:13:41 -0400
From: Leo Famulari <leo@...ulari.name>
To: Tavis Ormandy <taviso@...gle.com>
Cc: oss-security@...ts.openwall.com
Subject: Re: ghostscript: bypassing executeonly to escape -dSAFER sandbox (CVE-2018-17961)
Content-Type: text/plain; charset=utf-8

On Tue, Oct 09, 2018 at 06:58:39AM -0700, Tavis Ormandy wrote:
> The fix is public now, here are the necessary commit:
> 
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a54c9e61e7d0
> http://git.ghostscript.com/?p=ghostpdl.git;a=commitdiff;h=a6807394bd94

Thanks. Does anyone have a patch or patch series that applies to a
released version of Ghostscript? It's difficult to figure out how to
safely adapt these patches to either Ghostscript 9.24 or 9.25.

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
