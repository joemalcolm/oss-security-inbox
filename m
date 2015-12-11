X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1034" "Friday" "11" "December" "2015" "18:47:35" "+0100" "Hannes Frederic Sowa" "hannes@stressinduktion.org" "<566B0C37.9020603@stressinduktion.org>" "35" "Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" nil nil nil "12" "2015121117:47:35" "[oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" (number mark "U       hannes@stres Dec 11   35/1034  " thread-indent "\"Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service\"\n") "<20151211164118.344948BC165@smtpvmsrv1.mitre.org>" ("<20151211164118.344948BC165@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11513 invoked by uid 550); 11 Dec 2015 17:47:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11490 invoked from network); 11 Dec 2015 17:47:53 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	stressinduktion.org; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=mP8eS2EVcGn8CIqw
	lIaMsWL/9xM=; b=Ky0AfD2/779SsqHSws5NT9QF0QFs6GnpykvjXZzX3bCXYuaH
	KLrtufTZZD7igQd7rYQ3o2A3YoQaE0guRrCxz/oX4m1inGYFhIU+bON7lchqoBYm
	oA5+iRwaDgJpip3P0ADuYVUNGl+4ghteQ5LzkbdD/3eYnsgsmMcyHc3iMyQ=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=mP8eS2EVcGn8CIq
	wlIaMsWL/9xM=; b=beafv9qMi8tb2az0M5XemeB2LvRlWdjK6LAHd3my4dB0Uk1
	lWUTlIASqCBlFGbBqwsx2JP/pJUa201W/W5H4uSrDng8R0qnNs556JgKOT3YGcgF
	1Iyh8pnjLKbrVZ/8tSTmadLyRoEGrv3diWUJZInZY12HO2kP8V3GCCBHEumc=
X-Sasl-enc: L3QTGuIFjytb6vn0mb1VwqT5WSywCdWUWruB+JIM423X 1449856057
To: oss-security@lists.openwall.com, guoyonggang@360.cn
References: <20151211164118.344948BC165@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
From: Hannes Frederic Sowa <hannes@stressinduktion.org>
Message-ID: <566B0C37.9020603@stressinduktion.org>
Date: Fri, 11 Dec 2015 18:47:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <20151211164118.344948BC165@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect
 cause a denial of service

Hello,

On 11.12.2015 17:41, cve-assign@mitre.org wrote:
>> net/ipv4/af_inet.c
>> inet_autobind
> 
>> if (sk->sk_prot->get_port(sk, 0)) {
> 
>>> if the sk->sk_prot->get_port is NULL
> 
>>> [ an unanticipated condition ]
> 
>>> Solution:
>>> if (sk->sk_prot->get_port &&sk->sk_prot->get_port(sk, 0)) {
> 
>>>> From: Hannes Frederic Sowa <hannes@stressinduktion.org>
>>>> Date: Wed, 9 Dec 2015 15:31:32 +0100
> 
>>>> I fear your solution
>>>> just papers over the bug and will leave the port in a half initialized
>>>> state.
> 
> Use CVE-2015-8543 for the originally identified bug. We realize that,
> for example,
> http://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/net/ipv4/af_inet.c
> has not yet been changed. If Linux kernel developers determine that
> multiple independent bugs result in situations where
> sk->sk_prot->get_port is NULL above, then it is possible that
> additional CVE IDs will be assigned later.

I have a fix in my queue and push it to stable, soon. Thanks again for
this report!

Bye,
Hannes
