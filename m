Received: (qmail 3784 invoked by uid 550); 15 May 2026 19:16:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32694 invoked from network); 15 May 2026 11:34:18 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778844848; cv=none;
        d=google.com; s=arc-20240605;
        b=VnvtqQ7pNDCfzTKgjh8WsDDI+3hXfUou5qw569kGPAlF20O8AR0FFNfKj5/jxnZRnm
         SllYvDNFujtUICIlefHodOP/bDGa8gv3h5uf+Ejw0s/xXkD83byMi8ZXiQNPq8AsMpw2
         QU0QNYF+ST6M3u+ci3xlM6iIAz8e9Cb+EPx0uGa4BKZLQOgcqgWTOS3B/xZjJ03snzqR
         RCcvlsZpEjWYgTmR8O8pWFqtLO/ZeFmlFh+w0tFkoxSMw49uVR+ZF5m9tWGdwf7YEzzQ
         0knRB5oTdJVaLENNf1PxMsBuSX19VE8Nkhe+rCe1Ijk8w6IjTaywdnU3l0OcOIH0roCa
         VniQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=O3rGe4W0x5IPMFCCVtpn1y5eTbM9pYCDIphQ+zBfes8=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=NKSmcXMaGe1/dQCtuUj77uOuhYbw0tQpq8Lc+hiyNXDvA4n3N07KX07rjHZxEsR1L3
         Y7oiiRRHMZAFP0uRyOD4CFlk0mspcjIv+zpp3h6CsAC1NwNSAeddbFXS2TvTMGUC+GKv
         wveuCwaSSQd2HBzW6Ltx3gl1HuAxXQYJ2XdOCwdSb39w1/Gk5KoUeJAZLbuBQkO2tQKC
         4Sk4tmzCtmBycSchEWzwFUnRofUAJpXcoxz6XMioCxvVkL5D/D4b3pw2TWsAwjFk7tjn
         BSrAhzwsDIu7QsY+i4TvdtC/n+4P9xmkYTWkzktk+xqC/dor4b2eeQkTe6Ftzo86kXKZ
         1sqw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent.com; s=google; t=1778844848; x=1779449648; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O3rGe4W0x5IPMFCCVtpn1y5eTbM9pYCDIphQ+zBfes8=;
        b=VPhZga6IBhXf4UH9HEcDGi2B/HylCGnMN+iDHR2BKAB7vQlyfaqwGaTECOGig6bT6U
         4yby+9eUI9Y+IjHsZAo6392Vp7XF/AU8tiU87oDyzqmbklhbLyAfbDiPPsnl58ARcAMk
         bR0SG0urPuFAixgzyN7NSqk98w6oWErtShuvZGlvB9sAXLysT08A5Zo/xqedTBnkgD7O
         lWaIOMDtsfFSn2DLmcuO3Iw1jSfHm6hUxmArq80w2r/ilpwlQqe1gvuYOBpYRfLhZbFh
         QwWvfqAQSRKjl9kebadMT34HQaH/pzVP8iyEB0F7VwmCowB0ZDbh1ev1/QWQ7S1tSP4x
         AtkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778844848; x=1779449648;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O3rGe4W0x5IPMFCCVtpn1y5eTbM9pYCDIphQ+zBfes8=;
        b=OmE2qKodMbeF+QENmbtXboW4Ma64JtoR3LMOZ94cHlnfSNdNCqetZyBA62F6vmH5RE
         uqoy8PN6A59dy5pd1D8HYzeGT4Yi0Ij0V/UEzW7DC3uge1hvQaOyL79w/rL7Wkh1dqJ5
         d0l4TsBoMLJBuXOzGChtRmi08iiGpc8rov8PDCxOEBmZEfK5blMTt+8Uaje3ShAfDK8b
         Z14Qg0tyD2yV58ZVrsc3cXGZi6yn/u3QJS2vLiV9T6Fnx+Fblgq0v9QgPXHO4DWwDTSM
         Crt14ELgeJtR4uhhEK7OAdJLx1AFM3ILV4+V0vhQNcQ19VsOpP0xsGEsI4Rpqgu5ZzLg
         hEuw==
X-Gm-Message-State: AOJu0YxgFahu9pEYGOufNJM3LdtJpC0pG4xT/pbwaYdwZZfLgS7SpoLe
	xUbqkbmL5qzs2RD3etfGyrM6sgmPvgIVDCSzBwuzbGs+oHXvIuGoJ/CswpvA27VKJZDgXn9/waI
	7PN0tZ9MpOa+w4PnacMMoDU/CPngLsuTbVWkvb1Uck617mbv/a07XN3g=
