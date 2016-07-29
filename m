X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2016/07/29/1
Message-ID: <5345031.MCQBvQ03yp@willoughby>
Date: Fri, 29 Jul 2016 09:31:04 +0200
From: Agostino Sarubbo <ago@...too.org>
To: cve-assign@...re.org
Cc: oss-security@...ts.openwall.com
Subject: Re: Re: paps: heap overflow when processing crafted file
Content-Type: text/plain; charset=utf-8

On Thursday 28 July 2016 17:01:38 cve-assign@...re.org wrote:
> Also, the patch is apparently only about handling empty files,

The bug comes from the fuzzer, which did not pass an empty file.
Later, I discovered that an empty file has the same behaviour of 
the crafted.

In other words:
- The same crash happen for the empty and crafted file.
- The patch covers both cases (when the file is empty and when 
contains random data).

--
Agostino Sarubbo

