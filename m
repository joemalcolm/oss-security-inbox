X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1302" "Saturday" "31" "December" "2016" "16:40:54" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20161231154054.abrg2lwgdfj3354p@eldamar.local>" "46" "[oss-security] CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions" nil nil nil "12" "2016123115:40:54" "[oss-security] CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions" (number mark "U       carnil@debia Dec 31   46/1302  " thread-indent "\"[oss-security] CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13348 invoked by uid 550); 31 Dec 2016 15:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13328 invoked from network); 31 Dec 2016 15:41:07 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=erbukwGQECnf5F6Ue3f0p1iruHqPZmObTox0VG72cpQ=;
        b=biYnr/8Cmj/vYFpuXViqaAG8Pr7Y2J1v4ABI7CZ5RDV5U5j3GEBIeWy+QSr4AbeSqO
         m03uOl4et6kOYQEa/0CFDOyf3otQc3EW9sen1j1Kp5eqrqYkp1xlgNI1l5JMeFQSJq5R
         ks/+rQNgXsWPc3mCeQGj++surK0u9W0nUpTkYYJ4Vs6kDvr1N/BypFfkzXXopJf4moJJ
         1m4YGuUscCYoNZL7bFK0wzdTtbeERg2BSv8Ie3NBKemKbmzfWLnSzHtz2CZ8DM3Xdsw3
         b01E3oWz9ZHLOQBeMvJn8xs1bxsHeGIloT0XsAKb8J0bH/oZJhZ4qz3rs2CM6a0exMbB
         EW7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=erbukwGQECnf5F6Ue3f0p1iruHqPZmObTox0VG72cpQ=;
        b=Bd4SMqw8cUdfPRnyoP0f5/7WSxRiWmrqJI/Nq8LPSw9794aU+9jXwdc2sX93zIqxik
         SoQkcYBLW4V9a+p8POtYsWmZRXFAzxe9+FQMRdxF55khFgYvpzgnhfL/UbVSrha0CZjk
         Q2ziev8zmPz9OlBvGFNlVvwwwtBgBgbGxzMts+Kv/GCUfdgUfLsFoK3qfABqrnzzy93e
         AItCiMQf1zfPvxuQmKLhE+13p2RVa6XCOuQVIEq43RSNEpfJRDUAidBpKVahhO+aZqzD
         7b5PdFIZNpvMDltidFRsGlF/yRIozVpEpHJ1jGCJhypYreSIMA/imx2l20Nri8FCWHSo
         d1dg==
X-Gm-Message-State: AIkVDXL/Jl8x+qecA4+T2QlKMna7RukuFj5KcpCf/R8C0piZH4MmcLjF/IaMaw+T+I3qpA==
X-Received: by 10.28.92.209 with SMTP id q200mr34543407wmb.1.1483198855728;
        Sat, 31 Dec 2016 07:40:55 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 31 Dec 2016 16:40:54 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: OSS Security Mailinglist <oss-security@lists.openwall.com>
Cc: daved@physiol.usyd.edu.au, Jean-Francois Dockes <jf@dockes.org>,
	Willi Mann <willi@debian.org>, security@debian.org
Message-ID: <20161231154054.abrg2lwgdfj3354p@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20161126 (1.7.1)
Subject: [oss-security] CVE Request: UnRTF: stack-based buffer overflows in cmd_* functions

Hi

As reported by "Skylake" in the Debian bugtracker[1], UnRTF is prone
to stack-based buffer overflows in various cmd_* functions.

> I've found a Stack-based buffer overflow in unrtf 0.21.9, which
> affects three functions including: cmd_expand, cmd_emboss and
> cmd_engrave.
> 
> # convert.c
> 
> static int
> cmd_expand (Word *w, int align, char has_param, int param) {
> char str[10];
> if (has_param) {
> sprintf(str, "%d", param/4); // Overflow, 9-digit negative value triggers the bug
> if (!param)
> attr_pop(ATTR_EXPAND);
> else
> attr_push(ATTR_EXPAND, str);
> }
> return FALSE;
> }
> 
> Apparently writing a negative integer to the buffer can trigger the
> overflow (Minus sign needs an extra byte).
> 
> * How to trigger the bug *
> 
> $ echo "\expnd-400000000" > poc
> $ unrtf poc

A preliminary patch can be found in the Debian bugtracker, but it is
not yet finalized.

Could you assign (a?) CVE as needed? Does one CVE suffice here, since
same class of issue in various cmd_* functions from one reporter?
Whilest, at least in Debian, unrtf is compiled with FORTIFY_SOURCE=2
and the buffer overflows are detected, at least if any exposed
application uses unrtf to process untrusted input, this might lead to
a denial-of-service.

 [1] https://bugs.debian.org/849705

Regards,
Salvatore
