X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1020" "Thursday" "25" "February" "2021" "21:48:38" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "25" "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil "2" nil nil (number mark "U       carnil@debia Feb 25   25/1020  " thread-indent "\"Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3778 invoked by uid 550); 25 Feb 2021 20:48:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3754 invoked from network); 25 Feb 2021 20:48:52 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5oylp0coKHlAYKnA4rKOsGv6dcSMEQRz7fxdomrAgwY=;
        b=P2CCzW3RUrBy0QIMsbBADOi7XzvbHo0Yg1k2o9TO2TatRM333V9NcYgduXTpUb6ovi
         WnAerN5U89WmxJBR0ZFPznQXzZCXltO7F09t9yL5A8matrPDKJIWtaD4YKOnTP13jh9F
         nw5f/3d5oU52oV0aRpnODRdNgOU5sYWwUapBYSOSHcVWvpal8WKfcpES5qkqFB+HSXGR
         DZGMFwmuATNZOcnVLKk5NreaTo9PmpSgPxIfGUtwwv2XYXRQ2VA6z3uYjcnTatazIXAk
         7gU8mQ6O2PbBnC2movytJBGcQ20vVb1w0bVg+M1XD2PGYmvIGHAZ9WpG9ObV48dtaEkQ
         IprA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=5oylp0coKHlAYKnA4rKOsGv6dcSMEQRz7fxdomrAgwY=;
        b=ZWjLA+cXJP2sAlD/Fe3g9MiVGqSO3JGEgL7ga0fAZDC6Fo8E5ZJym6M6LMiXeeFoDu
         PEfPaOrpKJGfib4sH4Tpdw9x657L+8TIddO0fYRia1M2tzFXGJSEPG9t16mfVaCP4GlR
         K+oNkhkpmvKjVV9JntFx0NdK1SpE24Upbw97RxbNuI7Nmuz/3H/YuPiTcvAkhcB0lxKV
         tXJGJT2fOGCCv6VEFGaNjlWrB1MRtkcbERZlPjm6anyXuHniwgd1WgM/rsSGv9VcSa7x
         9XgCh6kVs0k0GaFh536Z6w7bEZZBRN99TxZ4by0BzuwTB4A5K/uXkSgbp97xLtuynHZC
         JlPA==
X-Gm-Message-State: AOAM531r0Y1quhduRceDPH/0tRRU6Pc2DltamEImH3TbnzEcFEWkUQFU
	8YmcFKn/XLLtC5mueD+memg=
X-Google-Smtp-Source: ABdhPJw0eA94AIywFZ0o+OyWaGJ4BypaoMcU+6e6l2A8SaGJ+21/109yXOa9JhkyIOnxyDtFRuk+1w==
X-Received: by 2002:a5d:6d0c:: with SMTP id e12mr5142213wrq.136.1614286120994;
        Thu, 25 Feb 2021 12:48:40 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Thu, 25 Feb 2021 21:48:38 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Cc: Steve Grubb <sgrubb@redhat.com>,
	Felix Kosterhon <felix.kosterhon@secuinfra.com>
Message-ID: <YDgNJsbBFtYumXCp@eldamar.lan>
References: <41A7FAA9-5814-47A7-A9A5-B36D9DE550A8@secuinfra.com>
 <2132838.iZASKD2KPV@x2>
 <E42466DE-9ABE-4996-9F6B-D82DA14396B9@secuinfra.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E42466DE-9ABE-4996-9F6B-D82DA14396B9@secuinfra.com>
Subject: Re: [oss-security] Vulnerability in the Linux Audit Framework Auditd

Hi,

On Thu, Feb 18, 2021 at 03:52:54PM +0000, Felix Kosterhon wrote:
> Hello Mr. Grubb,
>  
> thank you for your insight.
> First and foremost we would like to clarify that our intent is not
> to put blame on anyone but to improve the level of security for the
> affected systems and the organisations utilising Auditd.
> According to the rules.conf manual page, file-watch rules are meant
> to monitor any accesses to files based on their permission level.
> For the syscalls mentioned in this report this is not the case.
>  
> RedHat Inc. shares our perspective on this issue and has assigned a
> CVE for the vulnerability. Additionally they informed us that they
> will work together with the Upstream Linux Kernel Developers on
> behalf of fixing this issue.

Is there a reference to this which can be followed/tracked? Asking
because the Red Hat bugzilla entry for CVE-2020-35501 for now would
still be restricted, but would like to get a better idea on how to
track this issue within Debian.

Regards,
Salvatore
