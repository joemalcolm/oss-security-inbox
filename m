X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1568" "Friday" "29" "January" "2016" "14:21:01" "+0000" "Hazel" "hazel@meddlingmojo.com" "<CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>" "40" "Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" "^Cc:" nil nil "1" "2016012914:21:01" "[oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes" (number mark "        hazel@meddli Jan 29   40/1568  " thread-indent "\"Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools for scanning purposes\"\n") "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>" ("<2413003.GtkKFizscD@chimera>" "<CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18218 invoked by uid 550); 29 Jan 2016 14:25:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15968 invoked from network); 29 Jan 2016 14:21:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=meddlingmojo-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=xO8xT1kLP5SWT0mWv/i2EnVF3SMIXF3TCSaJshT4+Ec=;
        b=2NW5uSdvjpQrDDTJOIUyL1z61IAa+IYH1Z/ZSIJ68w4HgomfnUkFbkyUN2oZEeei4z
         IVr62TcjPXczpPhICnjCiM9xv4qB1jvXShWOY+sNkeKAxeuG2/n1ItdB96RjQKQzK/PQ
         KdPysOQF9dfjmyouTfmcc3imV7WLROh/5ve0QJkMXH8G3g9qv+YYXjJPtK0i5SCrmNzP
         zv7e+pNzwRd3fMnRhANj5i/g3M76bnw9LyG5hhR0xlvybFIsQXd6tR0Jh4HVUIbqLlpN
         18l85emhO7xKs6KKGoVT/EhxU/IkUHaP+hqx9aW7E49lBAZH+gAiRW0jI1sRDWeN4yPs
         d4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=xO8xT1kLP5SWT0mWv/i2EnVF3SMIXF3TCSaJshT4+Ec=;
        b=D7Z90W8VmUfBhoyv7XohqAtn8K9iAHDOfZGAMbpfbnKf1/617qh3xF8LKd2cbpesXU
         dayWWA0NF8QBs64CHuqp7NJ828klr1v5Q//d0oeHBbo0MLc5tSPiWjOPuC3Pr3sWHK2e
         SrDyX+wW2AatQb0n72J51gGar3s1v41A8ammJnLNV9+7bGz8VR8pODTuXoY1ISKCfEfX
         /iFWi+CSKNiDkMVv5W6Z9ilWYwkpuuSioj1mzsB8OPFbY/sWkwd4gOAdUAP/WxyhtevE
         1JJgoexL67dHPYDPsFfCh5bKZEkgKJjGqW2yKU/2/6RhUuuXk0iFxO4Ar5XsyL4rvZ7e
         cJFA==
X-Gm-Message-State: AG10YOQ4jqfk3tUvBieT9s95Rq5zlnYm7ZDktvFP1KZYGvzKx1hnamqNPivX4sCoAs7veyyuOJRRmM2NUNQPtQ==
X-Received: by 10.28.188.70 with SMTP id m67mr9699874wmf.24.1454077281182;
 Fri, 29 Jan 2016 06:21:21 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>
References: <2413003.GtkKFizscD@chimera> <CANO=Ty1ZFtpeUespB+nn0gZ8oC7PAkkr7+eTR1U+RyLtGKHKtA@mail.gmail.com>
Message-ID: <CAJMyd9Yje0QY+Th_QUYuO6JspRvysKqkkxtXq-xgANBASM_Nrw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: pool@lists.ntp.org, linuxbrad@gmail.com, team@security.debian.org, 
	secalert <secalert@redhat.com>
Date: Fri, 29 Jan 2016 14:21:01 +0000
From: Hazel <hazel@meddlingmojo.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] shodan.io actively infiltrating ntp.org IPv6 pools
 for scanning purposes
To: oss-security@lists.openwall.com

On 27 January 2016 at 14:43, Kurt Seifried <kseifried@redhat.com> wrote:
> On Wed, Jan 27, 2016 at 4:24 AM, Luca BRUNO <lucab@debian.org> wrote:
> > For oss-sec crowd: is there anything we can do to improve the situation
> > and avoid
> > similar cases in the future? Should crowd-sourced and fundamental services
> > like this
> > be encouraged to move to a stronger WoT?
>
> [...]
>
> Sadly we can't really rely on the IoT device makers to fix this, they have
> basically 0 incentive to prevent scanners from hitting their products
> (they're already sold, to late for the customer to make an informed
> decision).

I hope you'll forgive me making a modest proposal here, but it seems
to me that there might be an opportunity here for Linux distributions
that are upstream of IoT vendors to modify their default configuration
to address this.

My somewhat off-the-cuff suggestion would be to...

1. Add an *additional, secondary* IPv6 address to external interfaces that is:
-> a. generated in accordance with the IPv6 Privacy Extensions (i.e. RFC 4941)
-> b. firewalled by default against all traffic except NTP in either direction

2. Configure the NTP *client* to use this secondary address as the
source for outgoing NTP traffic, instead of the default address?

...thereby avoiding revealing the primary address of the host to
would-be scanners?

I realise that that is a rather drastic approach, and might be too
bold a change for Debian or RHEL, but perhaps in the case of
distributions like Raspbian which focus on IoT, it might be tenable?


Cheers,

Hazel
