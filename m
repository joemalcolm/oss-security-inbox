X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/08/22/1
Message-ID: <87r5v49gy8.fsf@mid.deneb.enyo.de>
Date: Sat, 22 Aug 2009 14:22:07 +0200
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Subject: Using NSS (Netscape Security Services) in setuid programs
Content-Type: text/plain; charset=utf-8

NSS (the crypto library from Mozilla) uses environment variables to
enable various dodgy features which no longer seem good ideas.
Obviously, this is a problem when the library is used in a context
where the attacker can set environment variables.  For instance, if a
PAM module uses NSS to establish a TLS connection for authentication
purposes, this allows a local attacker to enable features which make
it easier to impersonate the authentication server.

I couldn't find any programs which might suffer from such a problem,
though.
