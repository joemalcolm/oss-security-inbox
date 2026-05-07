Received: (qmail 3114 invoked by uid 550); 7 May 2026 18:30:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 31772 invoked from network); 7 May 2026 18:28:13 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778178484; cv=none;
        d=google.com; s=arc-20240605;
        b=V2UGvW5REVH84R8FtF2+9fkIVjc+IIv9TICrdXXM3fWTlhN4qFRQdZ1E+D6uisk4uN
         LFtT9i3Py1LtBfhCYlCymfmAjjZNOEuMgH8PhJeY9GxYnqtmzZzMd7Trz1tmFZPH6VDh
         AXQXrBspBgkbHGqAnSJLvpsCx7seZJ/EKfPQYIRNjk1VLOUsFgY+m2uQaVW9oszLUnIq
         BGU4e/HxRQGpEXMCmcjaIVQHej0am127iS8B1TSnBHt4Sj/zjxfi4vnx3HF7MlPsRB8M
         C2l5siDdqiij24mzbpUbtNUnF4bDpHHMwf63mxR0092GRzR7ZGhMhLbHiU1PV/57mwMn
         S0ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CNe/EwerXM8UKJsOCaYNy9aAy+AWoX+mkSX72W6j0dI=;
        fh=oPPg6bcExN5Wua0QA/EHKN6dM/OYxjKhX2sBGNIY4yo=;
        b=WnJZ29YPli9FeWM1AH8EEIOX29TaX/aS9rZg7aaCHEc7pxz0KmUAObRIYAw3e4WWet
         mS/BJz7xuF65s81uMI6a5XPcTnrXeRfdZG05NojD/s4MtdX75zNa6K2aEi5L3NY0SMvz
         TwbqDMuEBftAf/m8JrAlC0uJ875+QoxmZqX2Xsx3Bv418ptJ+unf+mYLct56enRy16hV
         d/V6rBcHQfq7pz+pDi8UnYQ54K49xkKwU/8YP72L9stDjQC0fgl2kXFWFc9mjp0wUwYa
         Cdl6sFKlkEwgd+LipbAHttTjZWsmla3+6JrdbQz/tQzjQgC3n/rBcebd/ICHO4cH8kke
         W1QQ==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778178484; x=1778783284; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CNe/EwerXM8UKJsOCaYNy9aAy+AWoX+mkSX72W6j0dI=;
        b=IOrjLzeMWZ88N3b6weVQcf1LPpDFDHOd7Zowg+vAh8Trl7mL/TRUwj3PoPlDDuqqwt
         Bab5p8+cDe86p6cQSmuws9I+llhUTIp1rOXHVtTLgUr8SLhCHOtMmrbrghWQ8+lH/ZZW
         FCsl1WHUrn/T1XhsllsXuweWUkRzwaOjuFsqgcFoY5FWydpc+I0VP06ZWyNqrI/JAHaK
         mqEzxLsX1mOIJqSQRCal4Jv+2SzrLmSsgXmtW3OxHJVNhcmdCetULUlt187lpTEJJTy7
         IqHQHu683aQbgCUKpP1iiv869iaS5kKJBFNuhXmK4aEg1NjsisSkGuE3S0ElWYVIXFSj
         QXuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778178484; x=1778783284;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CNe/EwerXM8UKJsOCaYNy9aAy+AWoX+mkSX72W6j0dI=;
        b=dB+S7dMJuS6ARZK/KolmFhFT7AP9pkd04IK+7laMMz7W+/yAzw36H/3XAeYXE/E5IR
         vIlwRgY3Wr6rTxmHXbbrnkm/R8reOho3baEEB2p4CwYW0qnOQbLu5UwmxAdepmhKzBXA
         /tXn8oPGWoqv3S2iFlE+BXFyT1V5ROMUgSbwFKc6TdNWAq3o/P04asbm/riMFH7wRF4K
         XCAlNZ3sMqUnZgspKNvMRXYB/teiJzCZHmXMx5nquoaI/mgE1FlOMcBB+yt9nLU3jepw
         mBV99XPaW9ti8DVqRbkk13g/PFAwggT/bz9+tsil2FmxrjJ611/4f3r43CzIu/jy3rjI
         4qLQ==
