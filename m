X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/11/28/5
Message-ID: <20171128143030.GB24000@takahe.colorado.edu>
Date: Tue, 28 Nov 2017 07:30:30 -0700
From: Leonid Isaev <leonid.isaev@...a.colorado.edu>
To: oss-security@...ts.openwall.com
Subject: Re: Re: Security risk of server side text editing ...
Content-Type: text/plain; charset=utf-8

On Tue, Nov 28, 2017 at 02:19:59PM +0100, Bram Moolenaar wrote:
> There are many other reasons why one
> should not edit files under public_html directly, but have a separate
> work space and only copy those files to public_html that belong there
> (ideally with a script to run tests).

But be aware of cp -b...

Sincerely,
-- 
Leonid Isaev
