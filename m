X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["878" "Thursday" "5" "May" "2016" "02:34:51" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<572A871B.5070303@openwall.com>" "21" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050423:34:51" "[oss-security] broken RSA keys" (number mark "        ch3root@open May  5   21/878   " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160504124248.GA15148@openwall.com>" ("<20160504124248.GA15148@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13968 invoked by uid 550); 4 May 2016 23:35:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13948 invoked from network); 4 May 2016 23:35:03 -0000
References: <20160504124248.GA15148@openwall.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <572A871B.5070303@openwall.com>
MIME-Version: 1.0
In-Reply-To: <20160504124248.GA15148@openwall.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Thu, 5 May 2016 02:34:51 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On 2016-05-04 15:42, Solar Designer wrote:
> Now to the point: some of the keys do look to me like they're a result
> of software bugs in key generation.  Specifically, as it was noticed and
> noted by many before, Phuctor's list of broken keys includes many with
> non-prime e of the form intended_e*(2^32+1) - that is, with the 32-bit
> value duplicated across 64 bits.  (I wrote it that way to show that all
> such e's are non-prime.)

Indeed. From 225 keys listed at http://phuctor.nosuchlabs.com/phuctored, 
152 ones have modulus and exponent divisible by 2**32+1:

$ curl -s http://phuctor.nosuchlabs.com/phuctored |
 >   perl -Mbigint -ln0e 'print join " ", map { $_ % (2**32 + 1) } ($1, 
$2) while m{RSA Modulus .N.:.*?<td>(\d+)<.*?<td>(\d+)<}sg' |
 >   grep -c '^0 0$'
152

Modulus and exponent are divisible by 2**32+1 or not simultaneously.

-- 
Alexander Cherepanov
