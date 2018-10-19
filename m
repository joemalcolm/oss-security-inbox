X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["638" "Friday" "19" "October" "2018" "20:17:54" "+0200" "zugtprgfwprz@spornkuller.de" "zugtprgfwprz@spornkuller.de" "<d737b430-2343-b5a7-d47a-0598b1cd225f@johannes-bauer.com>" "25" "Re: [oss-security] Travis CI MITM RCE" "^Date:" nil nil "10" "2018101918:17:54" "[oss-security] Travis CI MITM RCE" (number mark "        zugtprgfwprz Oct 19   25/638   " thread-indent "\"Re: [oss-security] Travis CI MITM RCE\"\n") "<20181018151038.yocny6uyklflclka@jwilk.net>" ("<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "<20180826005658.GA5795@osmium.pennocktech.home.arpa>" "<87sh2y5tnf.fsf@fifthhorseman.net>" "<3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>" "<20180831121802.4mq7cag23e4fkzoz@raspberrypi>" "<a52da3a0-e371-66ca-acc6-72b4fc922381@johannes-bauer.com>" "<20181018151038.yocny6uyklflclka@jwilk.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29837 invoked by uid 550); 20 Oct 2018 11:01:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8189 invoked from network); 19 Oct 2018 18:18:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=spornkuller.de;
	s=dkim201808; t=1539973074;
	bh=3RBadLB1G1RukiEwpYIcbFzRP0k/VQ3AX3WoOUyynA0=;
	h=Subject:To:From:Autocrypt:Date:From;
	b=ZzdX7SsX1RFV5exla/tJDcKEId24qlkaCO4FM371LiZBP3J9FKeZEGhwBfAIKAWod
	 bHmmtFZ2Iie9Xa+AWXbqt+KsiGNCncTnaAn1CVqRhJHG3Z2ouhdHuumyXg0W1Zsorb
	 cwFdUk97MhaMbn8iL2HSfIRWhCZ0h4zg+cNV+8GgvfnrPp1+qsILB/iMyj9AirjW5P
	 1N6AEKJSgc3GWC4YN0dNSMK67C/STASGwL6u3T97yMY+PqZYFsPdIFkogXa6fjlA4x
	 /Z7EIT6wohL57FXAn18gHzSto1m0YfyjcUNhhLfNxB7RTCFo8OF3iGvJPGPtGHDZkW
	 kRg4Ua5inewaQ==
References: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
 <20180826005658.GA5795@osmium.pennocktech.home.arpa>
 <87sh2y5tnf.fsf@fifthhorseman.net>
 <3e3fad60-244f-e11d-f3c9-4757be6e6f93@johannes-bauer.com>
 <20180831121802.4mq7cag23e4fkzoz@raspberrypi>
 <a52da3a0-e371-66ca-acc6-72b4fc922381@johannes-bauer.com>
 <20181018151038.yocny6uyklflclka@jwilk.net>
Openpgp: preference=signencrypt
Autocrypt: addr=zugtprgfwprz@spornkuller.de; prefer-encrypt=mutual; keydata=
 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
 DcWWbi0nMGS9n3M=
Message-ID: <d737b430-2343-b5a7-d47a-0598b1cd225f@johannes-bauer.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20181018151038.yocny6uyklflclka@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: de-LU
Content-Transfer-Encoding: 8bit
Date: Fri, 19 Oct 2018 20:17:54 +0200
From: zugtprgfwprz@spornkuller.de
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Travis CI MITM RCE
To: oss-security@lists.openwall.com

Hey Jakub,

On 18.10.2018 17:10, Jakub Wilk wrote:

> Nitpicking, but for an ideal n-bit hash function, on avergage you need
> 2ⁿ (not 2ⁿ⁻¹) evalutations of the function to find the preimage.

Huh, wow! I would also have had the gut-feeling of 2^(n-1) and had to
code a little program to verify the facts:

import hashlib
ps = [ ]
for q in range(20000):
	for p in range(10000):
		z = q | (p << 32)
		z = int.to_bytes(z, length = 8, byteorder = "little")
		if hashlib.md5(z).digest()[0] == 0:
			break
	ps.append(p)
print(sum(ps) / len(ps))

And indeed, you're absolutely correct. Thanks for the comment!

Have a great weekend,
Joe
