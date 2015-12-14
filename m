X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1125" "Monday" "14" "December" "2015" "22:34:49" "+0100" "Hannes Frederic Sowa" "hannes@stressinduktion.org" "<566F35F9.4070106@stressinduktion.org>" "36" "Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" nil nil nil "12" "2015121421:34:49" "[oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service" (number mark "U       hannes@stres Dec 14   36/1125  " thread-indent "\"Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect cause a denial of service\"\n") "<20151211164118.344948BC165@smtpvmsrv1.mitre.org>" ("<20151211164118.344948BC165@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13762 invoked by uid 550); 14 Dec 2015 21:35:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13661 invoked from network); 14 Dec 2015 21:35:04 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	stressinduktion.org; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=UmypfWhmjsfVd5CL
	VwJMr/L6m1A=; b=jGrRQ9isHH+qb8mZ8wZDAK4TTem4xGB1oLXpRcDjOzwh5yMk
	oYRN/eP/ST2gYGgk9ZIQntl8MmjMot1UHORbqnSkLHx/ACnlnG+HcJ68qsD7zlT7
	LnRu6dwBDyYq8L9SMObh08cnxmk6YkcmXw4UNSNcdyjKufOGkJPpxFQMn1I=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=UmypfWhmjsfVd5C
	LVwJMr/L6m1A=; b=NQWxu99ut/J89Txen8gnZSj+UMgMD9xTzyhJC5fZVjW2PRX
	8L26YPAYTM2JEiIe1aGFaBDK1piF/Wv57+Fue5eQ/H/5mXGgefrq1pAmoFGt2x7+
	LqkXTo6jJ9Ptuy8Jmgp31y5KRgbAtWwJYdCYepvj1HYIlHkvpJWcR2246EXY=
X-Sasl-enc: 0Q3GlApUdtOIvzjBeqtlhtWH2/9xw2D7RQz7d6c1KUsF 1450128891
To: oss-security@lists.openwall.com, guoyonggang@360.cn
References: <20151211164118.344948BC165@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
From: Hannes Frederic Sowa <hannes@stressinduktion.org>
Message-ID: <566F35F9.4070106@stressinduktion.org>
Date: Mon, 14 Dec 2015 22:34:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <20151211164118.344948BC165@smtpvmsrv1.mitre.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: CVE request - Android kernel - IPv6 connect
 cause a denial of service

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

The following patch fixes this issue:

https://git.kernel.org/cgit/linux/kernel/git/davem/net.git/commit/?id=79462ad02e861803b3840cc782248c7359451cd9

It is queued up for -stable.

Thanks,
Hannes
