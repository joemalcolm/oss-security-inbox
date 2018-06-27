X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/27/3
Message-ID: <a75f7cf8-c89a-b431-e7a7-58f43c2f6b2f@ddent.net>
Date: Tue, 26 Jun 2018 17:56:18 -0700
From: oss-security-list@...tactdaniel.net
To: oss-security@...ts.openwall.com
Subject: rclone data exflitration / unauthorized API use
Content-Type: text/plain; charset=utf-8

Due to it's reliance on vulnerable upstream vendor SDKs & APIs, all 
current versions of 'rclone' are subject to a variety of attacks.

This vulnerability is an instance of a class of security vulnerabilities 
that affect a wide variety of software. Any API which has clients 
perform actions on arbitrary URLs chosen by the API server will lead to 
this class of attack becoming a concern.

Current Google Cloud Storage SDKs/APIs, Backblaze B2 APIs, and Yandex 
Disk APIs are affected.

No CVE is presently assigned.

Further details at: 
https://www.danieldent.com/blog/restless-vulnerability-non-browser-cross-domain-http-request-attacks/

-- 
Daniel Dent
https://www.danieldent.com/	

