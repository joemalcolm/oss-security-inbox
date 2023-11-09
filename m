Received: (qmail 11962 invoked by uid 550); 9 Nov 2023 13:16:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11933 invoked from network); 9 Nov 2023 04:07:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=uci-edu.20230601.gappssmtp.com; s=20230601; t=1699502845; x=1700107645; darn=lists.openwall.com;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KWJQWEjYIK/daVKCWTxS4kNY3K8ZNMfH6aItjPVf/KI=;
        b=voNldu11dvhQLqd0aM7yhpUEzH6miAlFJf1lfQ87ly2/SdA/QNF9dRJq6F02MoNk0Z
         OrcscGYkJdaFviOFrPtHe+PCVYZQCci+M2vk0YHGnR9rMV5vlXK2TFMtfUSUE+gjNM6q
         8H/uYvxNA/3xqrC4hWakTYQWFk1RKsuQ/7Bb1WAbeciSqgTgmxfwnwb1U/sgmd+PCToX
         HKQy1GzII8/JU7cjiWc1K27snr3+szPdo4ZUG9sUJ58OQZ75Ab2aC/9WV2bmPScpHRgV
         G6lPUXGNjcXANsBKMKKZCLhAEPKsKUoNTqheuFBgy5CSPo3KCySFrrI/Id1+O79cQb6E
         995w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699502845; x=1700107645;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KWJQWEjYIK/daVKCWTxS4kNY3K8ZNMfH6aItjPVf/KI=;
        b=LuNspcAEWFrnIrOMF1fk5eWGxhpjQmp+ZWslihnjeUyus0kVQTYBvwAEf1zsN9iYZV
         4tgyZm67bKReLvUQya+S58pARkiiFysTyry2GbcjjEoFk/VWjmtINRt2Fsv1O92uoaYD
         PPj7fkL0gqJoo6s8V5Rfk+m7u5W6uZNsV9kxQP02wnlPWpMyyfhkEbbbvGYz2G2M+cAI
         pqJNS8nV8ENZbaqQnNaSn5Sl2+lKAOCc45sqDTO9B4MXPonR4rSSiu5lvm7rF9TEFbZw
         3+LLkVOJ7BSm0wTPI4f7S90ShEE0wYbmnjunfdbYbAYPjukgzBi1FFb4q5l0sONFROOC
         l+Cg==
X-Gm-Message-State: AOJu0YyHkW2oHocVkEOjzojxIBKNULjnkS3jKO7Mk/az9OMmiMD4uroP
	C/bJd5YWwdJ+/rdUS3zmFyfzBrGIMTRWjgPgR3cilA==
X-Google-Smtp-Source: AGHT+IH6ztjEbedtK7Qn01sPTrWotoE8HH9TU5MnU2rQ/yLhgtBAJWhFFJC3rtv/LZO40Uoi4d4NURbfTGvM7avlSks=
X-Received: by 2002:a05:6102:2850:b0:45d:9bac:d899 with SMTP id
 az16-20020a056102285000b0045d9bacd899mr3615981vsb.16.1699502845421; Wed, 08
 Nov 2023 20:07:25 -0800 (PST)
MIME-Version: 1.0
References: <20231105224340.GA25140@openwall.com> <CAADnVQKaqKJA_PPLNggzt=BY6jqsCbgpA4MM9ikkP+qY4f8zSQ@mail.gmail.com>
In-Reply-To: <CAADnVQKaqKJA_PPLNggzt=BY6jqsCbgpA4MM9ikkP+qY4f8zSQ@mail.gmail.com>
From: Hsin-Wei Hung <hsinweih@uci.edu>
Date: Wed, 8 Nov 2023 20:06:49 -0800
Message-ID: <CABcoxUYuVw4TC8WiiBWmt+22NmVj_TVuskSWP5Fj3NWBkvDrfA@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Cc: Solar Designer <solar@openwall.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	oss-security@lists.openwall.com, Alexei Starovoitov <ast@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: Linux: BPF: issues with copy_from_user_nofault()

On Wed, Nov 8, 2023 at 10:05=E2=80=AFAM Alexei Starovoitov
<alexei.starovoitov@gmail.com> wrote:
>
> On Sun, Nov 5, 2023 at 2:43=E2=80=AFPM Solar Designer <solar@openwall.com=
> wrote:
> >
> > Hi,
> >
> > Looks like the below wasn't brought to oss-security yet.
> >
> > As I understand from what was posted to the linux-distros thread, the
> > issue was being fixed in:
> >
> > https://urldefense.com/v3/__https://lore.kernel.org/bpf/20230118051443.=
78988-1-alexei.starovoitov@gmail.com/__;!!CzAuKJ42GuquVTTmVmPViYEvSg!LwWVur=
uWiTdoRoQltcxHLiuP59L6twXiH9K5vSXHjQAJ4Kt_PY4ZrsFacExuGA2KxoT2yqmwlLOpBauWK=
whXcD6QvQ$
> >
> > and actually fixed in:
> >
> > https://urldefense.com/v3/__https://git.kernel.org/pub/scm/linux/kernel=
/git/bpf/bpf-next.git/commit/?id=3Dd319f344561d__;!!CzAuKJ42GuquVTTmVmPViYE=
vSg!LwWVuruWiTdoRoQltcxHLiuP59L6twXiH9K5vSXHjQAJ4Kt_PY4ZrsFacExuGA2KxoT2yqm=
wlLOpBauWKwj2mNm1bQ$
> >
> > and it should have been merged to stable "tomorrow or so" after June 27,
> > at which point Hsin-Wei Hung was supposed to finally make the
> > oss-security posting, but apparently that never happened.
> >
> > Of course, the delay from January 2 to June 28 was way in excess of the
> > supposed maximum, and it is even more ridiculous we didn't post in here
> > for even longer.
> >
> > This is what happens when no one in particular keeps tracking issues
> > after they fall out of the attention span.  This is also why we need to
> > take care of the distros list statistics task in real time, not only
> > retroactively like I'm doing for 2023 now.
>
> As I tried to explain, the fix addresses two things:
> - the WARN. By itself it's harmless and the severity is low.
> - lockup with CONFIG_HARDENED_USERCOPY from bpf. That is a real bug
> and backports are necessary.
>
> But the 2nd part of the fix:
> https://urldefense.com/v3/__https://lore.kernel.org/bpf/20230118051443.78=
988-2-alexei.starovoitov@gmail.com/__;!!CzAuKJ42GuquVTTmVmPViYEvSg!LwWVuruW=
iTdoRoQltcxHLiuP59L6twXiH9K5vSXHjQAJ4Kt_PY4ZrsFacExuGA2KxoT2yqmwlLOpBauWKwi=
OE1xn7Q$
>
> was never merged.
> Essentially perf (without any bpf) is broken on arm64 and others.
> arch_perf_out_copy_user() might deadlock with CONFIG_HARDENED_USERCOPY.


Hey,

Sorry to put everyone in a tough situation. I can post it to
oss-security if Alexei agrees. I can also try to pick up the 2nd part
of the patch from where it is next week.
https://lore.kernel.org/bpf/CAADnVQJRd3r84yLcqH1Z-BYU76SRYuDMOCWRcvBfapsXs_=
w-rg@mail.gmail.com/

-Hsin-Wei