X-Gm-Gg: Acq92OEMdyvrVpb/bwFkp5Cj8yDLWt6cn/xu389YKUe99fg/DLQy837nYyhcwNIlN8Z
	RlGaSrkiKIN4n3ivXfseeZ8ojvIVwI4mlaDD5NRL7rc/GBTT4KolPb7vYwS2Y6hEcCbn/3qR3vj
	ngGG+zby2lR2iDbWUPCiIstcaf1PZl2z4oT/mef2xk4gNTMDKvoeD5Ybo0PkpKyBAO5ZfY96bXa
	66clGaKT4sodsqlvFKMNbObPX0nDY/adPKyxx4bh/xoraNEV+/z/SP8a5fLfc+26DLDfLquug4y
	zO3gNA==
X-Received: by 2002:a05:6214:ca2:b0:8bd:eee8:2fa6 with SMTP id
 6a1803df08f44-8ca0fbe979dmr63185596d6.35.1778844848147; Fri, 15 May 2026
 04:34:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260515022033.GA10889@localhost.localdomain> <87cxyxe76j.fsf@gentoo.org>
 <agarKP9wHQMGuV_D@eldamar.lan> <20260515102305.GA21592@localhost.localdomain>
In-Reply-To: <20260515102305.GA21592@localhost.localdomain>
From: David Gonzalez <daferna3@isovalent.com>
Date: Fri, 15 May 2026 13:33:56 +0200
X-Gm-Features: AVHnY4Jt2x_EB1iQJcXXa7H8HWwtJ7eW4mKqVlggW0VPA7uBbfxJGptgn4CtEXQ
Message-ID: <CAEe76QznAL=sQitMxsac-FqvwNdiC2B9kP96qC53_Q4BVJLk7Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Logic bug in the Linux kernel's
 __ptrace_may_access() function

[Resending since I don't think my previous response
made it due to incorrect type]

Hi!

From my tests, yama.ptrace_scope of 2 and 3 should mitigate the attack
(as Qualys just confirmed)
Looking at the call graph for sys_pidfd_getfd we can see:

sys_pidfd_getfd ->
    pidfd_getfd ->
        __pidfd_fget ->
            ptrace_may_access(task, PTRACE_MODE_ATTACH_REALCREDS) ->
                __ptrace_may_access

If ptrace_may_access returns an error, the file is not returned.
https://elixir.bootlin.com/linux/v6.19/source/kernel/pid.c#L839

Inside __ptrace_may_access we can see that indeed if mm is NULL,
this end check is skipped (the race the exploit tries to win):
https://elixir.bootlin.com/linux/v6.19/source/kernel/ptrace.c#L341

This is still guarded by the LSM hook though (ptrace_access_check)
YAMA ptrace check yama_ptrace_access_check hooks there:

LSM_HOOK_INIT(ptrace_access_check, yama_ptrace_access_check)

And values 2 and 3 should be sufficient to deny the request:
https://elixir.bootlin.com/linux/v6.19/source/security/yama/yama_lsm.c#L370
(1 doesn't work since the attacker process is the parent
so the call is allowed)

$ ./chage_pwn
[*] round 0
fd 6 -> /etc/shadow (round=0 try=201)
[+] Success! Reading /etc/shadow...
================REDACTED===============
$ sudo sysctl -w kernel.yama.ptrace_scope=2
kernel.yama.ptrace_scope = 2
$ ./chage_pwn
[*] round 0
[!] no hit in this round
[*] round 1
[!] no hit in this round
[*] round 2
[!] no hit in this round
[*] round 3
[!] no hit in this round
[*] round 4
[!] no hit in this round
[*] round 5
...
^C
$ sudo sysctl -w kernel.yama.ptrace_scope=3
kernel.yama.ptrace_scope = 3
$ ./chage_pwne
[*] round 0
[!] no hit in this round
[*] round 1
[!] no hit in this round
[*] round 2
[!] no hit in this round
[*] round 3
[!] no hit in this round
[*] round 4
[!] no hit in this round
[*] round 5
...
^C

Also verified with eBPF (Tetragon) by hooking and blocking
in the same LSM hook:

$ cat /proc/sys/kernel/yama/ptrace_scope
cat: /proc/sys/kernel/yama/ptrace_scope: No such file or directory
$ ./chage_pwn
[*] round 0
fd 6 -> /etc/shadow (round=0 try=20)
[+] Success! Reading /etc/shadow...
================REDACTED===============
$ sudo tetra tp add ../policy.yaml
tracing policy "../policy.yaml" added
$ ./chage_pwn
[*] round 0
[!] no hit in this round
[*] round 1
[!] no hit in this round
[*] round 2
[!] no hit in this round
[*] round 3
[!] no hit in this round
[*] round 4
...

Any LSM using the security_ptrace_access_check should be able
to detect/block this attack as I understand it.
Let me know if I'm missing something or anything here is wrong.

Thanks!
David
