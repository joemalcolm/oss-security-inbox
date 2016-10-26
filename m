X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["857" "Wednesday" "26" "October" "2016" "19:00:23" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQLTqa8MLRsaaReoPMBO5D6YJpSEiUQbrHPrny496rbOg@mail.gmail.com>" "34" "Re: [oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds" nil nil nil "10" "2016102622:00:23" "[oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds" (number mark "U       gustavo.grie Oct 26   34/857   " thread-indent "\"Re: [oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds\"\n") "<CAP7U399LJwfVa0oqnWM_a60Vk+7ODUC9MW=r=Qs_T8VAo4fwag@mail.gmail.com>" ("<CAP7U399LJwfVa0oqnWM_a60Vk+7ODUC9MW=r=Qs_T8VAo4fwag@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7557 invoked by uid 550); 26 Oct 2016 22:00:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7536 invoked from network); 26 Oct 2016 22:00:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=gxxY3i5BwGxIJU4uLNGZVMiEcXNzASZmBDvujEfKugg=;
        b=CdbJ10zjH2/Gxzite1Kfb3JGmXho/XINg0M8m+YZGw7UaVuLDHUSiJPh/UoMFkhWat
         3J1ZrYmusA9HA0dUx5UwVIIuihhTkY4/9P2ieDj2rIoShISf1Ghb3BpfrIIhRb+cb3C/
         ZVMbHh4wzm7Dabqccr8n61Z1LKnvFxCXCfOU814tF74usNl9XOFoFojHdUAc6DT1SBhC
         9T4sXcsQHKxZYmitDxHXap7vaQLMyOdWFVLfQHnvaP3OdGPw78Zr2RRj4nEtuxkebEFu
         fEeX4wn+yKQSP/JIpWC5El4b5/uJTMQbScnEsFdbOB4EZ4DyqQukb8wEB3jlBh0OC1Xy
         2kQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=gxxY3i5BwGxIJU4uLNGZVMiEcXNzASZmBDvujEfKugg=;
        b=Fv3MYNmUsG5X1V9pSsmGyuR7wyYPV5lnr5gV7w8uDZTqrU/W6ExezxFu0JkTvaNi9s
         FhKQtg3s1hWryXXLZt+mvjbjG5swvYa736i8WX/DoKhb997RKzAEUSCZjzDb6FT1Qi76
         z255hqnu0hSrlRPm+dBGAv3JlzAt1QZZfXTQx+iWl8JpVOworqDRVh3LVnst2OEygzOc
         ZY9PGG/OL+c3B+P4UOeG5fMFq8Ywww3Lrdoj8LqMwG3oJHASFtoiVHctBoTbLFh1ZQZW
         WO2S1YU/THTm3li22yIfHNzFOi0QmNb8EzUQxOaHZY/H03rxGyiCJgs5s0ulCOhWjo1k
         PP3A==
X-Gm-Message-State: ABUngvcajiUkx63y0/QClHXI/zBYi3cW9TgtICZKUuD+xdJu3p55ZVW9pO2xPtUEn+pjQv9RMR8Q6uuRxgoPrQ==
X-Received: by 10.36.107.72 with SMTP id v69mr4240747itc.37.1477519224294;
 Wed, 26 Oct 2016 15:00:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAP7U399LJwfVa0oqnWM_a60Vk+7ODUC9MW=r=Qs_T8VAo4fwag@mail.gmail.com>
References: <CAP7U399LJwfVa0oqnWM_a60Vk+7ODUC9MW=r=Qs_T8VAo4fwag@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Wed, 26 Oct 2016 19:00:23 -0300
Message-ID: <CACn5sdQLTqa8MLRsaaReoPMBO5D6YJpSEiUQbrHPrny496rbOg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114a9d72836e83053fcbc077
Subject: Re: [oss-security] Re: librsvg and cairo are causing libpng to write out-of-bounds

--001a114a9d72836e83053fcbc077
Content-Type: text/plain; charset=UTF-8

A patch was recently proposed:

https://bugs.freedesktop.org/attachment.cgi?id=127421

thanks to John Bowler and his detailed analysis of this issue:

https://bugs.freedesktop.org/show_bug.cgi?id=98165

Can we have a CVE, now that we know it was an integer overflow and we have
a patch?

Regards,
Gustavo.


2016-10-06 21:02 GMT-03:00 John Bowler <john.cunningham.bowler@gmail.com>:

> The bug is not specific to librsvg.  This instance happens in
> write_png inside cairo-png.c, but the actual bug is elsewhere.  Other
> exploits probably exist using things other than PNG and SVG.  I think
> this needs to be CVE'ed immediately.
>
> --
> John Bowler <john.cunningham.bowler@gmail.com>
> +1 (541) 450-9885
> PO BOX 3151
> KERBY OR 97531-3151
> USA
>

--001a114a9d72836e83053fcbc077--
