X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/08/06/8
Message-ID: <2dc37111-fd35-e10e-0162-1bdad2e80f5e@vulndisco.cc>
Date: Sat, 6 Aug 2022 22:46:42 +0300
From: Evgeny Legerov <admin@...ndisco.cc>
To: oss-security@...ts.openwall.com
Subject: Exim < 4.95 heap overflow
Content-Type: text/plain; charset=utf-8

Hi,


Here is another bug which has been silently fixed in Exim.

It has not been recognized as a security issue, many distros still don't 
have this patch.

Original report + patch  is here - 
https://github.com/Exim/exim/commit/d4bc023436e4cce7c23c5f8bb5199e178b4cc743

Analysis of the bug  - https://github.com/ivd38/exim_overflow

I don't post here because it is huge snippet of code.


regards,

-e



