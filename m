X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["463" "Tuesday" "8" "January" "2019" "07:14:11" "-0800" "Eric Dumazet" "edumazet@google.com" "<CANn89iLnNC16YVkNJ4y8Bet2C2Yy0F=wjyii1RRpqfCUL=Okxw@mail.gmail.com>" "18" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." nil nil nil "1" "2019010815:14:11" "[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability." (number mark "U       edumazet@goo Jan  8   18/463   " thread-indent "\"[oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.\"\n") "<CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>" ("<CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19568 invoked by uid 550); 8 Jan 2019 15:17:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5921 invoked from network); 8 Jan 2019 15:14:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sYbkRl9K9fHBZOQABJMeQ7r3ZqdN2PtMbCNk9vx3TQY=;
        b=pZB4RpyCULjQbA6R4lAi+KIO3HkddhRx4RpcDRvsIlkihPu4KECdDkP1ZgxJfUezyB
         C24LzheLYI8vKvrIWvRV9iRWuYcz8A2tK0655Ya9CwhI7x52iWFFZD2YGRonRMgu9o4F
         KjbcadCwlGHgb7UEGPClf1PCJzq8TSJcELyGVwdcHpsYhQL7BxSRw0mx+xgFEjiUwRY1
         HvyAcC7ZObGEcgPqYwxdOdf0MceD5IB4z0al10zgOvqX8ye8JnrtY0UKN0fsbdJ/dkcM
         Bxh6kLrS9/gf6xZ2dNaWscb4GVdCCwsHReexs1LyZiUstv7CKcybR7UgmljCrnWy8VDq
         YpvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sYbkRl9K9fHBZOQABJMeQ7r3ZqdN2PtMbCNk9vx3TQY=;
        b=KHq4oVSIcQFU/jYOkySriEee2gI/SooyVMXqYZl6PQptDTo/mgA+2a2VZvhoSRNgUc
         DDYJf6NU/3M+XJ+dM779ZxyMiSj7NNCpJEc4/SPvZuz2ARxhLbi8rAC6SnsanyabLkNX
         OOxfn7X/yGuoVnR+HKKX2UvurBzOCKqqI7nT/eLgFMOl2varfBg8rsX9icMhVpfmzONd
         zQwplQmUT+OclYY6T8dP2n/VOcPCWiOqECLpC4+YWwwyF2dK1gD5p65h+rr9Ffsk9aGs
         dTXynwAk/e0UZEPuSNNQRwCu/Imy1BXGef3jC5Spjpmi3f4fZf5vxo5hLOTxVnZuyUpe
         p4pA==
X-Gm-Message-State: AJcUukekcZJMW6Irmqc/+POI95FIih5342zKEDlZNMAex0f86ahHQ0BE
	Xr+v3y1nMfJ+srU9oNg5FJN46N6A4Ib+d5xSiQYIhHA1IqDa1wT3
X-Google-Smtp-Source: ALg8bN7JzimniHevV7pN6X0qwLw+N1jtHaWwmJPHXP++JcJ3d3I7zY1WsIhEvZDhnFgx0r0PKv1qe37l3lEzMlitIRk=
X-Received: by 2002:a81:6246:: with SMTP id w67mr1975295ywb.60.1546960463333;
 Tue, 08 Jan 2019 07:14:23 -0800 (PST)
MIME-Version: 1.0
References: <CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>
In-Reply-To: <CALzBtjJ7Vh8qatDWaf1oHf+=fGQUphm7WM2e0fZXe+8rQ=Sxxg@mail.gmail.com>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 8 Jan 2019 07:14:11 -0800
Message-ID: <CANn89iLnNC16YVkNJ4y8Bet2C2Yy0F=wjyii1RRpqfCUL=Okxw@mail.gmail.com>
To: 3ntr0py1337@gmail.com
Cc: security@kernel.org, oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Re: Linux Kernel 4.20(21) deadlock vulnerability.

Hello Entropy Moe

syzbot reported dozens of similar issues involving printk

https://syzkaller.appspot.com/

Not sure why this would be a security concern ?

Thanks.

On Tue, Jan 8, 2019 at 7:08 AM Entropy Moe <3ntr0py1337@gmail.com> wrote:
>
> Hello,
> I wanted to let you know that there seem to be a deadlock vulnerability on the linux kernel 4.20.
> I am attaching the result report from syzkaller which also got the c code for replication.
>
> thank you,
>
