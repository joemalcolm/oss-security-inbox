X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1895" "Friday" "5" "February" "2021" "17:47:01" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<YB12hcO6rarPbHg8@eldamar.lan>" "55" "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil "2" "2021020516:47:01" "[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" (number mark "U       carnil@debia Feb  5   55/1895  " thread-indent "\"Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature\"\n") "<CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>" ("<CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3710 invoked by uid 550); 5 Feb 2021 16:47:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3692 invoked from network); 5 Feb 2021 16:47:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=AMiRSAcmJ5wfVLpKfsVr3Q+THZ+g9hiNorY65uLCxTg=;
        b=e3zuigCQeTWV7V805ZruItfOTdem/gs3HbreDWk8k2qPuePI+zwz3XyvPGR1Tv2tac
         uDMK5MADsSWVV2xjdYoq8yNTPKVBZYsNFmuShCgoQUcFHBEYOcOOHy94PhAbM3Z/YXv3
         9Lbbwk3Spuj3zLa6tBADGmgK+mNPYqPnhxwT4TrHWKgO3esoYyzDABfgeim6mQs4YgB4
         hsSv6Wjag2+W/KbgWzNtBbntrBqNrj1D46WiMOrnCUsVZGFb4UzmuElDFYGjCDT9grFw
         ue90KxELiPcp9Hv0E1iDwBtHP/YIYLNpjG4clatSswo/lc0scj8ngxGMPILCCTjM2Nh1
         zeoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=AMiRSAcmJ5wfVLpKfsVr3Q+THZ+g9hiNorY65uLCxTg=;
        b=rMj9c/ysXCkxpqP0avOHr5fJTZ02ek/F/suZ54gEOyOKruyjjQZshROo02golA38ZR
         JHsyisKRRMb14DGMUtLh+SR93s5eq9H7nUxuo8iAJgRHebdZQenft5vooLUqQD2giz7B
         wUMXdf4kQEzgk2oF8OKTNE4mtAnmxRU3SXDPgSggZOgARo/DbDTOg5y3myjMIY+1tQSN
         lo9Z1C6wX8uh/wzeSZ8CVZbDMaBS1dACo913p5Z6fxZo41PwRq136Bw6Htp7KIcTJb1r
         Xv0dSz+uE4UYU7gLvzkLXkbUa+IOfxyh3PSPhMFOkdWjtIH+5q8YBpaUplZUT9zIPSNQ
         RsMQ==
X-Gm-Message-State: AOAM533wEz+OBhzyE80+AzEhkIBTFos7U3PL/irjdV2lh5Kz5XiLDoAs
	f3vXBbfDp+na415DjDgn2il1zqB9GOTddA==
X-Google-Smtp-Source: ABdhPJy8wT+JxSC9/G3pPxZe24HVpKRvjNLvXztYlUB3ZTatKkUkypbL6qbQcRQqII2RvJR9RlGPFQ==
X-Received: by 2002:a17:906:4a8b:: with SMTP id x11mr4676474eju.195.1612543623416;
        Fri, 05 Feb 2021 08:47:03 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Fri, 5 Feb 2021 17:47:01 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <YB12hcO6rarPbHg8@eldamar.lan>
References: <CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>
Subject: Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring
 feature

Hi,

On Fri, Feb 05, 2021 at 08:27:57PM +0530, Rohit Keshri wrote:
> Hello Team,
> 
> A use-after-free flaw was found in the io_uring in Linux kernel, where a
> local attacker with a user privilege could cause a denial of service
> problem on the system
> 
> The issue results from the lack of validating the existence of an object
> prior to performing operations on the object by not incrementing the file
> reference counter while in use.
> 
> The highest threat from this vulnerability is to data integrity,
> confidentiality and system availability.
> 
> 
> 'CVE-2021-20226' was assigned by Red Hat.
> 
> This issue was reported by Ryota Shiga of Flatt Security Team.
> 
> 
> Reference:
> 
> https://www.zerodayinitiative.com/advisories/ZDI-21-001/

Can you point to the upstream fixes for this issue? The above
reference claims it to be fixed in 5.10.2 (but I guess this is just
the version where it was re-verified to be fixed). The timeline would
indicate that the issue would be fixed earlier (and there seem to be
no io_uring changes between 5.10.1 and 5.10.2).

It was reported on 2020-07-17 to the vendor, as the maximum embargo
time would be 7 days if this was via security@k.o does this means that
it was possibly fixed somehwere already around the 5.9-rc1 release?

The Red Hat report has a bit more details:

A use-after-free flaw was found in io_grab_files in fs/io_uring.c in
io_uring I/O access. This flaw could allow a local attacker with a
user privilege to crash the system at device IORING_OP_CLOSE operation
where a file reference counter was not incremented while in use. This
vulnerability could even lead to a kernel information leak problem.

https://bugzilla.redhat.com/show_bug.cgi?id=1873476

Is the fix included thus in the merge from

https://git.kernel.org/linus/cdc8fcb49905c0b67e355e027cb462ee168ffaa3
(v5.9-rc1)?

Many thanks in advance!

Regards,
Salvatore
