X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1142" "Thursday" "30" "July" "2020" "18:41:40" "+0200" "Jann Horn" "jannh@google.com" nil "20" nil "^Cc:" nil nil "7" nil nil (number mark "        jannh@google Jul 30   20/1142  " thread-indent "\"[oss-security] Re: Alternative CET ABI\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: Alternative CET ABI" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17816 invoked by uid 550); 30 Jul 2020 16:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15971 invoked from network); 30 Jul 2020 16:42:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uOgsUbAvtb07X2t6oCOXPaH/oAL+aoYjRmE457oKQVE=;
        b=F/akzAAcghFkbb5rg2I+dUhbCLh5STTtsK7MimVF+Ch5DDzPABUu5CF+W+vBRvRLgS
         ePuaSTbpwmciMZQHJEU47jnoOqSdnhckGm4nG13TjSQSQjX0gY0WbwBWahgzeVMpj/IM
         b0eabTrV3OuLVQ/76ZO1iZziutwAD9nfjMcMldjskzEHHzFiVgTj1JGpoevduOyAc5JB
         s9COTq/fxE+6qX0URVjIKtPxK+4JiFAGf5uCYqW8cFD/oi0MCSAC77+Kz7D4av0mRq1R
         NjsxdcZHq3+X0fOJebWbt6A/XJZjnsbGjQ24sx5XtlhOAo0L5E3/MGOYiA2xOMKua07A
         C9/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uOgsUbAvtb07X2t6oCOXPaH/oAL+aoYjRmE457oKQVE=;
        b=T9yqlTBjRKfGiKcHOaAE0VyAadSBEwPrd+p1KLUa69/nUAmgxsJDObxhrbWsfZ0bgu
         EH+q71azrKKtoJ/uXR6rk18ykSUm14qo36Uz8PLc7tgM5dPXR2e+A5/VNNA5FskfkXQn
         dq6qsHbBW9rsIR0MRW/Sa98sp2mXrq5UAGLd42Q1DQzp8aKlm8t9OJ5IsVGJbC3aUNmv
         2HQAytSkWFJKSPzLwlmOyGxIVcJA9m1vnHYqOHVxBho5LYTaP+eBufaN3yWFmm2eop+K
         ByuvAVi/yXYmD/PGUWEnuiGGXFb1ajvlTm05veEAE6l5SyZMNyBkeG3e8VG6ZvUtuh7N
         Lsgg==
X-Gm-Message-State: AOAM530/ErzPd+JbeQCp6dxebXUvWi7eivwZ0GqHu49salSfR9bBdQzw
	+plc7u4U/1sxf2M2iknndoTqX6LUAASa3qvutEr0iw==
X-Google-Smtp-Source: ABdhPJwqLir8etUYa8a7uyi48sMcY0xMDD9OCpUUEIzG6Kyrg5O2YRcXX3ofIoRkrkqEUCyjzA8TyGUPErzO0SL5fIc=
X-Received: by 2002:a2e:9251:: with SMTP id v17mr66150ljg.138.1596127327122;
 Thu, 30 Jul 2020 09:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <87k0ylgff0.fsf@oldenburg2.str.redhat.com>
In-Reply-To: <87k0ylgff0.fsf@oldenburg2.str.redhat.com>
Message-ID: <CAG48ez3OF7DPupKv9mBBKmg-9hDVhVe83KrJ4Jk=CL0nOc7=Jg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: oss-security@lists.openwall.com, x86-64-abi@googlegroups.com, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>
Date: Thu, 30 Jul 2020 18:41:40 +0200
From: Jann Horn <jannh@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Alternative CET ABI
To: Florian Weimer <fweimer@redhat.com>

On Thu, Jul 30, 2020 at 6:02 PM Florian Weimer <fweimer@redhat.com> wrote:
> Functions no longer start with the ENDBR64 prefix.  Instead, the link
> editor produces a PLT entry with an ENDBR64 prefix if it detects any
> address-significant relocation for it.  The PLT entry performs a NOTRACK
> jump to the target address.  This assumes that the target address is
> subject to RELRO, of course, so that redirection is not possible.
> Without address-significant relocations, the link editor produces a PLT
> entry without the ENDBR64 prefix (but still with the NOTRACK jump), or
> perhaps no PLT entry at all.

How would this interact with function pointer comparisons? As in, if
library A exports a function func1 without referencing it, and
libraries B and C both take references to func1, would they end up
with different function pointers (pointing to their respective PLT
entries)? Would this mean that the behavior of a program that compares
function pointers obtained through different shared libraries might
change?

I guess you could maybe canonicalize function pointers somehow, but
that'd probably at least break dlclose(), right?
