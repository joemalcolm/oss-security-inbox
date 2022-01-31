X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2310" "Monday" "31" "January" "2022" "07:17:08" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" nil "54" "Re: [oss-security] xterm buffer overflow via crafted sixel" nil nil nil "1" nil nil (number mark "U       carnil@debia Jan 31   54/2310  " thread-indent "\"Re: [oss-security] xterm buffer overflow via crafted sixel\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] xterm buffer overflow via crafted sixel" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 27969 invoked by uid 550); 31 Jan 2022 06:17:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27951 invoked from network); 31 Jan 2022 06:17:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=dLKstbKTl+DKgpw93G4xeQD6NQVcIgMI9KYgAHtCUGI=;
        b=GvfZai/Bz1KI+Yn8ixL0G2kBKCQ1/Mvrz78Us3NMLHpyloXTn7Lt9r1MUVvI6R3PN/
         rt2xUxZgzQlTWt1lhYJFEZBrM8IIzgZBs0R9RxOihTx1GfHJspnTWkOmkGj22ZTupKID
         rnoDCVr0DtjZvOhtIPJ5uJ+zhGizpwcCS4Z/073gNJtjuMmRdeovFTFAQ0NYJcnctEc1
         qAYVQPfn2Y9NHcuyGgVloH8CcW6gOfGvjYhba/tTK+QFhRruRvx/vfIRE7Q5d9veZ1ZA
         10p2GhUk8GCjX8fdi7vgim1P4/QxRNPsHasWlvOVYCOvjUhaOHYMAJZwfkd8D6Gjkoxd
         Cv3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to;
        bh=dLKstbKTl+DKgpw93G4xeQD6NQVcIgMI9KYgAHtCUGI=;
        b=bnh+/QZNEyxbisQoDUT8tTyWZrJ9heMB7WRvx1ELEyhKFKJQDg0eRhV99fwiP8YXA8
         v2n8BPZPK9DEl2HQofRKVeFAgew0ZgJ5mx6z+kIMHif/GQ42UFU6cq6gvUJhcksoobHn
         rn+aW/ltbWff9rtU0EOIvPR1974eD6ltJ7z+/rrdiir2z0014cGbYif367bMzYzVLmNl
         /zj1DmOKGfCnfVhItOW4ndqRuB9aaqMia3+0p5o0tVvcJvFO2TnelMx9cjBHo+nDqFOU
         WiWx/qVG97E3A5xxlY6ZuzcWO4eIWe7H3RR6t0PUObva/usQ2lLtuZE2Ao85cDaWCOfF
         yfow==
X-Gm-Message-State: AOAM533fBgWOeKjiPa6umig2mdL8EP5NASvQfaFboNWvA/VZWGMTdn8m
	HTr7osVE57JkTm/VPpSI1JMh8IO0Nwd9EQ==
X-Google-Smtp-Source: ABdhPJzoqRtDw2kCvyoMCim27EqPlI+ByMNSg4xZjEbXzPUcSV3TkrazoEdzA0XlNXTuQhaP5KScig==
X-Received: by 2002:a5d:56cc:: with SMTP id m12mr16109641wrw.167.1643609829634;
        Sun, 30 Jan 2022 22:17:09 -0800 (PST)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Mon, 31 Jan 2022 07:17:08 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <Yfd+5JHnPnIZTbPP@eldamar.lan>
References: <YfbKimj0O33X9f7v@schwarzgerat.orthanc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YfbKimj0O33X9f7v@schwarzgerat.orthanc>
Subject: Re: [oss-security] xterm buffer overflow via crafted sixel

Hi,

On Sun, Jan 30, 2022 at 12:27:38PM -0500, nick black wrote:
> howdy! in the hopes of further distributing my computing into
> your terminal emulators, i this morning learned that i can
> control writes to memory from XTerm's context via the method of
> crafted sixel. en garde, i'll let you try my wu-tang style.
> 
> this was discovered while working on Notcurses bug #2573:
> 
>  https://github.com/dankamongmen/notcurses/issues/2573
> 
> an error of mine own led to emission of a corrupted sixel [0], and
> spectacular gyrations from XTerm:
> 
> ==1426124== Invalid write of size 2
> ==1426124==    at 0x193FF1: set_sixel (graphics_sixel.c:181)
> ==1426124==    by 0x1949E1: parse_sixel (graphics_sixel.c:534)
> ==1426124==    by 0x17203D: do_dcs (misc.c:4973)
> ==1426124==    by 0x149E03: doparsing.constprop.0 (charproc.c:4224)
> ==1426124==    by 0x14B383: VTparse (charproc.c:5183)
> ==1426124==    by 0x14B670: VTRun (charproc.c:8163)
> ==1426124==    by 0x12DC49: main (main.c:2911)
> ==1426124==  Address 0xffffffff0941efb8 is not stack'd, malloc'd or (recently) free'd
> ==1426124==
> ==1426124==
> ==1426124== Process terminating with default action of signal 11 (SIGSEGV): dumping core
> ==1426124==  Access not within mapped region at address 0xFFFFFFFF0941EFB8
> ==1426124==    at 0x193FF1: set_sixel (graphics_sixel.c:181)
> ==1426124==    by 0x1949E1: parse_sixel (graphics_sixel.c:534)
> ==1426124==    by 0x17203D: do_dcs (misc.c:4973)
> ==1426124==    by 0x149E03: doparsing.constprop.0 (charproc.c:4224)
> ==1426124==    by 0x14B383: VTparse (charproc.c:5183)
> ==1426124==    by 0x14B670: VTRun (charproc.c:8163)
> ==1426124==    by 0x12DC49: main (main.c:2911)
> 
> I reported this to Mr. Thomas Dickey, the Archfather, and
> offered to put a patch together this evening. I also told him I
> probably wouldn't bother with a CVE, regarding which I clearly
> changed my mind pretty much immediately. Sorry, my good man =\.
> 
> This requires that XTerm was built with Sixel support, and that
> the XTerm configuration interprets Sixels.
>  
> --nick
> 
> [0] "a man of genius makes no mistakes -- his errors are
>   volitional, and the portals to discovery." (james joyce).
>   nah, just kidding, i totally screwed it up.

This issue has CVE-2022-24130 assigned.

Regards,
Salvatore
