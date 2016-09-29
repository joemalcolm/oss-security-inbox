X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/09/29/19
Message-ID: <20160929170403.7226d30f@hboeck.de>
Date: Thu, 29 Sep 2016 17:04:03 +0200
From: Hanno Böck <hanno@...eck.de>
To: oss-security@...ts.openwall.com
Subject: Re: [SECURITY ADVISORY] c-ares: single byte out of buffer write
Content-Type: text/plain; charset=utf-8

Hi,

Just quick:
This is a very typical bug class that libfuzzer can find very well.
libfuzzer is like afl, but for functions instead of executables.

I have attached a sample code for libfuzzer which shows how this works.
(In case anyone cares: Consider it being public domain / CC0 / whatever
licensing terms you like)

Takes only a few seconds without any starting corpus to find this bug.

-- 
Hanno Böck
https://hboeck.de/

mail/jabber: hanno@...eck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42

View attachment "libfuzzer-ares_create_query.cpp" of type "text/x-c++src" (434 bytes)

Content of type "application/pgp-signature" skipped
