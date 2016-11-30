X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/11/30/1
Message-ID: <CALJHwhQQb3HXqR35yb7bjQPbUpN1vHH_=ETEyMq7LQ+6VLbkHA@mail.gmail.com>
Date: Wed, 30 Nov 2016 19:10:43 +1100
From: Wade Mealing <wmealing@...hat.com>
To: oss-security@...ts.openwall.com, CVE ID Requests <cve-assign@...re.org>
Subject: cve-request: linux kernel - memory leak in xfs attribute mechanism.
Content-Type: text/plain; charset=utf-8

Gday,

I'd like to request a CVE for the following flaw found in the XFS
attribute management code where over-eager error handling could create
a memory leak (not in information leak) and perhaps with enough
dedication and patience a local attacker could eventually leak
available system memory, creating a DOS attack.

As this same flaw style appears in two functions, this could have one
or two CVE's, I'll leave it up to the fine assigners at mitre to
decide that.

Thanks,

Wade Mealing
Red Hat Product Security

Upstream:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=2e83b79b2d6c78bf1b4aa227938a214dcbddc83f
