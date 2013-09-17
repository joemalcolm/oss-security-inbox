X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2013/09/17/10
Message-ID: <52389EE9.8040307@redhat.com>
Date: Tue, 17 Sep 2013 20:26:49 +0200
From: Florian Weimer <fweimer@...hat.com>
To: oss-security@...ts.openwall.com
Subject: Research on better-than-brute-force attacks on PDF cryptography
Content-Type: text/plain; charset=utf-8

I've looked at a PDF implementation, compared it against the 
specification (including Adobe's supplement covering AES-256), and 
unless I'm missing something, there are a few odd things there.

Does anyone know if there's published research into this topic?  I could 
only find indications that the specification does not adequately defend 
against brute-force password guessing.  Which is probably true, but not 
exactly my concern.

-- 
Florian Weimer / Red Hat Product Security Team
