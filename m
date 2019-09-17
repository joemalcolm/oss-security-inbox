X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1040" "Tuesday" "17" "September" "2019" "14:57:34" "-0400" "Thomas Ward" "teward@thomas-ward.net" nil "28" nil "^Date:" nil nil "9" nil nil (number mark "        teward@thoma Sep 17   28/1040  " thread-indent "\"Re: [oss-security] OpenDMARC buffer overflows\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] OpenDMARC buffer overflows" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11564 invoked by uid 550); 17 Sep 2019 19:36:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3829 invoked from network); 17 Sep 2019 18:57:55 -0000
DMARC-Filter: OpenDMARC Filter v1.3.2 mgw.thomas-ward.net A25831A09B6
Authentication-Results: mgw.thomas-ward.net/A25831A09B6; dmarc=none (p=none dis=none) header.from=thomas-ward.net
Authentication-Results: mgw.thomas-ward.net; dkim=none; dkim-atps=neutral
DMARC-Filter: OpenDMARC Filter v1.3.2 mgw.thomas-ward.net 76AAE1A0768
Authentication-Results: mgw.thomas-ward.net/76AAE1A0768; dmarc=none (p=none dis=none) header.from=thomas-ward.net
Authentication-Results: mgw.thomas-ward.net; dkim=none; dkim-atps=neutral
References: <20190917195826.1cdb3e39@computer> <87ftkuaioq.fsf@alyssa.is>
Message-ID: <5f571403-9a7f-2967-737d-e8b754c288d8@thomas-ward.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <87ftkuaioq.fsf@alyssa.is>
Content-Type: multipart/alternative;
 boundary="------------F722D26BF4BF64200BECF9DE"
Content-Language: en-US
Date: Tue, 17 Sep 2019 14:57:34 -0400
From: Thomas Ward <teward@thomas-ward.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenDMARC buffer overflows
To: oss-security@lists.openwall.com, Alyssa Ross <hi@alyssa.is>,
 =?UTF-8?Q?Hanno_B=c3=b6ck?= <hanno@hboeck.de>

--------------F722D26BF4BF64200BECF9DE
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 9/17/19 2:20 PM, Alyssa Ross wrote:
> Hanno Böck <hanno@hboeck.de> writes:
>
>> In light of the recent OpenDMARC issue I had a look at their Github PR
>> tracker. This one
>> https://github.com/trusteddomainproject/OpenDMARC/pull/45
>> caught my attention.
> So a signature bypass, a buffer overflow, and no activity in years
> despite vulnerabilities having been reported months ago?
>
> Certainly doesn't look like software that people should be relying on
> for security...

... which is why I think distros are distro-patching it, like Scott 
Kitterman is doing for Debian.

I have a host of other detections in line with OpenDMARC for detecting 
invalid message structure, though, but it's definitely concerning to see 
something like this - one of the few DMARC checkers that actually exists 
in the OSS world - to be so behind from a Security perspective...


--------------F722D26BF4BF64200BECF9DE--

