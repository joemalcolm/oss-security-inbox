X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/07/01/3
Message-ID: <Pine.GSO.4.51.0807011647030.19497@faron.mitre.org>
Date: Tue, 1 Jul 2008 16:54:51 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: openldap DoS
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-2952
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-2952
Reference: CONFIRM:http://www.openldap.org/its/index.cgi/Software%20Bugs?id=5580;selectid=5580

liblber/io.c in OpenLDAP 2.3.41, 2.3.42, and possibly other versions
allows remote attackers to cause a denial of service (program
termination) via crafted ASN.1 BER datagrams, which triggers an
assertion error.


