X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/05/07/5
Message-ID: <Pine.GSO.4.51.0805071635090.5663@faron.mitre.org>
Date: Wed, 7 May 2008 16:35:13 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: Tomas Hoger <thoger@...hat.com>
cc: oss-security@...ts.openwall.com, coley@...re.org
Subject: Re: CVE id request - libid3tag
Content-Type: text/plain; charset=utf-8


======================================================
Name: CVE-2008-2109
Status: Candidate
URL: http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-2109
Reference: CONFIRM:http://bugs.gentoo.org/show_bug.cgi?id=210564
Reference: MLIST:[mad-dev] 20080112 Initite loop bug in libid3tag-0.15.0b
Reference: URL:http://www.mars.org/mailman/public/mad-dev/2008-January/001366.html

field.c in the libid3tag 0.15.0b library allows context-dependent
attackers to cause a denial of service (CPU consumption) via an
ID3_FIELD_TYPE_STRINGLIST field that ends in '\0', which triggers an
infinite loop.