X-Gm-Message-State: AOJu0Yz7gTiSDtNE3FQqSlrNf2zHxpC0+KZlqerG3ToU8r7b3e1gGdWu
	QvUKXH/sAvxh/1mUOh7CXhJR3PrgL0q4nCDvTYlUnBeK3Lrt8ucNxNvKwo70PG7Rsg5LBkI1CmM
	U0K2mBK9CaxcMiiXnk8sOYbi/5tvqri7LuHuRg0E=
X-Gm-Gg: AeBDievWy+j/3Z4y6MQlbLWqimX7MRsYJ6SXQEyMqH3wph6mmxDuJpHLv2FgDZZFzof
	+im5g5jowfK25RDL5XD5YSihBUJ6YdH6e6zmX5isMEd1UEwmWVwFSR5gzRkriB2E5Qi53sj6KHc
	BuGc1igOPGKkvrebGNLSiJ3DKF/xRX/CyynxA8ez9VK3E50Wq8lom936iovFgzYxUNNnA0+tQ/z
	PQyTwth3j5hsn5Qo5cYlUWGMmBNizFlTAIbsHT8EvAY1SroRJv0KHS/3z0BJCnNst3k6rpjk9Nh
	a9fuqdAp
X-Received: by 2002:a2e:b8d5:0:b0:393:69a4:7d5e with SMTP id
 38308e7fff4ca-393c6537b8bmr13296051fa.7.1778178483133; Thu, 07 May 2026
 11:28:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrV8J7FfiB0ptMZFU+EKdRt1NPgtTe_YJWPFw7AQdB-vAQ75w@mail.gmail.com>
 <2b8f2e56-15be-4732-baf5-7a3df4f8a1fe@gmail.com> <20260507174811.GA4838@openwall.com>
In-Reply-To: <20260507174811.GA4838@openwall.com>
From: Mohamed salem Eddah <medsalemeddah@gmail.com>
Date: Thu, 7 May 2026 14:27:50 -0400
X-Gm-Features: AVHnY4LxGJKPAzcR51PYTai4P_BGwNMtoQIksJFl2nuCxv5Lfjsq6QHbNbNIJsg
Message-ID: <CAMrV8J57=Mrw4zdwWKTKwY7cRxgafEYqR1+8+pmh_6khEWdE6g@mail.gmail.com>
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com, security@kernel.org, 
	"axboe@kernel.dk" <axboe@kernel.dk>
Content-Type: multipart/alternative; boundary="000000000000d5a06c06513e7043"
Subject: Re: [oss-security] CVE request: io_uring zcrx freelist OOB write

--000000000000d5a06c06513e7043
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alexander, Pavel,

First, an apology: I replied to Pavel's questions directly without CC'ing
oss-security. That was a mistake. Putting the reply on the
list now.


To Pavel's question yes, triggered. whitout involving a kernel modules

**Kernel:** 6.19.11+kali-amd64, built April 9 2026, pre-770594e
**Hardware:** mlx5 ConnectX-6 (real ZCRX NIC)
**Trigger:** pure userspace via `SIOCSIFFLAGS IFF_DOWN`, `CAP_NET_ADMIN`

The OOB fires during `page_pool_destroy()` when two paths both push to
the same freelist without a bounds check:

```
path A =E2=80=94 ptr_ring drain:
  io_pp_zc_release_netmem() per queued niov =E2=86=92 free_count++

path B =E2=80=94 io_pp_zc_destroy() scrub:
  for each niov with uref_array[i] !=3D 0:
    io_zcrx_return_niov() =E2=86=92 free_count++   (no bounds check)
```

Niovs that land in both paths push `free_count` past `num_niovs`.
The write at `freelist[num_niovs]` goes 4 bytes past the end of the
kcalloc'd array into the adjacent slab object.

Disassembly from the live kernel via gdb+/proc/kcore confirms no bounds
check at either write site:

