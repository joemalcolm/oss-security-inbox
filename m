X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2017/06/21/1
Message-ID: <tencent_453378A5461E2AE54D551FA1@qq.com>
Date: Wed, 21 Jun 2017 11:28:17 +0800
From: "fefe" <qbenjin@...com>
To: "Peter Korsgaard" <peter@...sgaard.com>, "wbx" <wbx@...nadk.org>
Cc: "oss-security" <oss-security@...ts.openwall.com>
Subject: Re: two vulns in  uClibc-0.9.33.2
Content-Type: text/plain; charset=utf-8

>> I found two vulns in  uClibc-0.9.33.2 (https://uclibc.org/)

>uClibc is dead. Active development happens on uClibc-ng. Is uClibc-ng
also affected by these issues?


uclibc_ng is also affected.
>> one is about line 2682 of get_subexp.c :

>I take it you are referring to libc/misc/regex/regexec.c?


yes. i am sorry！
