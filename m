X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["340" "Wednesday" "4" "May" "2016" "21:42:47" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<572A42A7.90407@openwall.com>" "11" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050418:42:47" "[oss-security] broken RSA keys" (number mark "        ch3root@open May  4   11/340   " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160504124248.GA15148@openwall.com>" ("<20160504124248.GA15148@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25716 invoked by uid 550); 4 May 2016 18:43:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25698 invoked from network); 4 May 2016 18:42:59 -0000
References: <20160504124248.GA15148@openwall.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <572A42A7.90407@openwall.com>
MIME-Version: 1.0
In-Reply-To: <20160504124248.GA15148@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 4 May 2016 21:42:47 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On 05/04/2016 03:42 PM, Solar Designer wrote:
> 0x115CFF61CFECFF61BE9, where we see three 32-bit limbs satisfying:
>
> limb[1] = limb[0] + limb[2]

This just means that the number came from two-limb number with limbs 
limb_src[1] = limb[1] - limb[0] and limb_src[0] = limb[0] by multiplying 
it by 2**32 + 1. HTH.

-- 
Alexander Cherepanov
