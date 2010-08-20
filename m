X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/08/20/9
Message-ID: <Pine.GSO.4.64.1008201256450.1035@faron.mitre.org>
Date: Fri, 20 Aug 2010 12:59:15 -0400 (EDT)
From: "Steven M. Christey" <coley@...us.mitre.org>
To: oss-security@...ts.openwall.com
Subject: Re: CVE request: PHP MOPS-2010-56..60
Content-Type: text/plain; charset=utf-8


Apologies to everyone, especially Moritz who pinged me on this privately a 
while ago.

Some of these CVEs are SPLIT based on very narrow distinctions between 
types of buffer overflows, where others might have merged.  This is one 
area where there can be some variability in CVE assignments depending on 
the amount of available information.


CVE-2010-3062

   - MOPS-2010-056, MOPS-2010-057
   - buffer overflow with untrusted length

CVE-2010-3063

   - MOPS-2010-058
   - buffer overflow with calculation error

CVE-2010-3064

   - MOPS-2010-059
   - classic overflow

CVE-2010-3065
   - MOPS-2010-060
   - session deserializer data injection



- Steve
