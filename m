X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/11/20/17
Message-ID: <546DE1E3.3060200@mccme.ru>
Date: Thu, 20 Nov 2014 15:43:15 +0300
From: Alexander Cherepanov <cherepan@...me.ru>
To: oss-security@...ts.openwall.com
Subject: Re: Fuzzing findings (and maybe CVE requests) - Image/GraphicsMagick, elfutils, GIMP, gdk-pixbuf, file, ndisasm, less
Content-Type: text/plain; charset=utf-8

On 2014-11-16 17:10, Hanno Böck wrote:
> less:
> Out of bounds read, upstream doesn't answer and doesn't have a public
> bug tracker. This wasn't really found by fuzzing but by running less on
> a likely malwared gif, I reduced it to a smaller testcase:
> http://int21.de/cve/less-oob

less crashed or imagemagick called from lesspipe?

-- 
Alexander Cherepanov
