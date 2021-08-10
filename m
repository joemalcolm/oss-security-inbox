X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2021/08/10/4
Message-ID: <20210810134156.GF1599104@hal>
Date: Tue, 10 Aug 2021 15:41:56 +0200
From: Guido Berhoerster <guido+openwall.com@...hoerster.name>
To: oss-security@...ts.openwall.com
Subject: Re: STARTTLS vulnerabilities
Content-Type: text/plain; charset=utf-8

Hi,

have you or are you planning to look into XMPP client/server
implementations as well?  The use of STARTTLS for both c2s and s2s
connections is still prevalent both in terms of implementation
support and actual practice and could potentially suffer form the
same issues (command injection or downgrade attacks).
-- 
Guido Berhoerster