```asm
; io_zcrx_return_niov (pp=3D=3DNULL / freelist path)
0xffffffffa7016890: mov eax, [rdx+0x44]    ; eax =3D free_count
0xffffffffa7016893: mov r8,  [rdx+0x48]    ; r8  =3D freelist ptr
0xffffffffa7016897: lea edi, [rax+1]
0xffffffffa701689a: mov [rdx+0x44], edi    ; free_count++ (unconditional)
0xffffffffa70168fb: mov [r8+rax*4], edi    ; freelist[old_count] =3D niov_i=
dx
                                            ; OOB when rax =3D=3D num_niovs

; io_pp_zc_release_netmem (ptr_ring drain callback)
0xffffffffa701795f: mov eax, [rbp+0x44]    ; eax =3D free_count
0xffffffffa7017962: mov rdx, [rbp+0x48]    ; rdx =3D freelist ptr
0xffffffffa701796a: lea ecx, [rax+1]
0xffffffffa701796d: mov [rbp+0x44], ecx    ; free_count++
0xffffffffa701797b: mov [rdx+rax*4], ebx   ; freelist[old_count] =3D niov_i=
dx
```

770594e adds `WARN_ON_ONCE(free_count >=3D num_niovs)` + early return at
both sites. The OOB write is suppressed. The double-count condition still
occurs the second push is silently dropped.

The fix is not in any stable branch. Distributions shipping 6.15+ kernels
with `CONFIG_IO_URING_ZCRX=3Dy` before April 21 are affected.

To Alexander's point on originality: I am not claiming to have found the
bug before 770594e was merged. My contribution is the documented trigger
path from pure userspace, the disassembly confirming the write sites, and
the stable backport request. The fix exists upstream but has not reached
any stable queue. That gap is what this report is about.

The blog post at ze3tar.github.io is mine.

Three open questions for Pavel if you have a moment:

1. Is the NIC-down path (SIOCSIFFLAGS -> page_pool_destroy) the scrub case
   you referred to in the original thread?

2. Does 770594e fully resolve the issue or is a follow-up planned to
   prevent the double-count at the source rather than at the write?

3. Does `IORING_REGISTER_ZCRX_IFQ` check `capable()` or `ns_capable()`?
   The latter would widen the attack surface on distributions with
   permissive user namespace policy

Backport request for 770594e to 6.15.y stands.

-- Mohamed


On Thu, May 7, 2026 at 1:48=E2=80=AFPM Solar Designer <solar@openwall.com> =
wrote:

> On Mon, May 04, 2026 at 07:02:30AM +0100, Pavel Begunkov wrote:
> > On 5/3/26 12:00, Mohamed salem Eddah wrote:
> > >I am reporting a security issue in the Linux kernel involving an
> > >out-of-bounds heap write in io_uring/zcrx.c.
> > >
> > >This issue appears to have been addressed in commit 770594e
> > >(=E2=80=9Cio_uring/zcrx: warn on freelist violations=E2=80=9D, April 2=
1, 2026),
> > >however it
> > >was not assigned a CVE and does not appear to have been included in a
> > >formal security advisory. As a result, multiple stable and downstream
> > >distribution kernels are still affected.
> > >------------------------------
> > >Vulnerability Summary
> > >
> > >*File:* io_uring/zcrx.c
> > >*Function:* io_zcrx_return_niov_freelist()
> > >*Introduced:* Linux 6.12 (initial ZCRX merge)
> >
> > FWIW, it was added IIRC in 6.15, but not 6.12
> >
> > >*Fixed upstream:* 770594e (Apr 21, 2026)
> > >*Status:* Fix not yet present in stable releases
> > Did you trigger the problem or the warning in a new kernel
> > without the attached modules? Which kernel version / hash
> > was it? There was a fix for the scrub case, but otherwise
> > don't immediately see how that can happen. I'll take a look.
>
> I only skimmed, but as far as I can tell Mohamed isn't the original
> finder of this issue and the report and PoCs are AI-generated, which
> could be why Mohamed is not communicating further.  It's becoming a
> trend - someone sends AI-generated report and doesn't communicate.
> Which doesn't mean the report is useless, but it does complicate its
> handling.
>
> Meanwhile, it looks like there's a blog post (by someone else? I am
> confused) on exploitation of this issue, with exploit files attached:
>
> https://ze3tar.github.io/post-zcrx.html
>
> Alexander
>

--000000000000d5a06c06513e7043--
