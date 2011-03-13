X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/03/13/2
Message-ID: <AANLkTi==q852L4JvSepd4=4zzMwhU8poK_CmoEAM6kqf@mail.gmail.com>
Date: Sun, 13 Mar 2011 11:00:10 -0300
From: Felipe Pena <felipensp@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: PHP substr_replace() use-after-free
Content-Type: text/plain; charset=utf-8

Hi,

I just found an use-after-free in PHP's substr_replace() function caused by
passing the same variable multiple times to the function, which makes the
PHP to use the same pointer in three variables inside the function, so when
the pointer is changed by a type conversion inside the function, it invalids
the other variables.

The PHP security team has seen noticed, and a bug already was filed in the
bugtracker (http://bugs.php.net/bug.php?id=54238 [private])

$ sapi/cli/php ../bug.php
array(1) {
[0]=>
string(5) "0Ȅ y"
}
array(1) {
[0]=>
string(1) "0"
}


Thanks.

-- 
Regards,
Felipe Pena

