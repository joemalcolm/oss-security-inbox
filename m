X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/05/16/9
Message-ID: <CAHmME9qxWkWWKmgDqPU4RrUx67QMYhXtr0s3GmmAUU+s4o=C3w@mail.gmail.com>
Date: Tue, 16 May 2017 23:45:29 +0200
From: "Jason A. Donenfeld" <zx2c4@...too.org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: Re: Integer Overflow in rxvt
Content-Type: text/plain; charset=utf-8

Hi folks,

Just a small update on this. Gentoo has moved forward with removing
rxvt from our distribution [1]. I'd recommend other distributions
follow, since every use case of rxvt is handled by rxvt-unicode, and
rxvt has no upstream anymore, in addition to what sounds like likely
more vulnerabilities.

Regards,
Jason

[1] https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=c50296e8e46086273f5d02e7a2a55e8b66f0d547
