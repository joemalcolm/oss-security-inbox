X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1340" "Thursday" "18" "May" "2017" "02:05:24" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>" "47" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051800:05:24" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        robert@swiec May 18   47/1340  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" "<CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>" "<87inkzd1tg.fsf@fifthhorseman.net>" "<CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13754 invoked by uid 550); 18 May 2017 00:05:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13733 invoked from network); 18 May 2017 00:05:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=CT9auv6coK6w3x980afE8YisQmHDb7eoSZvAdhNWmjk=;
        b=XXFze8Glm/d4qddk6mPAC5ErdUfP54n1pD0SgcW6T78gUnNs5cqKJu1S6AOK1tH6Wi
         UK+4gQpYk+1rGyLuXhaz0feCFdQXqst3FC7Z0UGwgp69TyCymLv5neTSOjtMg9Bj3jz0
         sszMyx40pOz7UC1LUVg+4wQQRqH9+Y8LdALwM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=CT9auv6coK6w3x980afE8YisQmHDb7eoSZvAdhNWmjk=;
        b=r27G+fGkfl1kM6OzwZ6njLXdtJogxAnA5hMapfEmji88Ve6mFkj/kbQAolbxEDgyaP
         f7M1JWA45tqkUQVeLnAKYRUNVkHr9C58Td/WM4wGJicRqhgnhAYg6Lc0ZGtuiGwgzJ7X
         VskLE9GnVZqd8etTfbHvNK925c33kdA7slHB5xF+QHL1A2+H0bp3cQUxF2Hhe+SVn+T4
         jUfhgZfwomTXRUhzXx817cGr9BvNpVZ19akfg1a05a8klhnjnY6uiAvS2Uv7Psh3TgBO
         r9llcaHDHmnf1bOUz64YAdr17+6HOAuPHLqFCwsqA+HSnzlt4HRzu0s/rvOYolnS1CvA
         NgRw==
X-Gm-Message-State: AODbwcBW3oBuHEiqrto7EQchkrJFQFQFLKPEzFS6n05GqfRDJE+OTxoO
	onZnpC8dFDFR93S+lUqcR51LxMhCg94S
X-Received: by 10.84.222.136 with SMTP id x8mr1410910pls.50.1495065925590;
 Wed, 17 May 2017 17:05:25 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com> <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
 <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de> <CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>
 <87inkzd1tg.fsf@fifthhorseman.net> <CAP145pjG+OFBZ9x+4vbnPJo3ScC66xLO-OpvrvQPGViGAuAMTw@mail.gmail.com>
Message-ID: <CAP145pioFwiNj8TGKE8dz__9HdcXeV3srat+OwcozeOzi5g3Ww@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: oss-security@lists.openwall.com, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
	rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Thu, 18 May 2017 02:05:24 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: Daniel Kahn Gillmor <dkg@fifthhorseman.net>

Hi again,

> 2017-05-17 15:56 GMT+02:00 Daniel Kahn Gillmor <dkg@fifthhorseman.net>:
>>> Please consider the following example:
>>>
>>> $ tail -n1 /etc/hosts | xxd
>>> 00000000: 3132 372e 302e 302e 3309 1b47 513b 205a  127.0.0.3..GQ; Z
>>> 00000010: 5a5a 0a                                  ZZ.
>>> $ ping ZZZ
>>> PING ; (127.0.0.3) 56(84) bytes of data.
>>> ^[G0
>>> 64 bytes from ; (127.0.0.3): icmp_seq=3D1 ttl=3D64 time=3D0.039 ms
>>> ^[G0
>>> 64 bytes from ; (127.0.0.3): icmp_seq=3D2 ttl=3D64 time=3D0.032 ms
>>> ^[G0
>>> ^C
>>> --- ; ping statistics ---
>>> 2 packets transmitted, 2 received, 0% packet loss, time 1014ms
>>> rtt min/avg/max/mdev =3D 0.032/0.035/0.039/0.006 ms
>>> ^[G0
>>> $ 0
>>> bash: 0: command not found
>>
>> what version of ping are you using?  I was unable to replicate this with
>> either the debian iputils-ping package version 3:20161105-1, or with
>> debian inetutils-ping package version 2:1.9.4-2+b1.  neither of them see=
m to
>> do a getnameinfo() at all if it is initially supplied with an IP
>> address.
>
> Works for me with the following:
>
> Ubuntu 17.04's iputils-ping 3:20161105-1ubuntu2
> Fedora 25's iputils-20161105-1.fc25.x86_64

I believe you should try with

$ ping ZZZ

With

$ ping 127.0.0.3

it doesn't do reverse lookups at all (as you'd pointed out).

--=20
Robert =C5=9Awi=C4=99cki
