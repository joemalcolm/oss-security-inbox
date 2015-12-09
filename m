X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1112" "Wednesday" "9" "December" "2015" "15:31:32" "+0100" "Hannes Frederic Sowa" "hannes@stressinduktion.org" "<56683B44.1070305@stressinduktion.org>" "39" "Re: [oss-security] CVE request - Android kernel - IPv6 connect cause a denial of service" nil nil nil "12" "2015120914:31:32" "[oss-security] CVE request - Android kernel - IPv6 connect cause a denial of service" (number mark "U       hannes@stres Dec  9   39/1112  " thread-indent "\"Re: [oss-security] CVE request - Android kernel - IPv6 connect cause a denial of service\"\n") "<2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>" ("<2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8035 invoked by uid 550); 9 Dec 2015 14:31:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8010 invoked from network); 9 Dec 2015 14:31:46 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	stressinduktion.org; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=pSPLIqmaU07GeaDU
	aGSgCPI76a8=; b=pYa7jm1Grjdh+JrIVdw9Tfdm38jSc/4RwU3e0z8PoApxu5hJ
	JQHbIs29kyqIy10Xm/zrnnL1lWSGOshPJlIlDD+Qe7kEN5Zv09KT/w4LGq87512r
	rv6r4XTcbSIfKhvNU1rxEM1thE1PJ0Um3kEs2jGnyuMqf6jI2Ay4kjqK5mA=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=pSPLIqmaU07GeaD
	UaGSgCPI76a8=; b=ErUBvCwDy4u2HtqXx5glogwEgNfmWxY9EaTSI34HSip31pr
	zZzVPeuHz1pxv3MZtiy188u3ybb9//cx1eb9lstYafaMB8yiwpUfZR6EJeUy2Agc
	U6qXqe4xW1KiSBJs+3qLILaVUzmCQ0LLkMwkTIOsiSzzg4RRK/SJOVDJqJcQ=
X-Sasl-enc: djGZ3yNa1jK2RwLaFhUwbUZpWrkitNkBQZl19nG00jj1 1449671493
To: oss-security@lists.openwall.com
References: <2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>
From: Hannes Frederic Sowa <hannes@stressinduktion.org>
Message-ID: <56683B44.1070305@stressinduktion.org>
Date: Wed, 9 Dec 2015 15:31:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE request - Android kernel - IPv6 connect cause
 a denial of service

Hello,

On 09.12.2015 11:15, 郭永刚 wrote:
> 
> Analysis of causes:
> In the file net/ipv4/af_inet.c , It will cause pc is 0x0  , if the sk->sk_prot->get_port is NULL.
> static int inet_autobind(struct sock *sk)
> {
>          struct inet_sock *inet;
>          /* We may need to bind the socket. */
>          lock_sock(sk);
>          inet = inet_sk(sk);
>          if (!inet->inet_num) {
>                    if (sk->sk_prot->get_port(sk, 0)) {
>                             release_sock(sk);
>                             return -EAGAIN;
>                    }
>                    inet->inet_sport = htons(inet->inet_num);
>          }
>          release_sock(sk);
>          return 0;
> }
> 
> Solution:
> 
>          Add check as follow:
>                   if (sk->sk_prot->get_port &&sk->sk_prot->get_port(sk, 0)) {
>                             release_sock(sk);
>                             return -EAGAIN;
>                    }
> 

Thanks for the report, I will look into that. But I fear your solution
just papers over the bug and will leave the port in a half initialized
state.

Bye,
Hannes

