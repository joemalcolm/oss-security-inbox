X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1224" "Friday" "15" "June" "2018" "16:43:51" "+0200" "Marcus Brinkmann" "marcus.brinkmann@ruhr-uni-bochum.de" "<e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>" "28" "Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" "^Date:" nil nil "6" "2018061514:43:51" "[oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" (number mark "        marcus.brink Jun 15   28/1224  " thread-indent "\"Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)\"\n") "<20180614222021.6jguso4l7vqbjqyk@jwilk.net>" ("<c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>" "<20180614222021.6jguso4l7vqbjqyk@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1952 invoked by uid 550); 15 Jun 2018 15:24:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32630 invoked from network); 15 Jun 2018 14:44:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruhr-uni-bochum.de;
	s=mail-2017; t=1529073835;
	bh=k4iUcdZnALF58se8Mou2VTgW1zNGKBnhE8PKLvaNPG0=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=DagAd8aAzKMfSlssK40uSzSSgc1/BvN6UcQaFCSpg6//txBRkpNict46TNC2J6mBZ
	 G8L6YqSzYMDrUSPStcOuIl21MIbCoMa+0OoLhXMTn3KCORq3WS4jvTTWGqxxiU3Drc
	 //3M9dbMxekoaJ0tdxI62X6cSCVjqtEGi6awRQHc=
X-Envelope-Sender: <marcus.brinkmann@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
References: <c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>
 <20180614222021.6jguso4l7vqbjqyk@jwilk.net>
Openpgp: preference=signencrypt
Message-ID: <e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20180614222021.6jguso4l7vqbjqyk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.99.4 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Date: Fri, 15 Jun 2018 16:43:51 +0200
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-12356 Breaking signature verification in
 pass (Simple Password Store)
To: oss-security@lists.openwall.com

On 06/15/2018 12:20 AM, Jakub Wilk wrote:
> * Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>, 2018-06-14,
> 23:46:
>> CVE-2018-12356: An issue was discovered in password-store.sh in pass
>> in Simple Password Store 1.7 through 1.7.1. The signature verification
>> routine parses the output of GnuPG with an incomplete regular
>> expression, which allows remote attackers to spoof file signatures on
>> configuration files and extensions scripts
> [...]
>> https://neopg.io/blog/pass-signature-spoof/
> 
> In the blog post you write that the fixed regexp is "^[GNUPG:]", but
> that would be really bad. :) I think you meant "^\[GNUPG:\]".

Thanks, fixed.

> There's apparently more software that uses unachored "\[GNUPG:\]":
> https://codesearch.debian.net/search?q=%5B%5E%5E%5D%5C%5C%5C%5BGNUPG%3A%5C%5C%5C%5D

Yes. I did two weeks of due diligence on the important package managers,
Git, and anything I could think of that is critical. But I am not saying
what I looked at, because there might be something I missed, and I want
everybody to join in and have a fresh look. It is too much for a single
person.

I didn't know about Debian code search, so thanks for the tip.

You reporting these? If not, I can do it.
