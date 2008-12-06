X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/12/06/2
Message-ID: <87bpvpmx4c.fsf@mid.deneb.enyo.de>
Date: Sat, 06 Dec 2008 11:11:31 +0100
From: Florian Weimer <fw@...eb.enyo.de>
To: oss-security@...ts.openwall.com
Cc: coley@...re.org
Subject: CVE request: weak PRNG in GNU Classpath
Content-Type: text/plain; charset=utf-8

<http://gcc.gnu.org/bugzilla/show_bug.cgi?id=38417>

The random number generator in the gnu.java.security.util.PRNG class
of GNU Classpath version 0.97.2 and earlier produces only a limited
number of distinct byte streams, which may lead to guessable
cryptographic key material and similar vulnerabilities.
