X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2009/02/25/1
Message-ID: <Pine.GSO.4.51.0902242025360.22888@faron.mitre.org>
Date: Tue, 24 Feb 2009 20:29:03 -0500 (EST)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: new dns2tcp buffer overflow in 0.4.2?
Content-Type: text/plain; charset=utf-8


Various vuln databases reported a dns2tcp issue in November, including:

  http://secunia.com/advisories/32514/

Specifically, a buffer overflow in dns_decode() credited to John Lampe.

This does not line up with CVE-2008-3910, which was supposedly fixed in
0.4.1.

Other databases point here:

  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=504468

which is only a fix to a changelog.  But for 0.4.2, the information is
"Suppressed."  For 0.4.3 there's "Fix unsigned int pb and error in
dns_decode (John Lampe)" but may be irrelevant since the claim is that the
issu was fixed in 0.4.2.

This Debian bug ID seems the relevant one:

  http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=504121

which at least says "dns_decode.c contains a security flaw fixed in
0.4.2."

Can anyone confirm whether this is genuinely different from CVE-2008-3910?

Thanks,
Steve
