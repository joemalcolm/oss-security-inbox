X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/10/14/3
Message-ID: <Pine.GSO.4.51.0810141448170.1682@faron.mitre.org>
Date: Tue, 14 Oct 2008 14:48:20 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
cc: coley@...re.org
Subject: Re: CVE request: strongswam denial-of-service
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-4551
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-4551
Reference: MISC:http://labs.mudynamics.com/advisories/MU-200809-01.txt
Reference: CONFIRM:http://download.strongswan.org/CHANGES4.txt
Reference: BID:31291
Reference: URL:http://www.securityfocus.com/bid/31291
Reference: FRSIRT:ADV-2008-2660
Reference: URL:http://www.frsirt.com/english/advisories/2008/2660
Reference: SECTRACK:1020903
Reference: URL:http://www.securitytracker.com/id?1020903
Reference: SECUNIA:31963
Reference: URL:http://secunia.com/advisories/31963

strongSwan 4.2.6 and earlier allows remote attackers to cause a denial
of service (daemon crash) via an IKE_SA_INIT message with a large
number of NULL values in a Key Exchange payload, which triggers a NULL
pointer dereference for the return value of the mpz_export function in
the GNU Multiprecision Library (GMP).


