X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/05/30/1
Message-ID: <20120530100702.2688dca6@redhat.com>
Date: Wed, 30 May 2012 10:07:02 +0200
From: Tomas Hoger <thoger@...hat.com>
To: felipensp@...il.com
Cc: oss-security@...ts.openwall.com
Subject: Re: CVE id request: Multiple buffer overflow in unixODBC
Content-Type: text/plain; charset=utf-8

On Tue, 29 May 2012 09:42:42 -0300 Felipe Pena wrote:

> Multiple buffer overflow in unixODBC
> ===========================
> 
> The library unixODBC doesn't check properly the input from FILEDSN=,
> DRIVER= options in the DSN, which causes buffer overflow when passed
> to the SQLDriverConnect() function.

Reports like this - covering bugs in parsing of the configuration
parameters (i.e. generally trusted input) - should include some
reasoning why these should be considered security.  Nothing obvious not
intended to break PHP safe_mode comes to mind.

-- 
Tomas Hoger / Red Hat Security Response Team
