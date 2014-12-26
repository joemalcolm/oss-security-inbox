X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/12/26/1
Message-ID: <CABob6ir4JXq5cG+bvnepcKm-8Gx9qDZmk-gP+j9+edNKbchSNw@mail.gmail.com>
Date: Fri, 26 Dec 2014 01:12:49 +0100
From: Lukas Odzioba <lukas.odzioba@...il.com>
To: oss-security@...ts.openwall.com
Subject: Re: CVE Request Linux kernel: fs: isofs: infinite loop in CE records
Content-Type: text/plain; charset=utf-8

2014-12-17 12:02 GMT+01:00 P J P <ppandit@...hat.com>:
> Upstream fix:
> - -------------
>   -> https://git.kernel.org/linus/f54e18f1b831c92f6512d2eedb224cd63d607d3d

if (++rs->cont_loops > RR_MAX_CE_ENTRIES)
Shouldn't it be like this, instead of >=?

Lukas
