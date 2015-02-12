X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2015/02/12/3
Message-ID: <20150212141410.GA647@jwilk.net>
Date: Thu, 12 Feb 2015 15:14:10 +0100
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Cc: cve-assign@...re.org
Subject: Re: heap overflow in procmail
Content-Type: text/plain; charset=utf-8

>>https://bugs.debian.org/769937
[...]
>The Debian bug report does not contain diagnosis of the type of 
>programming error that is triggering each crash, so it is not clear 
>how many CVE identifiers must be assigned.

There are two distinct buffer overflows:

* Off-by-one heap overflow when parsing addresses that have left angle 
bracket, then a comma, but no right angle bracket. For example: 
<moo@...mple.com,

* Heap overflow when parsing addresses that end with backslash. For 
example: <moo@...mple.com\

Credit goes to Jan Darmochwal for identifying the root causes.

-- 
Jakub Wilk
