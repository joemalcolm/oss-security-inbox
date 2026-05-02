Received: (qmail 9771 invoked by uid 550); 2 May 2026 18:37:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32457 invoked from network); 2 May 2026 18:35:38 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777746929; cv=none;
        d=google.com; s=arc-20240605;
        b=ID8zeuz8AgF02SimQ+WrqtWhL0qxsTTV0JlK72NgR/K7zDLpntOtkzt1uxacx5qJmF
         UPEnjDhK78eMF3M47hrXhFk7veqpNYr7YkMFqtT2vbQAUAkgokYMCSpdFsSJTyI9ygWa
         SDsreUhGKpzN2rmH3yFC1KlX3andS1AZUXJoqDwnbdt8kuj/FHENFdmXsRY0bO62emG2
         ny+Y2J7+CWzOHI8He7eFAzRT+onT5Qf5LfOwCsrgHCCEjridQGFfSU0cgSOaQkwyOEF6
         aWJ+WSI//ZHEpf+gBdHM/0Z31t6fujrOWT5hb3dnDurb/Qbn5BOXmY2Zy7dnwckvkpBR
         KEdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zabC0E49IE/3w5iSZYBN0vPO1VklCqkY96QIG8a12JU=;
        fh=7VvNtMjR1Lp7AkQimxxikrYq2AgfNqvH7vDPdPOyfSU=;
        b=X+bjloB/qDIksPk5i/buGIw+1dtOCv1Mpgn4pfNmuypgxr/aUAhpU75vtx9nGurlXv
         0+hS0nJilqnAOf59J+c92htXDEa+si47jmiphiDY+9G2QOHHDqzs8BQtaPAdYiaNsMuU
         3d5eeQMR6N69M48LRwtB+vEKjbxdPo8LcPAeuSRiJ8umRVXpBfvJmNJmF5jGVWi7pt6c
         hTwD45k81uVpPLE1//0Zuh4YwH/hy8618/6djCSW89V3+X9vw1///3gXe4hDX7J2sILO
         pNI9fppc37LYFsrZE4eipiOOffpA/6nd9Fe5NRfb8kn9taqAMHTZf+E4KwC8n5gf6/Am
         ZNBw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777746929; x=1778351729; darn=lists.openwall.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zabC0E49IE/3w5iSZYBN0vPO1VklCqkY96QIG8a12JU=;
        b=d74Q1ROiDKVpdy4r9C5/zSdSZudyszmKv7zwZiAkbAhhubICpedrI1BbNS+EGuhl2j
         CVLzgbneO34Fq8wM2wOYdFX+zW8lenPAs/oRnHCR23T6tV+yszSrNKrU/r5K4cFR9nzM
         tmz7vHXIfIQSGuJGCslaolrLcIshPhggGhbmF/WNNeBkNofivQSUZ/o5QpWPl5Q+igXh
         DkKH9Bd/EdXksRfAstKJMBwgiINOsedRNIoTnRcMvQLBzxxqxvsTw2558BV50Go2uS3b
         BTASjCXxOlhpe0IFMMJTk9RUE828D6MYZAy0VUOC8XCZHRM/NkPK2OzuSeuv05LVVVbR
         v+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777746929; x=1778351729;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zabC0E49IE/3w5iSZYBN0vPO1VklCqkY96QIG8a12JU=;
        b=kqyWtlzFulMy36eirRSLevuKo9C23rhM0uB+Ql6R+8l60QEGPw+c5UKQjZn2Rm2Icv
         UMH1r4GpYGR0J/WfxszijO71YHPbDVkcDVKf0zHs+urd9/N1K+ctLv8lr9nxFEvNaGkZ
         fZptkQsX7L7KqkYbmGDjREyjmrgLiL7LoAC63lHSHmdsYDmrsWlv9iJ8+ZmpNUKcd4Wd
         g43gxdRB3UwVEgaY5UebJZV1mIOkJL/eRR+L8T70dQ8JkfC81qmo7j12x2Psi9SpxZ5k
         Jdszrv7IAAb10XMG+bcFKuYh0HAzOWub7V/1Cnh1gNfGSsFM73DYoAVvl/2QU5JDOrLf
         /WNQ==
X-Gm-Message-State: AOJu0YyE1F4dfnVuM9r3Cfdcgv98rn3q6WfsscIC2lEzlb+dXyahygio
	zIF40cQpV2ucBUNwl/MXHNtnJgwrXJYrvgYTAWezk/83X3jLMH9GjjvbtoUCoYvjxT091udF8gK
	vnpCxc0r9ZfGk0Mrca94/AiEuXEKYvCkE7RQaHek=
X-Gm-Gg: AeBDieuIYQ892CgezwEFv3IgiAZWlJ3m8qzd4eOYmoWfFrNRtUJSRXwPSnhAMlajgJQ
	D8nIlpkExidmRz/gBNwJ7LlOa+kaRqPHzKGOEvQUDbnQ2nvXXV4q3XjMYal8ZKF96p4CR7UGhfP
	fVpIz7KGmwftg5hWZYVisfKS9p/QOUUYrMU4dAS2YvvuWNZnOSdS3St/F9v8ynoRvO4XIRwTaZi
	S+dWNgVl8dWdr8bo6W6043xWK4DuwF+UDEEb8a+Cdox39QaNLbjmmXviY+Gw57vGCfDoBPfiznr
	1QpDoA5/IV0Br1qYftg=
