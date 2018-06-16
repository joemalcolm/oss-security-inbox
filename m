X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["514" "Saturday" "16" "June" "2018" "12:42:37" "+0200" "Marcus Brinkmann" "marcus.brinkmann@ruhr-uni-bochum.de" "<3a80a443-a4a0-a8e0-15a1-26a75e39acbe@ruhr-uni-bochum.de>" "23" "Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" "^Date:" nil nil "6" "2018061610:42:37" "[oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" (number mark "        marcus.brink Jun 16   23/514   " thread-indent "\"Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)\"\n") "<20180615172836.7tlljvthvyzjxrma@jwilk.net>" ("<c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>" "<20180614222021.6jguso4l7vqbjqyk@jwilk.net>" "<e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>" "<20180615172836.7tlljvthvyzjxrma@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18075 invoked by uid 550); 16 Jun 2018 10:56:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7203 invoked from network); 16 Jun 2018 10:42:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruhr-uni-bochum.de;
	s=mail-2017; t=1529145760;
	bh=6dRksVsWAlmrP+3Ep5NjbRLRQ6W2cYLNTN4/siMfQT0=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=UNs1nBYLqGgq7eTqdSog5Ll/vVV6o9G6o36hXyTiUu4DCfpx6M/5LaWGfJ7VvSzEP
	 INE+gR7mIhRv0MeU1F52K0iI3Wh+Pv0nT6zrs8kIZKxEgkjyL5353uw43cKSIqCLn2
	 fgZ9/LNTR/Ov+DdmVH+ea43oML0W++xF2epCe3S0=
X-Envelope-Sender: <marcus.brinkmann@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
References: <c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>
 <20180614222021.6jguso4l7vqbjqyk@jwilk.net>
 <e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>
 <20180615172836.7tlljvthvyzjxrma@jwilk.net>
Openpgp: preference=signencrypt
Message-ID: <3a80a443-a4a0-a8e0-15a1-26a75e39acbe@ruhr-uni-bochum.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20180615172836.7tlljvthvyzjxrma@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.99.4 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Date: Sat, 16 Jun 2018 12:42:37 +0200
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-12356 Breaking signature verification in
 pass (Simple Password Store)
To: oss-security@lists.openwall.com

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
