X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2379" "Monday" "30" "October" "2017" "21:09:27" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20171030200927.pm3ypa3nomwgwq4h@eldamar.local>" "55" "[oss-security] Quagga: CVE-2017-16227: BGP session termination due to rather long AS paths in update messages" "^Date:" nil nil "10" "2017103020:09:27" "[oss-security] Quagga: CVE-2017-16227: BGP session termination due to rather long AS paths in update messages" (number mark "U       carnil@debia Oct 30   55/2379  " thread-indent "\"[oss-security] Quagga: CVE-2017-16227: BGP session termination due to rather long AS paths in update messages\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3723 invoked by uid 550); 30 Oct 2017 20:09:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3699 invoked from network); 30 Oct 2017 20:09:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=fFTGSjDLBbo/nbLew8F/gBFSf3qVo/dTYhgWWiKkwRQ=;
        b=nO7kMWlHq/A3+uLvnuabuMD3YuiKd/7hj+9zLyhli4vIkOcA+i18Lzbmab3GLe9A8N
         ljnU+M5e2+VqFj6IQKhD7KPeKwo9/3kf6GPCDo4nkdgfqli4+JvBjINKcEd+p+vP5m/p
         PsE9PT6KtYn7O/wypoy2L58EgOE4ZDBJTHYkutI3JSgBw8KxXA6gBvCVibG1OJZjDnJ1
         iCpjNX1m30Mx5TIJwwAcfTe8RzSgSYvW0Y0J3vhs1DoPnU6lyuWgSf4G/1EcI5vQCRt8
         w/xF+mmmxTgBdf+K7/cjw4jcKDeCGo317ERDXkmWqBk864u4N2rr2QdJ+L28jvEDQiE1
         qKCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :mime-version:content-disposition:user-agent;
        bh=fFTGSjDLBbo/nbLew8F/gBFSf3qVo/dTYhgWWiKkwRQ=;
        b=pGmCbCudhrh7cr3fYeL5/qqkz6RlgJJ0FP31ja22bGo/Ow+AwglQ8L5LdrDYSHYDyY
         7qsoH1YdA8rs4sVTKWo2mtegQhfAbHsHUFOHHHoDF+IOtZzE9/+QgzTvXj3VG5QsMWE+
         iemyrKg+2KkJjebA4FaW05QSVtuLheariqMLqcm5rTOn1cfM16jhBFJPf9PR2KJh9QcM
         J3dvo/FIv9yn37iysRgIRYKHNrFjfOpzS2P6E13n+j+QFS6nlwcdCarN5VRhj0leTmib
         4rvWYEfJqluE6XxX4qRhnAx74Q2IQbGcEdLrtxSfmU20A4rMPF6OpY6DFeFrQQdOM0aT
         o2BQ==
X-Gm-Message-State: AMCzsaXxyN94tj1NvR9uBVvgW1V9ksGU8SlhcucBvZtPvKyVd8+If6ZN
	xoXGRlMCVTjK1uvv+1FXZ2+nMg==
X-Google-Smtp-Source: ABhQp+SHSRmt5sY29k1w7yy3pp+6/K6ZmIPzM3k47UM8nOZOZ/XpPYm7/YvmN6RF3NSJNWdh2cuD9w==
X-Received: by 10.28.28.138 with SMTP id c132mr4539678wmc.48.1509394168875;
        Mon, 30 Oct 2017 13:09:28 -0700 (PDT)
Message-ID: <20171030200927.pm3ypa3nomwgwq4h@eldamar.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170609 (1.8.3)
Date: Mon, 30 Oct 2017 21:09:27 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: [oss-security] Quagga: CVE-2017-16227: BGP session termination due to rather long
 AS paths in update messages
To: OSS Security Mailinglist <oss-security@lists.openwall.com>

Hi

The following issue in Quagga got assigned CVE-2017-16227:

It was discovered that the bgpd daemon in the Quagga routing suite does
not properly calculate the length of multi-segment AS_PATH UPDATE
messages, causing bgpd to drop a session and potentially resulting in
loss of network connectivity.

It was reported as https://bugs.debian.org/879474 in the Debian bugtracker, and
following up now here on oss-security. I'm going to fquote the detailed report:

> there is a longstanding bug in quagga where certain BGP update messages
> cause a quagga bgpd to drop a session, possibly resulting in loss of
> network connectivity.
> 
> 
> Details:
> 
> Long paths in update messages are segmented in BGP, and the bug is in
> the recalculation of the framing information if there are more than two
> segments. The resulting data is invalid but will will be used for
> redistribution. At least if the receiver is another quagga bgpd, that
> message is rejected, eventually resulting in a BGP session termination.
> 
> The receiver's log (if written) contains an error message like
> | BGP: 172.23.97.181: BGP type 2 length 3074 is too large, attribute total length is 2069.  attr_endp is 0x562feb368121.  endp is 0x562feb367d2c
> then.
> 
> So if a site's BGP peers all run quagga, that site will lose network
> connectivity due to frequent session termination. Additionally, the
> repeated initial full table transfer will result in a significantly
> bigger network load, I've seen around 1 MByte/sec/link, compared to
> usually less than one 1 kbyte/sec/link.
> 
> Such extremely long AS paths have occured in the global BGP table at
> least four times since June. Last time started on Oct 13th around 20:43
> UTC and lasted until the following week.
> 
> All versions of quagga in Debian are affected.
> 
> 
> How to fix:
> 
> Kudos to Andreas Jaggi who identified the bug and provided a fix[1].
> After some hours of work I was able to reproduce the issue and can
> confirm this patch resolves the issues for all versions of quagga in
> Debian (wheezy, jessie, stretch = buster = sid). Details about the
> setup available upon request, it's just some stuff to write down.
>
> [1] https://lists.quagga.net/pipermail/quagga-dev/2017-September/033284.html
>     http://git.savannah.gnu.org/cgit/quagga.git/commit/?id=7a42b78be9a4108d98833069a88e6fddb9285008

Regards,
Salvatore
