X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3373" "Wednesday" "21" "April" "2021" "20:51:49" "+0200" "Salvatore Bonaccorso" "carnil@debian.org" nil "88" "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil "4" nil nil (number mark "U       carnil@debia Apr 21   88/3373  " thread-indent "\"Re: [oss-security] xscreensaver package caps gets raw socket\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xscreensaver package caps gets raw socket" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23863 invoked by uid 550); 21 Apr 2021 18:52:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23830 invoked from network); 21 Apr 2021 18:52:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=MrsqW2wZzWj6vgMjbN3w+dVUi/MFl89AGIl86VtdEOc=;
        b=dr180aImQ59OhXl1JKIRPRPHbR0xTKlRKujKPLGB4/xL+81AWKpV3xIeNCfXqwoq91
         27iQZSYhZdvzfSUtlJ0TA+rvyl1u8z+pDoev85dsP556qO7MjXYMDiqeFnTBudm3IXlO
         H1XWppCiSTUUCnjMYQmtu95u7p6bvgUC1PkZ4aOP67wO431OHdV/M6SVftUhMes5c8O6
         tAFeVzLit9RezExL+PdzcGSXPsYMB0FsVnQrRxlfvMdJfgy++hdQZCBGs7RXiv5zpZJw
         5ta8JsthmuYqdyDgbQmQmr8DRZ1/vCrdrsNBCdolz/bFZkxE2sut86iJ9Q1F/LgDs6aq
         87Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=MrsqW2wZzWj6vgMjbN3w+dVUi/MFl89AGIl86VtdEOc=;
        b=SqMNKb0U2N6+Ek+KtdyUALvwx6RAaKDkByIs52Mk2fBJCQBr2u0cjElaGaB3qGLs3o
         dDWdfw0cNj5XwTQneeGf6nr0oIKvmUe5L45yLSWkgFWWV1pS+zAl20GUoRIRq3kTzfhp
         mKtWv14SBGxeDzkYT3H4luY0ePSHorxvHbwi2hJaAQ+lIa+7oBgDFJFzJ1MuXPi0H/lZ
         xZsr9oJOq2Ai5q7YFps4FguC9FAmZbSQO0bMk9h9VvIJK7hRYWN8ItTHFEpInzbbyvuk
         f8Q/HFTMWQaRLSZi7lRXoUH4qJzwT1hTFQd3GEab0lASrrjDaDro2u2WHqX4aiHFxAJA
         oHOw==
X-Gm-Message-State: AOAM532pabOZe7D3z6uYFPo2u+cM0jhZeg5rWDP0PvVwY4UBMAPEMYSk
	QmjRCgHn0thpVMcWWsj5vW2PdwXV+mTWiDLF
X-Google-Smtp-Source: ABdhPJx42PKA0DLL6cMQTZKUzAgFj6IZlIDW5cBrSySQnp+BKXrxYuE5m3iAOcXMz1tCJ+smfERN/A==
X-Received: by 2002:a05:6402:1004:: with SMTP id c4mr40544627edu.364.1619031111588;
        Wed, 21 Apr 2021 11:51:51 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Wed, 21 Apr 2021 20:51:49 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YIB0RV1MqfmtfYDG@eldamar.lan>
References: <20210417143105.GB3276@thinkstation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210417143105.GB3276@thinkstation>
Subject: Re: [oss-security] xscreensaver package caps gets raw socket

Hi,

On Sat, Apr 17, 2021 at 07:31:05AM -0700, Tavis Ormandy wrote:
> Hello, I noticed that at least debian (maybe others) ship xscreensaver
> hack with cap_net_raw enabled:
> 
> $ getcap /usr/libexec/xscreensaver/sonar
> /usr/libexec/xscreensaver/sonar cap_net_raw=p
> 
> That seems like a bug, you can just load some driver and get a raw
> socket. I wrote a quick exploit, this script will run tcpdump without
> needing root.
> 
> $ bash sock.sh
> 17:43:55.000000 IP (tos 0x0, ttl 64, id 14541, offset 0, flags [DF], proto ICMP (1), length 84)
>     debian > sfo07s17-in-f78.1e100.net: ICMP echo request, id 59166, seq 1, length 64
> 17:43:55.000000 IP (tos 0x0, ttl 128, id 42276, offset 0, flags [none], proto ICMP (1), length 84)
>     sfo07s17-in-f78.1e100.net > debian: ICMP echo reply, id 59166, seq 1, length 64
> 
> I sent a report to debian, jwz and mesa. We concluded no embargo is
> necessary, so continuing the discussion here.
> 
> Summary of discussion so far:
> 
> - In theory, mesa support running in a privileged context, their
>   documentation says they disable dangerous features in setuid/setgid
>   binaries:
> 
>     https://mesa-docs.readthedocs.io/en/latest/egl.html
> 
>   In fact, this is broken because they only check if (geteuid() !=
>   getuid()) { ... }. That check doesn't even handle setgid, let alone file
>   caps. If mesa agree this is a bug, simply changing their checks to if
>   (getauxval(AT_SECURE)) { ... } might make this bug go away, and handle
>   file caps and setgid for free. I filed a bug for that, but there
>   hasn't been a response:
>   https://gitlab.freedesktop.org/mesa/mesa/-/issues/4549
> 
> - The code could use ping sockets instead, but they're still rarely
>   enabled by default, and users have to set the ping_group_range sysctl.
>   I personally think it's time to enable them by default, but that's a
>   different discussion :-)
> 
> - If neither of those two options work, then I guess we will have to
>   try to make using mesa safe...but it sounds really hard. The obvious
>   fix for right now is trying to clean up the environment, e.g.:
> 
>   (Note: untested)
> 
>     char *allowed[][2] = {
>         { "DISPLAY", 0 },
>         { "XAUTHORITY", 0 },
>         NULL,
>     };
>     for (int i = 0; allowed[i][0]; i++)  {
>         if (getenv(allowed[i][0])) {
>             allowed[i][1] = strdup(getenv(allowed[i][0]));
>         }
>     }
>     if (clearenv() != 0) {
>         abort();
>     }
>     for (int i = 0; allowed[i][0]; i++)  {
>         if (allowed[i][1]) {
>             setenv(allowed[i][0], allowed[i][1], 1);
>             free(allowed[i][1]);
>         }
>     }
> 
>     // ...
>     MesaInitWhatever();
> 
> I *think* this will work in main(), but it's possible there are some
> constructors somewhere that execute before main() I've missed. If that's
> the case, then I guess we will need a wrapper binary that does execve()
> and passes a non-cloexec fd with a sanitized environment?
> 
> The problem is that even if we make cleaning up the environment work,
> you're always going to need $DISPLAY, and any code exec bug connecting
> to a malicious X server will be a security bug.... and that sounds super
> hard to get right?
> 
> I dunno, thoughts on fixing this appreciated...

FTR, the xscreenserver part has been assigned CVE-2021-31523 by MITRE.

Regards,
Salvatore
