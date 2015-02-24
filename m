X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/24/2
Message-ID: <54EC1701.90600@redhat.com>
Date: Mon, 23 Feb 2015 23:15:29 -0700
From: Kurt Seifried <kseifried@...hat.com>
To: "oss-security@...ts.openwall.com" <oss-security@...ts.openwall.com>, Assign a CVE Identifier <cve-assign@...re.org>
Subject: Re: Summer bug cleaning - rpcbind -h option - REJECT CVE-2012-3541
Content-Type: text/plain; charset=utf-8

So unfortunately I forgot that Linux has the loose IP matching, e.g.
from a local system packets will get delivered that maybe should not be,
that's just how things are. Redid my testing from a remote system and
confirmed I was wrong.

Please REJECT CVE-2012-3541, I have confirmed it behaves as expected,
annoyingly it does filter UDP, but not TCP, as the man page states (this
feature is a whole other discussion). Why the -h option only handles UDP
and not TCP... anyways.

-- 
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993


Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
