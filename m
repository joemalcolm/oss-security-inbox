X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2014/10/16/6
Message-ID: <20141016140357.46e6ebd2@pc>
Date: Thu, 16 Oct 2014 14:03:57 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: attacking hsts through ntp
Content-Type: text/plain; charset=utf-8

it's a pretty neat and simple idea:
Kill HSTS through NTP by sending victims PC into the future.
https://www.blackhat.com/docs/eu-14/materials/eu-14-Selvi-Bypassing-HTTP-Strict-Transport-Security-wp.pdf

Same should work for HPKP. The idea of setting some security feature
through a header needs a revisit.
The solution would be to have a more reliable PC time. How do we do
that?

-- 
Hanno Böck
http://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: BBB51E42

Download attachment "signature.asc" of type "application/pgp-signature" (820 bytes)
