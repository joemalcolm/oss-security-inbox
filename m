X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["777" "Wednesday" "22" "November" "2017" "12:10:02" "-0500" "Chad Dougherty" "dougherty477@comcast.net" "<8007904f-d86d-783f-35c9-b53aeb025e32@comcast.net>" "21" "Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" nil nil nil "11" "2017112217:10:02" "[oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" (number mark "U       dougherty477 Nov 22   21/777   " thread-indent "\"Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)\"\n") "<CALx_OUCSLH1n0JaBT4XAysVpEQMLF-vGUBtn4dmJ3ED8cZigEg@mail.gmail.com>" ("<CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>" "<20171122081339.eacdjs5pewelvhod@scully.more-magic.net>" "<CALx_OUCSLH1n0JaBT4XAysVpEQMLF-vGUBtn4dmJ3ED8cZigEg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7636 invoked by uid 550); 22 Nov 2017 17:12:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6050 invoked from network); 22 Nov 2017 17:10:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1511370602;
	bh=5T0/eBEp/tlGFHzOsD3HA3n4Aww9+mq3GcKOQtdoZiQ=;
	h=Received:Received:Subject:To:From:Message-ID:Date:MIME-Version:
	 Content-Type;
	b=EK13hvZjdqSPou+doeW8YDtdZEmkfZtbePwyZ+enAAuycb91g0JGvwP4GGOlTzrxF
	 vy4pcXlecM4h0l9XswzB0mhmaQqMblZklYoKoI3JC5nmrNtKy7QdJY4yyiMXk2Xkwx
	 j9pa0yvtpBH4O8h7L3sczqn3A8g7x/7uB7ecTg8EJ+Q9q3U6t+4tD+pB/c/uSQQ2WE
	 SYdtrvXZfiTQtt7sVHQQtSMgdwuXISoYtTLLfRxuxknXrAQcLZ8ulF7TuL0oToSuFS
	 6ZiGENDucaygbNuzGu8npTB/8Wgyg7AtBE1RrPb5rWII0Wg3iRVurJc/MkwIbjXfVg
	 sG/z6wLHMOH4g==
To: oss-security@lists.openwall.com
References: <CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>
 <20171122081339.eacdjs5pewelvhod@scully.more-magic.net>
 <CALx_OUCSLH1n0JaBT4XAysVpEQMLF-vGUBtn4dmJ3ED8cZigEg@mail.gmail.com>
From: Chad Dougherty <dougherty477@comcast.net>
Message-ID: <8007904f-d86d-783f-35c9-b53aeb025e32@comcast.net>
Date: Wed, 22 Nov 2017 12:10:02 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CALx_OUCSLH1n0JaBT4XAysVpEQMLF-vGUBtn4dmJ3ED8cZigEg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfJaASrBRGv/8AKd5AuO3WbP4TvpNfO6bUnTCIDzTpSaUA5+XxDcZoby9edCbYviQudq5IRvQuqzbnydS+cSlyL7hK1JUH+OoFC1y9BF0GMVQsME75OGD
 HvSwQi2DGHXCXIeAg+7TvB3d7I4Tlv8GuxIlVog4uHmZ/IR7sZ8itafUgB9twtD3YrDy7+fbeiLW2HHavJQvX5NvxiU8aQzLCB8=
Subject: Re: [oss-security] Go programming language invalid modular
 exponentiation result (Exp() in math/big pkg)

On 2017-11-22 11:34, Michal Zalewski wrote:
>> Is this fuzzer freely available?  I'd love to try it out on the bignum
>> support I added to the CHICKEN Scheme implementation for its upcoming
>> new major release (probably somewhere mid-2018).  Being able to release
>> it with a bit higher confidence in its correctness would be nice, as this
>> is almost all brand new code.
> 
> Not the same tool, but Hanno released a bignum fuzzer that found quite
> a few issues back in the day:
> 
> https://github.com/hannob/bignum-fuzz/
> 

One more reference that might help you, perhaps indirectly, is 
Ralf-Philipp Weinmann's talk from BlackHat USA 2015, "Assessing and 
Exploiting BigNum Vulnerabilities":

<https://comsecuris.com/slides/slides-bignum-bhus2015.pdf>

-- 
     -Chad
