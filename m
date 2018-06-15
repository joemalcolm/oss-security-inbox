X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["753" "Friday" "15" "June" "2018" "19:28:36" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180615172836.7tlljvthvyzjxrma@jwilk.net>" "22" "Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" "^Date:" nil nil "6" "2018061517:28:36" "[oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)" (number mark "        jwilk@jwilk. Jun 15   22/753   " thread-indent "\"Re: [oss-security] CVE-2018-12356 Breaking signature verification in pass (Simple Password Store)\"\n") "<e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>" ("<c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>" "<20180614222021.6jguso4l7vqbjqyk@jwilk.net>" "<e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29748 invoked by uid 550); 15 Jun 2018 17:28:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29730 invoked from network); 15 Jun 2018 17:28:51 -0000
Message-ID: <20180615172836.7tlljvthvyzjxrma@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <c0e1a287-f18b-252e-3509-131db823264c@ruhr-uni-bochum.de>
 <20180614222021.6jguso4l7vqbjqyk@jwilk.net>
 <e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <e7583e33-54d9-6548-d55e-531f3fc4a040@ruhr-uni-bochum.de>
User-Agent: NeoMutt/20180512
X-Ovh-Tracer-Id: 17818210450981312422
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedthedrleeigddutdejucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Fri, 15 Jun 2018 19:28:36 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2018-12356 Breaking signature verification in
 pass (Simple Password Store)
To: oss-security@lists.openwall.com

* Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>, 2018-06-15, 16:43:
>>There's apparently more software that uses unachored "\[GNUPG:\]":
>>https://codesearch.debian.net/search?q=%5B%5E%5E%5D%5C%5C%5C%5BGNUPG%3A%5C%5C%5C%5D
>Yes. I did two weeks of due diligence on the important package 
>managers, Git, and anything I could think of that is critical. But I am 
>not saying what I looked at, because there might be something I missed, 
>and I want everybody to join in and have a fresh look. It is too much 
>for a single person.

Thanks for doing this. I didn't mean to imply that you were not diligent 
enough.

>You reporting these?

I was hoping somebody else would take care of this.

>If not, I can do it.

Please do! :-)

-- 
Jakub Wilk
