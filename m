X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2020/12/02/1
Message-ID: <20201202065627.GB14843@suse.de>
Date: Wed, 2 Dec 2020 07:56:27 +0100
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: Some mitigation for openssh CVE-2020-14145
Content-Type: text/plain; charset=utf-8

Hi,

We reviewed the openssh CVE-2020-14145 and the openssh team commited
a partial mitigation of this issue which is included in openssh 8.4.

https://anongit.mindrot.org/openssh.git/commit/?id=b3855ff053f5078ec3d3c653cdaedefaa5fc362d

I filed a CVE update request to include above.

That said, "key/certificate pinning on first connect" is still tricky.

Ciao, Marcus
