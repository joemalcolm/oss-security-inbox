X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/06/16/1
Message-ID: <3a80a443-a4a0-a8e0-15a1-26a75e39acbe@ruhr-uni-bochum.de>
Date: Sat, 16 Jun 2018 12:42:37 +0200
From: Marcus Brinkmann <marcus.brinkmann@...r-uni-bochum.de>
To: oss-security@...ts.openwall.com
Subject: Re: CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)
Content-Type: text/plain; charset=utf-8

Hi,

On 06/15/2018 07:28 PM, Jakub Wilk wrote:
> Thanks for doing this. I didn't mean to imply that you were not diligent> enough.

I didn't take it that way!

>> You reporting these?
> 
> I was hoping somebody else would take care of this.

Hehe, everybody does. Luckily, we found some hackers in Mauritius taking
care of it!

First results:

bitcoin:
https://github.com/bitcoin/bitcoin/commit/9e2e5626dabb7208dafedcc9904940b666be1c3b

litecoin: https://github.com/litecoin-project/litecoin/pull/503

Thx,
Marcus
