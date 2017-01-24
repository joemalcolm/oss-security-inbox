X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["880" "Wednesday" "25" "January" "2017" "01:20:49" "+0500" "Alexander E. Patrakov" "patrakov@gmail.com" "<CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>" "24" "Re: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" "^Date:" nil nil "1" "2017012420:20:49" "[oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)" (number mark "        patrakov@gma Jan 25   24/880   " thread-indent "\"Re: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)\"\n") "<20170124085501.GA9322@suse.de>" ("<20170124085501.GA9322@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30416 invoked by uid 550); 24 Jan 2017 21:07:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29998 invoked from network); 24 Jan 2017 20:21:01 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=hPJ71RjamGQ8g+vqaMoDTAHb44xm4rhc8RyuFZ8wTPA=;
        b=Bsk7f+334AHWD+xMGX3lGZSflJXtgMtkZ3EMYxoRTihIUe6rVOr8bA3z0MQ1+19u7l
         QFOkUbrBGDR1T/MxFVW8s2F2cC1VBgcoPROr0oFK1S7WoO7d403KIsoaYSw1MCGFam1n
         VahiWDh2z2l/O7G3/GlFfwWo31W+gW1kjQDSzlOK88aoyPJHgcF22vHS+7yeVuN6BsSc
         1RCOXlDwUArgZXw90LVL2eZp8zokr1TbJ8dvyBF3TAndCCNP3Q3rtDN17tBoNiac2l74
         gN5Y0k1RAHWNzsVFwdYMx04/2mE6i8hnfyElxP9qYNJh7rPajuY3cPOur8jMHFHU3+gL
         ting==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=hPJ71RjamGQ8g+vqaMoDTAHb44xm4rhc8RyuFZ8wTPA=;
        b=FOpwMPeB3q8Tp9BYGpqffoz1FOGOnScMREt+FX9iTHu+737ExZE2aPDksk+/L+D6lA
         ohz864nZF1v/UVddRkDFdQhs1c5GTjD17iWayvrfXHVJmAi7ZcaI3lmQmmOv+AJjirXJ
         Z+M97q+tc47KyTdWskf/IHjRYnIrdo7IALzN9AVgT0b2JCs1IEFGzJnBlAony/8zpjEW
         LdtsWJ/IH9aUJYvEG1XYcAkQr/xtXm1P+5kTwXFysZvyk3hoRHYOtnwEy5VUzarEcmN6
         iy+3a2AKvlelOsv7qHuyePHtd2iHFlbRp9FALOeS0yZhM4NMkHwZUOeVGL2RFJzGWeY5
         AhqQ==
X-Gm-Message-State: AIkVDXJGcjvJr9bygQ4xTRDgreKsLsQAcXKecJLRLLajsvWFpENWBWJ08BAhIuf9hU+sZhxpfOLV+KjVNXPHiA==
X-Received: by 10.36.230.5 with SMTP id e5mr21206541ith.92.1485289249685; Tue,
 24 Jan 2017 12:20:49 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170124085501.GA9322@suse.de>
References: <20170124085501.GA9322@suse.de>
Message-ID: <CAN_LGv1TvwzDnsOSrEos7zuKbsqEsZHB5ahnONK-63CotmUKkA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 25 Jan 2017 01:20:49 +0500
From: "Alexander E. Patrakov" <patrakov@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Headsup: systemd v228 local root exploit (CVE-2016-10156)
To: oss-security@lists.openwall.com

2017-01-24 13:55 GMT+05:00 Sebastian Krahmer <krahmer@suse.com>:
> Hi
>
> This is a heads up for a trivial systemd local root exploit, that
> was silently fixed in the upstream git as:
>
> commit 06eeacb6fe029804f296b065b3ce91e796e1cd0e
> Author: ....
> Date:   Fri Jan 29 23:36:08 2016 +0200
>
>     basic: fix touch() creating files with 07777 mode

That's important for users of Arch Linux and other rolling distributions.

If the system has booted the vulnerable version of systemd at least
once, then the files with dangerous permissions will be there. There
is no code in systemd that fixes permissions on already existing stamp
files. There is no postinstall script in Arch that does it, either.
So, you have to fix permissions to 0644 or remove the stamp files
manually, once, even though the commit appeared in Arch repositories
long time ago.

-- 
Alexander E. Patrakov
