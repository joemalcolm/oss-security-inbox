X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/06/14/7
Message-ID: <CAKG8Do5XPLJTJR9iaTRMOtFFZYan_Eeaf7KxxLWDgWiUQDsEbw@mail.gmail.com>
Date: Tue, 14 Jun 2016 16:12:25 +0200
From: Cedric Buissart <cbuissar@...hat.com>
To: oss-security@...ts.openwall.com, cve-assign@...re.org
Subject: CVE request: Python HTTP header injection in urrlib2/urllib/httplib/http.client
Content-Type: text/plain; charset=utf-8

Hi,

I would like to request a CVE for a Python header injection flaw in
urrlib2/urllib/httplib/http.client.

HTTPConnection.putheader() allows unsafe characters, which can be used to
inject additional headers.

Upstream bug with reproducer :
https://bugs.python.org/issue22928


Kind regards,


-- 
Cedric Buissart,
Product Security

Purkynova 99
Brno 612 45

