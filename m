X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1253" "Wednesday" "4" "May" "2016" "22:22:32" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<572A4BF8.9010303@openwall.com>" "36" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050419:22:32" "[oss-security] broken RSA keys" (number mark "        ch3root@open May  4   36/1253  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160504180121.GA20669@openwall.com>" ("<20160504124248.GA15148@openwall.com>" "<20160504172803.GA19393@openwall.com>" "<20160504180121.GA20669@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7209 invoked by uid 550); 4 May 2016 19:22:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7183 invoked from network); 4 May 2016 19:22:45 -0000
References: <20160504124248.GA15148@openwall.com>
 <20160504172803.GA19393@openwall.com> <20160504180121.GA20669@openwall.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <572A4BF8.9010303@openwall.com>
MIME-Version: 1.0
In-Reply-To: <20160504180121.GA20669@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 4 May 2016 22:22:32 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On 05/04/2016 09:01 PM, Solar Designer wrote:
> On Wed, May 04, 2016 at 08:28:03PM +0300, Solar Designer wrote:
>> BTW, had I not realized the above, I would now come up with an even more
>> complex conspiracy theory about 149784613473514443594783892995, which is
>> 0x1E3FAEDA6A4F093A7C0F5A603, so:
>>
>> limb[0] = 0xC0F5A603
>> limb[1] = 0xA4F093A7
>> limb[2] = 0xE3FAEDA6
>> limb[3] = 1
>>
>> which satisfies:
>>
>> limb[1] = limb[0] + limb[2] + 2
>>
>> No idea why it's "+ 2" here
>
> Actually, it's "- 2", not "+ 2".  Sorry.  Not that it matters, but I was
> uncomfortable leaving the error uncorrected in case someone wants to try
> and figure out why exactly this artifact manifests itself like it does.
>
> There's probably an explanation of why the algorithm is likely to hit
> numbers of this form, but this is beside the point for software bugs,
> which is what I want us to discuss further in this thread.

Quoted relationship between limbs holds only mod 2**32 and written 
without wrapping looks like this:

limb[1] = limb[0] + limb[2] - 2 - 2**32

It also means that the original number is a multiple of 2**32 + 1. More 
precisely, it's a product of 2**32 + 1 and a number with limbs (1, 
limb[2] - 2, limb[0]).

-- 
Alexander Cherepanov
