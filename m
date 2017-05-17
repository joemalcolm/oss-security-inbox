X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1939" "Wednesday" "17" "May" "2017" "12:51:57" "+0200" "=?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?=" "robert@swiecki.net" "<CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>" "57" "Re: [oss-security] terminal emulators' processing of escape sequences" "^Cc:" nil nil "5" "2017051710:51:57" "[oss-security] terminal emulators' processing of escape sequences" (number mark "        robert@swiec May 17   57/1939  " thread-indent "\"Re: [oss-security] terminal emulators' processing of escape sequences\"\n") "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>" ("<20170501164428.GA12322@openwall.com>" "<CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>" "<CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>" "<20170516220345.GA10874@openwall.com>" "<CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>" "<20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32051 invoked by uid 550); 17 May 2017 10:52:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32029 invoked from network); 17 May 2017 10:52:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=swiecki.net; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=FTzzNiIETSm1jDnlkynI/tOv+Utzy0ktNcBbZptQXI0=;
        b=V/9SRr6hsByKcnY86LS3iQemfYlUIK4jf7K5BpbKo7kLkckc4xNGJlN7ZXY0mz7hsr
         jUTIWv8DkYweFriA0Fi8cAOHSlwMsVyaUFnNUknaOrcWX90tzmc3LMG85BrcwYXHveps
         3Mn02ssNFkXd5NA5hBE7OgqC+DelO23PAdZlo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=FTzzNiIETSm1jDnlkynI/tOv+Utzy0ktNcBbZptQXI0=;
        b=mmkfss4oo3a34mzuqFN4aQTDxLzEVVg1WL+8XD7gUOExlnGOHNKNrU6BeLfC7BY4ft
         6P0HaKIt3OdQ4DJ8E8f3hztUuh3CVSDUNtUyW7+0KbL/m2+QkQlH9eacuUPX/fAE/bgn
         PV7pJS81mJrWeAyhcYQDeEcHGVNaMpr1nSSldGLpK8NkFQTjKxyu0d25ZNVOvf4Vz9CH
         izjVUr60ZIZJs6GjjVIfRi1KOUJqHQTY1wouwgOnwjqz02P0LibEJY4tsVJOloI10tcT
         +fqFjQDz1ArcXgOC+6EoFvyItpd8RHr7M/3S5ZmxqSWnXP8tF8Dbfrkb8Bfabsj4q1er
         j0Nw==
X-Gm-Message-State: AODbwcAo75/BWEpNOeSOA2RQvtsY0JU4uLQNhewEj0VsAFc9i5rwdqaf
	KBOuspQ0zauvgyHjcxPJf1NIDBx6QXUA
X-Received: by 10.98.7.149 with SMTP id 21mr889502pfh.54.1495018318618; Wed,
 17 May 2017 03:51:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>
References: <20170501164428.GA12322@openwall.com> <CALx_OUDauCKOg20Lp5wumy_JUiu7Cj3=-d-HJSci+nROrK8BRw@mail.gmail.com>
 <CAP145pgb85EujmBuvCnFq-W9RRmK8NxsoJ3327JSy03gcU-F6w@mail.gmail.com>
 <20170516220345.GA10874@openwall.com> <CAHmME9p-tvS=nc5J9REB6kRurCHXLUSR6r+hxcFzPHwWFuVDGw@mail.gmail.com>
 <20170517012314.vyjnu3k7pgh5ey6s@schmorp.de>
Message-ID: <CAP145pjXuwa2QwR18Vq29i4aBYqSweHTWt-QYge=JrDxEmZnSQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, rxvt-unicode@lists.schmorp.de, rxvt@schmorp.de
Date: Wed, 17 May 2017 12:51:57 +0200
From: =?UTF-8?B?Um9iZXJ0IMWad2nEmWNraQ==?= <robert@swiecki.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] terminal emulators' processing of escape sequences
To: oss-security@lists.openwall.com

Hi,

>> > On Tue, May 02, 2017 at 12:05:27AM +0200, Robert ??wi??cki wrote:
>> >> A harmless example from rxvt - pushing back the new-line character:
>> >>
>> >> $ echo -ne "\eGQ;"
>> >> ;$ 0
>> >> bash: 0: command not found
>> >
>> > Does this also affect rxvt-unicode?
>>
>> It does, actually. I've CCd rxvt-unicode upstream on this in order to
>> hear their assessment.
>
> There can't be an assessment without knowledge of what to assess - there
> is little to no information in your mail. I can only guess that somebody
> for the hundredth time found out that terminals are more than dumb
> display devices and got excited that, somehow, this might be a security
> issue. Without knowing details, I can't say for sure, but most likely,
> this is a security issue the same way blindly feeding unknown commands to
> your shell is,

Given that arbitrary data can be pushed to terminal emulators via
seemingly harmless commands (like ping, whois) that people rather
trust to be robust enough to intetract with arbitrary whois or DNS
servers, this might be some problem.

Please consider the following example:

$ tail -n1 /etc/hosts | xxd
00000000: 3132 372e 302e 302e 3309 1b47 513b 205a  127.0.0.3..GQ; Z
00000010: 5a5a 0a                                  ZZ.
$ ping ZZZ
PING ; (127.0.0.3) 56(84) bytes of data.
^[G0
64 bytes from ; (127.0.0.3): icmp_seq=3D1 ttl=3D64 time=3D0.039 ms
^[G0
64 bytes from ; (127.0.0.3): icmp_seq=3D2 ttl=3D64 time=3D0.032 ms
^[G0
^C
--- ; ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1014ms
rtt min/avg/max/mdev =3D 0.032/0.035/0.039/0.006 ms
^[G0
$ 0
bash: 0: command not found

I'm not sure if this works with real reverse DNS look-ups, but with
/etc/hosts it seems so.

> i.e., it's a problem somewhere else - the protocol between
> terminals and programs is not a (strong) security barrier.
>
> (your echo command is bash-specific, btw.)

--=20
Robert =C5=9Awi=C4=99cki
