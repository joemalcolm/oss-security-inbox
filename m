X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2022/01/20/4
Message-ID: <Yem60C2ibSoIyAMt@carcharodon.zash.se>
Date: Thu, 20 Jan 2022 20:41:24 +0100
From: Kim Alvefur <zash@...h.se>
To: oss-security@...ts.openwall.com
Subject: Re: Prosody XMPP server advisory 2022-01-13 (Remote Unauthenticated Denial of Service) (CVE-2022-0217)
Content-Type: text/plain; charset=utf-8

Hi,

The fix for this issue introduced a regression in the from of a memory
leak (of the unintentional reference variety, not a true leak).

A fix for can be found in this commit:
https://hg.prosody.im/trunk/rev/e5e0ab93d7f4

-- 
Regards,
Kim "Zash" Alvefur

Download attachment "signature.asc" of type "application/pgp-signature" (834 bytes)
