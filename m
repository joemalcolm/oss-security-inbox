Received: (qmail 24507 invoked by uid 550); 17 Feb 2026 16:10:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24471 invoked from network); 17 Feb 2026 16:10:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771344629; x=1771949429; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCyST/eObs8IoGlgFw+0oZDZC4eXHSqqnSDB2gBRiNI=;
        b=bxIHKkOeRNo7cXel3j+pWKWhFXIWBM4xRhF7/hsZlvNxOZEhg+Tr2+2tdE8QqAxAP3
         ngnFAGCC2SxLKoIr1hjd0mrtqeYa0NwHehvz+bcUY6fRLJUdsIqbk5LiIyZ6TuARgpe5
         vgo4TP3M8FRT8WDTcQJ3r55LkeCL09VaRd2uyMR2nKqtJAdv0Xwj8RgBPh5x+M1MKF6c
         MVVUhSMXV0oEhNK5z0AQ+SCeGVfiBoc8AAj27kz+AFagX9DWU5qBS0KOhAqwWRcsyyW3
         5I6C0dFcsDhPLQEPtuuDubWrkzJVY2U3E96q4XgiJN1q6IYWXLe8eqEDdPKYuyNLx8AV
         ixyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771344629; x=1771949429;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BCyST/eObs8IoGlgFw+0oZDZC4eXHSqqnSDB2gBRiNI=;
        b=n9UPFuNJec3qmTPQF8VK6PvqxomL0nPSDFmvq2ZMqFwUrTW3tk6wVpfusH5DG/2A2Q
         LARsGy/CQLXNAjVtwqDYjJn/ekIMcIDRtM8M6W4mMuB9+0BqnQxIyATCdBuJUstC/6fy
         p/AH0F4NqaRO7h+d/GidZuMW/hhLvwAfB/5sT3ILuYSIe6ng0HLDlSvIfOmoIKiSCAo/
         KXZaQDoidPTOz9vd6QL1mglGB4x0UkwJ62S3CJO5e/xEBkaUGc0XgZ7SBgAIsgyG48lj
         SOF09jdPip87Y529CZQH0ADMdFb2Mx+V3kkVwHsJ4HMIXvmKYUnZrBR8QCvy0eNM6Ly6
         ft0w==
X-Gm-Message-State: AOJu0YyLuVAw1nhByQ/WbRas1Bc0mGojRJIZrCFsi1FMk8QDTPZg6fKV
	rC4uQxmsyz8bwBIlX/Tw88gaeSiwdkAMmNdsI5wu2TVd5d5sUqGwMG+1cY74oHsk
X-Gm-Gg: AZuq6aL9/6TgHjHUDHro01k5TC+JQzKexYgUmk/1S6g7b439gxc7g6LQiH4FrPp4SIs
	XFuH5BVgawGTSiZfUB3qO6kkZgF80aHAJScSbPWiIu3Fu9ZyUKUAWLdb9fd+qji/vQNpW0qV7Ar
	7va/gGrv2xUn6mlKfBPU52aO5PM6jIi2pxle+cHBzqGqzq9E2g3Lp7HKhf9qcRIPjhKHc9PTG8A
	uXe3PbyteXU8KxKFfEWmg6mkhjVOh5LtNzW0S8MdMHJ0HPlOmUI3Gh+l4a+DsUULyYaMY2/YTdd
	UZL3iR3tzpntCMHqmm5XRv+jGcnsEmFfEf3a0YVXPeNKB8Upg5c3H4s1CLGC2bPbshTaKLCP/C8
	DfNRZNQJ1r80gjtdJst7rGM/YL5E/1XYv8BR9J99z/T3zkkHZAnRdSZZuKOdx6sK/jStmH5Sh6C
	9DFAMHFtrHX/UKvV6p7nGSh4zw2qbu5bGUt0bBTZkai3jAPQliBhF84K5o1onXHxmCy0k=
X-Received: by 2002:a05:600c:8b6d:b0:47e:e807:a05a with SMTP id 5b1f17b1804b1-48379c31ca1mr198429885e9.33.1771344628908;
        Tue, 17 Feb 2026 08:10:28 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Tue, 17 Feb 2026 17:10:27 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <aZSS895E3y8wLlmm@eldamar.lan>
References: <aZSCyyJ82etgzCKm@yuggoth.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aZSCyyJ82etgzCKm@yuggoth.org>
Subject: Re: [oss-security] [OSSA-2026-002] OpenStack Nova: calls qemu-img
 without format restrictions for resize (CVE-2026-24708)

Hi,

On Tue, Feb 17, 2026 at 03:01:31PM +0000, Jeremy Stanley wrote:
> =========================================================================
> OSSA-2026-002: Nova calls qemu-img without format restrictions for resize
> =========================================================================
> 
> :Date: January 17, 2026
> :CVE: CVE-2026-24709
> 
> Affects
> ~~~~~~~
> - Nova: <30.2.2, >=31.0.0 <31.2.1, >=32.0.0 <32.1.1
> 
> Description
> ~~~~~~~~~~~
> Dan Smith from Red Hat reported a vulnerability in nova. By writing a
> malicious QCOW header to a root or ephemeral disk and then triggering a
> resize, a user may convince Nova's flat image backend to call qemu-img
> without a format restriction resulting in an unsafe image resize operation
> that could destroy data on the host system. Only compute nodes using the
> Flat image backend (usually configured with use_cow_images=False) are
> affected.
> 
> Patches
> ~~~~~~~
> - https://review.opendev.org/977104 (2024.2/dalmatian)
> - https://review.opendev.org/977103 (2025.1/epoxy)
> - https://review.opendev.org/977101 (2025.2/flamingo)
> - https://review.opendev.org/977100 (2026.1/gazpacho)
> 
> Credits
> ~~~~~~~
> - Dan Smith from Red Hat (CVE-2026-24708)
> 
> References
> ~~~~~~~~~~
> - https://launchpad.net/bugs/2137507
> - http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2026-24709

Just a small heads-up: The title mentions CVE-2026-24708, but the mail
body once CVE-2026-24708 and refers to CVE-2026-24709. My
understandign is that CVE-2026-24708 should be the correct one as this
was the CVE originally mentioned.

Jeremy, can you confirm: CVE-2026-2470*8* is the one to use?

Regards,
Salvatore
