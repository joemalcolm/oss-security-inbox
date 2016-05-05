X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1874" "Thursday" "5" "May" "2016" "17:21:46" "+0300" "Alexander Cherepanov" "ch3root@openwall.com" "<572B56FA.1030507@openwall.com>" "35" "Re: [oss-security] broken RSA keys" "^Date:" nil nil "5" "2016050514:21:46" "[oss-security] broken RSA keys" (number mark "        ch3root@open May  5   35/1874  " thread-indent "\"Re: [oss-security] broken RSA keys\"\n") "<20160505112350.66f699b5@pc1>" ("<20160504124248.GA15148@openwall.com>" "<20160505112350.66f699b5@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9487 invoked by uid 550); 5 May 2016 14:21:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9469 invoked from network); 5 May 2016 14:21:57 -0000
References: <20160504124248.GA15148@openwall.com>
 <20160505112350.66f699b5@pc1>
X-Enigmail-Draft-Status: N1110
Message-ID: <572B56FA.1030507@openwall.com>
MIME-Version: 1.0
In-Reply-To: <20160505112350.66f699b5@pc1>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Thu, 5 May 2016 17:21:46 +0300
From: Alexander Cherepanov <ch3root@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] broken RSA keys
To: oss-security@lists.openwall.com

On 2016-05-05 12:23, Hanno Böck wrote:
> What one will find are 273 vulnerable moduli.

I've took a look.

174 moduli are divisible by 2**32+1. All of them consist of duplicated 
32-bit limbs, as we have already seen in previous examples. There are no 
exponents in the set, so I've only checked moduli.

214 moduli are both in this set and in the phuctor set. There are 11 
moduli that are in phuctor only:

http://phuctor.nosuchlabs.com/gpgkey/8382619625FF6F7D4A9D62B3DA6CD70227AE2FE8329BAEDCB1B84A7D7B01F43B
http://phuctor.nosuchlabs.com/gpgkey/70B3180A25B248F090A74547A31373B2BFB1AE203632D24A26181CE0B0E1D24B
http://phuctor.nosuchlabs.com/gpgkey/BC8A4290FD0B2F36F20B7CF469D06CACB67204EE47E9E38C4077699C95F190C1
http://phuctor.nosuchlabs.com/gpgkey/73B5D08E0F43710FC8E04037FFDE987E9C2F648297F9D24CE29D4068A7B86964
http://phuctor.nosuchlabs.com/gpgkey/94E0C9E553C74A3A837160998693F14D8895AED0F4575565CBC3EB94DA4DE610
http://phuctor.nosuchlabs.com/gpgkey/3C76C921ACD9ED4BE60ECD06C341CD8F18952E398C63CD4C958503DA9E42C1B2
http://phuctor.nosuchlabs.com/gpgkey/07C61F68A5980FFB9272A759B577A7338D559B2EF7E17FA24AC14F62808B46E2
http://phuctor.nosuchlabs.com/gpgkey/B731C95FA850A5B27F1A5FC534AA85C6768AF95600A3F1DEC3A63E78F0AA48C9
http://phuctor.nosuchlabs.com/gpgkey/01DD7A44EC310DA9E8EB4726A32C322F6990CE6EFC4CFAA44486AA8619C21894
http://phuctor.nosuchlabs.com/gpgkey/90BC6D88C26403285CF4A89F6E0501D31AD908A598A81BB09E41E0C981C24091
http://phuctor.nosuchlabs.com/gpgkey/65B890243C97BE24B5089EA8B1F6A3BDA129651C31BD33A106BD44ECD8FD8E95

> I'll upload a keyids file to the pgpmoduli repo:
> https://github.com/hannob/pgpmoduli
>
> The way to interpret that data is that line numbers match. I.e. the gcd
> in line 10 of gcds matches the modulus in line 10 of vulnerable_moduli
> and the keyid in line 10 of keyids etc.

There are only 259 keyids though.

-- 
Alexander Cherepanov
