X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/18/19
Message-ID: <20261118234050.GA30245@oevtugenva.nrevsny.pk>
Date: Wed, 18 Nov 2026 18:40:50 -0500
From: Rich Felker <dalias@...c.org>
To: oss-security@...ts.openwall.com
Subject: Another (?) Linux kernel SCTP vuln undisclosed
Content-Type: text/plain; charset=utf-8

The nginx2root thing is not itself a root vuln, but relies on an
undisclosed LPE vuln in the Linux kernel to get root. According to the
vuln website (https://nginx2root.com/),

    "The host-root stage uses a separate Linux SCTP kernel
    vulnerability and must be assessed separately."

    ....

    "The kernel bug is a separate local privilege escalation
    vulnerability and needs its own patch, which will be released in
    the coming weeks."

It's not 100% clear that this is new, but anyone not needing SCTP
should probably block loading of the module via modprobe.d

I'm posting this here because it does not seem to have been announced
outside of the nginx2root website.
