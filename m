X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/10/18/4
Message-ID: <20181018151038.yocny6uyklflclka@jwilk.net>
Date: Thu, 18 Oct 2018 17:10:38 +0200
From: Jakub Wilk <jwilk@...lk.net>
To: oss-security@...ts.openwall.com
Subject: Re: Travis CI MITM RCE
Content-Type: text/plain; charset=utf-8

* zugtprgfwprz@...rnkuller.de, 2018-08-31, 22:25:
>I.e., my point was that for a given key that's uploaded with a fixed 
>fingerprint, we're not talking about 2^(b/2) collision complexity, but 
>2^(b-1) second preimage complexity.

Nitpicking, but for an ideal n-bit hash function, on avergage you need 
2ⁿ (not 2ⁿ⁻¹) evalutations of the function to find the preimage.

-- 
Jakub Wilk
