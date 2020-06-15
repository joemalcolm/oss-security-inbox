X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1260" "Monday" "15" "June" "2020" "19:02:51" "+0200" "Jann Horn" "jannh@google.com" "<CAG48ez3fQbBLUBUkSaF-0b_DhL8M_1JU4DKkjTYXGB_6G1RgiA@mail.gmail.com>" "27" "Re: [oss-security] lockdown bypass on mainline kernel for loading unsigned modules" "^Cc:" nil nil "6" "2020061517:02:51" "[oss-security] lockdown bypass on mainline kernel for loading unsigned modules" (number mark "        jannh@google Jun 15   27/1260  " thread-indent "\"Re: [oss-security] lockdown bypass on mainline kernel for loading unsigned modules\"\n") "<206DB19C-0117-4F4B-AFF7-212E40CB8C75@oracle.com>" ("<CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>" "<206DB19C-0117-4F4B-AFF7-212E40CB8C75@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] lockdown bypass on mainline kernel for loading unsigned modules" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20063 invoked by uid 550); 15 Jun 2020 17:13:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15375 invoked from network); 15 Jun 2020 17:03:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h+e+6oiMfPcuzfOioIuAZY78N0uqSVxHMMheHIvnJFI=;
        b=ZdDL5AnKuDKjT78TYGdiLM90FU4CSgVPQvBPwBxI4352g9rT5orcRSoCEyhOgCzmrb
         4e5RDz3iPk4xgm/IQFSISxou4eEhtOFpaahQc3QKC4aym1agnSpfRVXS8vTqXb2Plmrd
         JE+g5jt9NSl4Bg3MUUdIcJO1AZwUTx6w0nfikkonIXSuSDXlbWYxbECK8lmFLj4afdYC
         HrXWm/+8PH0LuJZpduXLjdnuoL+cnyvy/wanzTOdUAr9jrz/ji7YRX+MTUSO0WBJYFXJ
         eCTY/xUIKoC3WPvskinA4vXddp2oIjFSeL+i1Yt4RZNpAH1rkFIT1NsfcEEsKZQU8Oth
         aD0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h+e+6oiMfPcuzfOioIuAZY78N0uqSVxHMMheHIvnJFI=;
        b=CpCKwy3uLXwyIcaF+bJ85/zGUrRKvjM/IgfJdEnFxHWwpqYKtiBmdL3vURJ6v7sw8X
         YmJYO5YckrTtNzzN857VCRQMMn+JpxB7pnKowAgdFaGaZY/oD+ANRyyXSWbaec77BDoF
         Gzsd1/2qdPbREFkfokOu5vZVUrIsct4j132VZiCZQzBnuk4qaPST7EHDiFAFNvJkHKMA
         7MijBN+xrrFB1759NI6h4uf8aHSg2US204Cz4WNBxLGIdYpFPF6Vs/A/JImkLDmljWrX
         U8+3O4sYQ2YOdGshK7dIedbNCAK6WsIfj5fNh4RwHhh865aSK0SnoItzRdp4vh+hldBn
         bIvA==
X-Gm-Message-State: AOAM530SXBcalamh3EqSsPUBsARJbTW6RhHM5KXnOsClXuAitLaTxXGy
	Wam2DQIQedDD5J4UR+BGXYUJ9GWoMm43VIVLqPIaBJDi
X-Google-Smtp-Source: ABdhPJxKghjauWCQ06S7R7giwAOWLRv8YnNXKPN82l+nvWY9jbQW3XjbsykSVqW3lMHbTPuJcLGB8eKa4JCQbYJKd3Y=
X-Received: by 2002:a05:651c:38b:: with SMTP id e11mr12109574ljp.415.1592240597617;
 Mon, 15 Jun 2020 10:03:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9rmAznrAmEQTOaLeMM82iMFTfCNfpxDGXw4CJjuVEF_gQ@mail.gmail.com>
 <206DB19C-0117-4F4B-AFF7-212E40CB8C75@oracle.com>
In-Reply-To: <206DB19C-0117-4F4B-AFF7-212E40CB8C75@oracle.com>
Message-ID: <CAG48ez3fQbBLUBUkSaF-0b_DhL8M_1JU4DKkjTYXGB_6G1RgiA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
	linux-security-module <linux-security-module@vger.kernel.org>, linux-acpi@vger.kernel.org, 
	Matthew Garrett <mjg59@srcf.ucam.org>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	Ubuntu Kernel Team <kernel-team@lists.ubuntu.com>
Date: Mon, 15 Jun 2020 19:02:51 +0200
From: Jann Horn <jannh@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] lockdown bypass on mainline kernel for loading
 unsigned modules
To: John Haxby <john.haxby@oracle.com>

On Mon, Jun 15, 2020 at 6:24 PM John Haxby <john.haxby@oracle.com> wrote:
> > On 15 Jun 2020, at 11:26, Jason A. Donenfeld <Jason@zx2c4.com> wrote:
> > Yesterday, I found a lockdown bypass in Ubuntu 18.04's kernel using
> > ACPI table tricks via the efi ssdt variable [1]. Today I found another
> > one that's a bit easier to exploit and appears to be unpatched on
> > mainline, using acpi_configfs to inject an ACPI table. The tricks are
> > basically the same as the first one, but this one appears to be
> > unpatched, at least on my test machine. Explanation is in the header
> > of the PoC:
> >
> > https://git.zx2c4.com/american-unsigned-language/tree/american-unsigned-language-2.sh
> >
> > I need to get some sleep, but if nobody posts a patch in the
> > meanwhile, I'll try to post a fix tomorrow.
> >
> > Jason
> >
> > [1] https://www.openwall.com/lists/oss-security/2020/06/14/1
>
>
> This looks CVE-worthy.   Are you going to ask for a CVE for it?

Does it really make sense to dole out CVEs for individual lockdown
bypasses when various areas of the kernel (such as filesystems and
BPF) don't see root->kernel privilege escalation issues as a problem?
It's not like applying the fix for this one issue is going to make
systems meaningfully safer.
