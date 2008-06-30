X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2008/06/30/3
Message-Id: <200806301749.54012.ludwig.nussel@suse.de>
Date: Mon, 30 Jun 2008 17:49:53 +0200
From: Ludwig Nussel <ludwig.nussel@...e.de>
To: oss-security@...ts.openwall.com
Subject: openldap DoS
Content-Type: text/plain; charset=utf-8

Hi,

Remote unauthenticated attackers can trigger an assertion in the ASN.1 BER
decoding of openlap and crash the server:
http://www.openldap.org/its/index.cgi/Software%20Bugs?id=5580;selectid=5580

cu
Ludwig

-- 
 (o_   Ludwig Nussel
 //\   
 V_/_  http://www.suse.de/
SUSE LINUX Products GmbH, GF: Markus Rex, HRB 16746 (AG Nuernberg)


