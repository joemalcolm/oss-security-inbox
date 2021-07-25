X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["746" "Sunday" "25" "July" "2021" "18:32:43" "+0300" "Georgi Guninski" "gguninski@gmail.com" nil "23" "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil "7" nil nil (number mark "U       gguninski@gm Jul 25   23/746   " thread-indent "\"Re: [oss-security] ipython3 may execute code from the current working directory\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] ipython3 may execute code from the current working directory" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24460 invoked by uid 550); 25 Jul 2021 15:45:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21879 invoked from network); 25 Jul 2021 15:33:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=fA0SWD9IsyfUCQJnMLkCP6peL3hntI890ESBL9LAeRA=;
        b=S61uHz30xSjuXwkxFpnQgHTHqpDC7u7Po+LQTDEefZZ2pC50gxhW48r3oSuBvpBIqT
         xjmio/enw7KU3Z9K0lvSASWT0AsxbPNDPwxSE43WQFipRBfzctpwQ/1Z7sR0Y93hK4pA
         eo1vlOS+0kK7v2AeTVLKK2XUSv8UhtJwJ8dxukvnMeb66ybXvFAhvHKQ3pVmkgeJMV62
         OWlfOJI9/9xs74osj0NyDzMnKTBBWjTlkypRKrtd3VRdk4mc5SKVeNPzEi7t2Ap4/7V9
         r5uZ4vBAzSerDh/ZtteyzzQQkJPhCg7xRmPuTfD2xSw7ZYf6paSRScCXkG6UG1DwSjd0
         W98w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=fA0SWD9IsyfUCQJnMLkCP6peL3hntI890ESBL9LAeRA=;
        b=Rcm6YsTibbOMOpjejeAw6wodOmqyGTdKg841sDz8qztFaWXChnOaTHloPv2YowqYKG
         yi9/iIQ/xq4/U2dO+dS09QSeToynPdR6/FE+QC+f4rQ4O/t0VQ4ZIE+qKzvctUNn4rmh
         BzeyuxwMIVF7hTS2NDDZr42aA8tlixJaC4xzWxGvr3g02s3zqLxe3Ii5BMkvaMTII6qh
         h0mYumYQtjASfZKx7Chx5mYxwe5mGzAzL0wRc5U8PiXTcFmKKyhrHcgKmEN95HtKm/yn
         FmRJlBQYOH+uzOrtQ3HkLtg6UJKD88bspr2mjyQBXnvAi9N+/h+kki2rVaZRlezJDcgJ
         7EOA==
X-Gm-Message-State: AOAM532wBbDtAR3YzuVS/AXQT7CzdRi1Q5/TYsg9BYAVFrtK/FSxtbeG
	Ll7wjAnibuk6odH9SDOA1I6s0fQRapuwQ8cLx7uz3IeY++o=
X-Google-Smtp-Source: ABdhPJx+Me+lxjI6hmwA6E+JRH2avxgbSrqEZbyrAdUhhJc6ZyiTppPSstEO8MZPhluanKzsqJCQfKj4C/tAFz0+kLY=
X-Received: by 2002:a1c:4b04:: with SMTP id y4mr23306144wma.185.1627227174766;
 Sun, 25 Jul 2021 08:32:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9MsQts5_jV9=nr8X6mwZyW-NU2JzYnosdMqQ0G06nH6w@mail.gmail.com>
 <20210722113545.hewzinrjmy7jon6c@jwilk.net> <85b3215f-530e-a698-ac60-57a03763fd3b@wichmann.us>
In-Reply-To: <85b3215f-530e-a698-ac60-57a03763fd3b@wichmann.us>
From: Georgi Guninski <gguninski@gmail.com>
Date: Sun, 25 Jul 2021 18:32:43 +0300
Message-ID: <CAGUWgD-yaGXfdXkL6Z4qsXSh6PXPda8HTAn8_0miCmYf9W-d8A@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] ipython3 may execute code from the current working directory

On Fri, Jul 23, 2021 at 11:43 PM Mats Wichmann <mats@wichmann.us> wrote:

>
> there have been more than one security concern about the way this makes
> it possible for untrusted modules to get loaded.
>
> [1]  https://docs.python.org/3/library/sys.html#sys.path

Is the interactive python shell vulnerable to the same problem:

guest3@ubuntu20:~/tests$ cat path.py
import sys
print(sys.path)
guest3@ubuntu20:~/tests$ python3
Python 3.8.10 (default, Jun  2 2021, 10:49:15)
[GCC 9.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import path
['', '/usr/lib/python38.zip', '/usr/lib/python3.8',
'/usr/lib/python3.8/lib-dynload',
'/usr/local/lib/python3.8/dist-packages',
'/usr/lib/python3/dist-packages']
>>>
