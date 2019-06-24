X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2019/06/24/7
Message-ID: <alpine.LRH.2.21.1906241152180.4597@fairfax.gathman.org>
Date: Mon, 24 Jun 2019 11:59:43 -0400 (EDT)
From: "Stuart D. Gathman" <stuart@...hman.org>
To: oss-security@...ts.openwall.com
Subject: Re: Thousands of vulnerabilities, almost no CVEs: OSS-Fuzz
Content-Type: text/plain; charset=utf-8

On Mon, 24 Jun 2019, Bob Friesenhahn wrote:

> Most oss-fuzz issue detections are not CVE worthy.  For example, a one-byte 
> read "heap overflow" is not likely to cause any actual harm but oss-fuzz 
> would classify it as "heap overflow".

Nevertheless, it is a bug.  Fuzzers are amazing.  Going forward, the
best plan is for more projects to include fuzzing as part of the
build process testing.

Question: is fuzzing useful for languages like Java/python?  Obviously,
you eventually reach a native code module in both cases, but fuzzing 
the entire virtual machine is cumbersome.  Maybe native code libraries
for "safe" languages should include fuzzing as part of testing.

-- 
 	      Stuart D. Gathman <stuart@...hman.org>
"Confutatis maledictis, flamis acribus addictis" - background song for
a Microsoft sponsored "Where do you want to go from here?" commercial.
