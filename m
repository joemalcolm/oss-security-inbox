X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["691" "Monday" "10" "May" "2021" "06:24:43" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "21" "Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil "5" nil nil (number mark "U       carnil@debia May 10   21/691   " thread-indent "\"Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in sctp sockets" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22086 invoked by uid 550); 10 May 2021 04:24:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22062 invoked from network); 10 May 2021 04:24:56 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=48DEB+KaRlevss9CF5ZqA8ORF38Ds1cKwQLcReuDPys=;
        b=EfnQGAdv1fw/jOlD9kKonPVg8IaSFL+GwykL4zjbLPJYpHuEHrUeTPR4olyGlNORp4
         wLrLvPLhfEJdkgThDQaWBc3MMQT+TXejvK8UmoG/0bIEKvDHrtijl6VGufdaNJiOCSWN
         QfOAihAl9lw5TdZ9GVVNY8+6LnD4M9lnP7Au/HYiLlB5zUES9zDPEtNsdTVRw6ZzHbKw
         Y++7mhGjRAvVn2atAO3OXv5MIcA1Bj7q1CVdKuEp5M+EX4l2n9RvtdSQQ1PlRwXAH17O
         VZ0aIJoG8+pLEqcI6JEr0fQYGImwT/3vBL7GH/ILXI5EAbAGf2aNXWxbgYb+fMKzDfwG
         DRhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=48DEB+KaRlevss9CF5ZqA8ORF38Ds1cKwQLcReuDPys=;
        b=D9eOqITbumPXHP8A4gbQe6TSjrKX/el29tx+BYBFiQp7MI+MQ7gW4g/4wx0fvcgm/9
         gIAZde0PBG6g0jZIigqxXO0puk4WQjFFs1FC798I4eEGVZ/vG2Gt/LyM5XyFQKGhMLAX
         mWd4PQcvAwIRBtlgvKXM0mNPxCQUQOyME326cFyfLrQSNfDhytAFIrkCYEi5EBvjqgXz
         U8wgC7E4XnWPwrHnnzFYrb6IrxjFFw8CbpTw5n4ARKG9EmhVAGfVC9DAlpiID7hDm811
         qA+pB+84UtKOyZnutfCgzp9u9UhUdvIAzFDbbOHBPJJ0tZWX/vmj0F4tDBa9lpQdSbhQ
         nILw==
X-Gm-Message-State: AOAM5339q6Qsa36d+xCVnA8OBeXwbovcNMQb4bi9EfPdGpKucuMYQLpN
	dDG9Cora1xCDPM5v3DXJJvQ=
X-Google-Smtp-Source: ABdhPJxlWNmzhTgJ3V58Oo20gOwReJpwVMq1NhRA3Kezp/Uxap4d95qO7DOo9L0ep0rBG8OXqJFjyA==
X-Received: by 2002:a05:600c:b54:: with SMTP id k20mr24116470wmr.189.1620620685018;
        Sun, 09 May 2021 21:24:45 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 10 May 2021 06:24:43 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Nadav Markus <nmarkus@paloaltonetworks.com>,
	Or Cohen <orcohen@paloaltonetworks.com>
Message-ID: <20210510042443.GA19253@lorien.valinor.li>
References: <CAM6JnLex-+TM+p5aNrcifxG3qmpL+gfXzSTzWpVpbj3_hsp_Fw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM6JnLex-+TM+p5aNrcifxG3qmpL+gfXzSTzWpVpbj3_hsp_Fw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [oss-security] CVE-2021-23133: Linux kernel: race condition in
 sctp sockets

Hi,

On Sun, Apr 18, 2021 at 11:41:06AM +0300, Or Cohen wrote:
> Hello,
> 
> This is an announcement about CVE-2021-23133 which is a race-condition
> I found in Linux kernel sctp sockets (net/sctp/socket.c). It can lead to kernel
> privilege escalation from the context of a network service or from
> an unprivileged process if certain conditions are met.
> 
> The bug was fixed on April 13, 2021:
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=b166a20b07382b8bc1dcee2a448715c9c2c81b5b

It looks that additionally
https://git.kernel.org/linus/34e5b01186858b36c4d7c87e1a025071e8e2401f
refer to CVE-2021-23133.

Are both commits necessary?

Regards,
Salvatore