X-Received: by 2002:ad4:5aa6:0:b0:8ac:a914:c2da with SMTP id
 6a1803df08f44-8b665d11124mr85886766d6.2.1777746928689; Sat, 02 May 2026
 11:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan>
 <20260430071917.GB54208@sol> <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <20260501180028.GA2260@sol> <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
 <20260501201841.GA2540@quark> <c13dd3c5-ddc1-431e-bc7d-2de39c551f8e@gmail.com>
 <20260502033556.GA3872267@google.com> <20260502035402.GB3872267@google.com> <378c2ca2-417a-4969-bda5-b7d3f3e8b6fd@gmail.com>
In-Reply-To: <378c2ca2-417a-4969-bda5-b7d3f3e8b6fd@gmail.com>
From: Greg Dahlman <dahlman@gmail.com>
Date: Sat, 2 May 2026 12:35:17 -0600
X-Gm-Features: AVHnY4IZQkw3hG9zvJE3gTwrx8_7zstcKeH62eCPnSnu-6zOU2k6dMzEs0_x_Vg
Message-ID: <CAM=PXV4OCket4WOtfw2Dh5v9-HVbNf3bci=_-f0nHqLkDb0xgQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Eric Biggers <ebiggers@kernel.org>, Jan Schaumann <jschauma@netmeister.org>, iwd@lists.linux.dev, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>
Content-Type: multipart/alternative; boundary="0000000000002f68b50650d9f6ff"
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

--0000000000002f68b50650d9f6ff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I am sure there is some reason I can't find what I am going to mention
implemented, so sorry if this has been discussed before.

Both socket(2) and socket(3p) both define and allow for EACESS, IMHO it
would be far more maintainable to leverage credentials(7)
vs capabilities(7) in this case, and it may offer a backwards
compatible solution.

I am not talking about requiring a device file with permissions, just a
method of setting constraints based on uid/gid etc... Especially as these
mechanisms often could never justify namespace support, I think it cannot
depend on the permissions of a device file.

If this experiment worked, and could be extended to other legacy and
obscure PF and AFs, it would provide an interface that would help LSMs,
container runtimes, admins etc... IMHO LD_PRELOAD isn't an option right now
just because it is so easy to abuse, especially with user namespaces, it is
currently trivial to get elevated privileged processes from any normal user
on most systems.

Review this qualys submission from last year for an example.
https://www.openwall.com/lists/oss-security/2025/03/27/6

And note the Bounding set on the install user on Ubuntu 26.04

     $ cat /proc/$$/status | grep ^CapBnd
     CapBnd: 000001ffffffffff
     $ capsh --decode=3D000001ffffffffff
0x000001ffffffffff=3Dcap_chown,cap_dac_override,cap_dac_read_search,cap_fow=
ner,cap_fsetid,cap_kill,cap_setgid,cap_setuid,cap_setpcap,cap_linux_immutab=
le,cap_net_bind_service,cap_net_broadcast,cap_net_admin,cap_net_raw,cap_ipc=
_lock,cap_ipc_owner,cap_sys_module,cap_sys_rawio,cap_sys_chroot,cap_sys_ptr=
ace,cap_sys_pacct,cap_sys_admin,cap_sys_boot,cap_sys_nice,cap_sys_resource,=
cap_sys_time,cap_sys_tty_config,cap_mknod,cap_lease,cap_audit_write,cap_aud=
it_control,cap_setfcap,cap_mac_override,cap_mac_admin,cap_syslog,cap_wake_a=
larm,cap_block_suspend,cap_audit_read,cap_perfmon,cap_bpf,cap_checkpoint_re=
store

While there are mitigations in place that make it more unlikely, the
capabilities in that bounding set are a risk. IMHO Capabilities is less
preferable to say limiting socket() for a PF/AF to a UID/GID. To be clear I
am suggesting a PF/AF targeted application, using credentials(7) before
allocating the FD or whatever method works.

Depending on the interface chosen, it may also allow developers to remove
access or add access quickly and iterate faster and remove some of the
friction of migrating to another solution.

On Sat, May 2, 2026 at 7:56=E2=80=AFAM Demi Marie Obenour <demiobenour@gmai=
l.com>
wrote:

> On 5/1/26 23:54, Eric Biggers wrote:
> > On Sat, May 02, 2026 at 03:35:58AM +0000, Eric Biggers wrote:
> >> So the idea would be something along the lines of:
> >
> > And just to make sure no one gets the wrong impression: just because
> > there seem to be ways in which the attack surface of AF_ALG could/should
> > be reduced doesn't mean that userspace should keep using it (or even
> > worse, start to use it).  Fixing programs like iwd needs to proceed
> > concurrently, so that eventually (some years down the line) the problem
> > can finally be fully solved by removing AF_ALG from the kernel source.
> >
> > - Eric
>
> Can AF_ALG be emulated using LD_PRELOAD?  That would allow it to be
> eliminated from the kernel much more quickly, as one would not need
> to get rid of all of its existing users.  It would even work for those
> who need AF_ALG because of closed source binaries, who otherwise will
> have no alternative other than running an old kernel in a VM.
> --
> Sincerely,
> Demi Marie Obenour (she/her/hers)

--0000000000002f68b50650d9f6ff--
