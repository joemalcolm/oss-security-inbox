X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/03/14/5
Message-ID: <20230314120117.46a105cc.hanno@hboeck.de>
Date: Tue, 14 Mar 2023 12:01:17 +0100
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: TTY pushback vulnerabilities / TIOCSTI
Content-Type: text/plain; charset=utf-8

On Tue, 14 Mar 2023 11:46:33 +0100
Peter Bex <peter@...e-magic.net> wrote:

> Indeed, opendoas (the portable version of OpenBSD's "doas") has this
> exact bug as well: https://github.com/Duncaen/OpenDoas/issues/106

Though some context is relevant here: doas is a tool from OpenBSD.
According to the Linux kernel commit message [1] OpenBSD has fixed this
already 3 years ago by entirely removing TIOCSTI [2][3].

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=83efeeeb3d04
[2] https://undeadly.org/cgi?action=article;sid=20170701132619
[3] https://marc.info/?l=openbsd-cvs&m=149870941319610

-- 
Hanno Böck
https://hboeck.de/
