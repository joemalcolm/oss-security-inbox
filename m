X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1424" "Thursday" "18" "May" "2017" "02:03:04" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>" "48" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051800:03:04" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        robert@swiec May 18   48/1424  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<87inkzd1tg.fsf@fifthhorseman.net>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" "<CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>" "<87inkzd1tg.fsf@fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1783 invoked by uid 550); 18 May 2017 00:04:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32380 invoked from network); 18 May 2017 00:03:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=1LnuIR0gX6pPohFXwVJdIiYn1PJvtKqIxwZso+LHYEQ=;
        b=RfsG1npGAKyV4wqrRrw5FNdGfiHsG+N2K5s7gwRJeqbIFlWXzP6QvdvpTqnfL0jQAZ
         t9+yXBkHilo0Er2I01xfQjqozpd9EBgp5LAp7T+SUD3CJB6U0IbrGHViT2bnDTxLhnP9
         U/2SUpc5YA2ZaMPuwptftB4fJJmzwPVNafh/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=1LnuIR0gX6pPohFXwVJdIiYn1PJvtKqIxwZso+LHYEQ=;
        b=d+xGFI1HOAZrKA3gL1iPjIVHtViq1aYqjwDM84+p2maNFN5C+fotoJID4ik7SETcyu
         qUrvecUIxQduGFd/mKiD6x5+FwcIWKTzfm++txGaRm/wzTuEjYwyEx7B5brdj7RURX8y
         spVGuZcPx55VK0u6iuTBD3d2Yxi6OWMkp2f4KskmPMhY4vWkqi+59/TnAG7qDxL3TwTU
         fAynv1ixE/VpzhlTzmqwJEXeGsqrctr5dTZXrgWbTXHjS/6KaXapAcwNJQ2DoYTPvcRq
         CoUisBtgvjxZv3OtJyKhqqKH7hLVC/Qp0s0H/cyoq65uaLqYlzzFRfAWUwc4o7WqSYlS
         G8dw==
X-Gm-Message-State: AODbwcBN1KM2Q/f79/BBi0qQwZlvYMWCsPzK+EdPaJt1y5F+FzAE1jv1
	VhaGaz0keA0LKxklxGKSBa0OUaD9HJiX
X-Received: by 10.98.130.1 with SMTP id w1mr1300997pfd.128.1495065785336; Wed,
 17 May 2017 17:03:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <87inkzd1tg.fsf@fifthhorseman.net>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com> <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
 <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de> <CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>
 <87inkzd1tg.fsf@fifthhorseman.net>
Message-ID: <CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
	rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Thu, 18 May 2017 02:03:04 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: Daniel Kahn Gillmor <dkg@fifthhorseman.net>

Hi Daniel,

2017-05-17 15:56 GMT+02:00 Daniel Kahn Gillmor <dkg@fifthhorseman.net>:
>> Please consider the following example:
>>
>> $ tail -n1 /etc/hosts | xxd
>> 00000000: 3132 372e 302e 302e 3309 1b47 513b 205a  127.0.0.3..GQ; Z
>> 00000010: 5a5a 0a                                  ZZ.
>> $ ping ZZZ
>> PING ; (127.0.0.3) 56(84) bytes of data.
>> ^[G0
>> 64 bytes from ; (127.0.0.3): icmp_seq=3D1 ttl=3D64 time=3D0.039 ms
>> ^[G0
>> 64 bytes from ; (127.0.0.3): icmp_seq=3D2 ttl=3D64 time=3D0.032 ms
>> ^[G0
>> ^C
>> --- ; ping statistics ---
>> 2 packets transmitted, 2 received, 0% packet loss, time 1014ms
>> rtt min/avg/max/mdev =3D 0.032/0.035/0.039/0.006 ms
>> ^[G0
>> $ 0
>> bash: 0: command not found
>
> what version of ping are you using?  I was unable to replicate this with
> either the debian iputils-ping package version 3:20161105-1, or with
> debian inetutils-ping package version 2:1.9.4-2+b1.  neither of them seem=
 to
> do a getnameinfo() at all if it is initially supplied with an IP
> address.

Works for me with the following:

Ubuntu 17.04's iputils-ping 3:20161105-1ubuntu2
Fedora 25's iputils-20161105-1.fc25.x86_64

> That said, with the same last line of /etc/hosts, getent is willing
> to pass along the garbage chars:
>
> 0 test@host:~$ getent hosts 127.0.0.3
> 127.0.0.3       ; ZZZ
> ^[G0
> 0 test@host:~$ 0
> bash: 0: command not found
> 127 test@host:~$


--=20
Robert =C5=9Awi=C4=99cki
