Received: (qmail 3944 invoked by uid 550); 2 May 2026 20:30:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4024 invoked from network); 2 May 2026 20:22:18 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1777753329; cv=none;
        d=google.com; s=arc-20240605;
        b=jgBc8+7AhaM6Qw/uDc400eq3j3VzXSHdKxQpAZBgGUTBYsmwjTC86wc6eL9MaScMtP
         gmy2tnL7MRXP4ZGJ0wycyt3HqpNG94EhwrAYRcxQSKNdqgD7lWGfoqeOMAvqfRh/qhMG
         koJeFeZwMil0daRvDBhWVM0iBES3M0p/3/oQzalJck/HfyvRMk4Xtwhota30KwEvUx6N
         JYAaATUyeMoHX7/beYQd47+iTWIc5/428a6m0b8QHS5rDxj+CvY3awL/8QH2CF6SShbG
         hwKV3jTzsDV7ucOPCnA513O/MlsI+HW53Hg1qPsWhFQnN6T/t0IYKSCzfjovAjjxGiTq
         GTmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=iNAv6zs12s5S5HWvF4Mt5sG+zJ+UFRTBtOY+5pWL5YY=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=dWRq3lmcYn0OJvSwIgB94GyLYmRXSrPFQyi/dd8DTSQjWOyyDGKCztOuwDqxZFpjDh
         3yQnoL7NVuOiLL9EsXSkoleynPipjEIR+eEKaEZDP67wb0gKeoFG1Hp2STqVfRVHeccI
         +CdcfbRsAmJ1dz7knADKuO2g8dvGhl2vv/j0HO4q3xnP4VflYPm19VlhSIB5mun+9cc7
         w1ckIK4A95ok0UMTUPjWtoOeV+VX2ucIP+PMwnV4bI/Po86ODbcas/k1mN2JB2YABPy/
         NLB1tfcOt6jgfudrX7Lu8nvAVLO1l9jNsMBF6SSJw2cd2LY5pkUjB/pCiTJdtbHWYop3
         TCUg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777753329; x=1778358129; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iNAv6zs12s5S5HWvF4Mt5sG+zJ+UFRTBtOY+5pWL5YY=;
        b=jucOoD/fHN6Jrv8c9r45aIG9/cFgemT1HTE6jmEDJ415oPboAp8U6bBfcn6rZ0uCso
         JlZVndaxIhQHYvVpCAIhVfsff/7+LEaSVM2vvKb3EwR3u5N8vbYF0Ialpd36jCsxLEMA
         z+z0omzpECTapM6GhbjwxqNSrwxboxKUYhn4ecvhAZUJcPTk3aCTL5sxjRpDsIbX4Tiw
         NUny1DyT807Ay40xWLah/+6cAtfSXJHmEGop+xtFjGLB7oL/Cj4jddHtC4KLI2YiJHZc
         ycJp1CmHaKE5tb2uAiAwGHgVDp0XV72CZJaOTStVnhb+BRNZUA9iQb/58GJHnYvmgf8n
         YJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777753329; x=1778358129;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iNAv6zs12s5S5HWvF4Mt5sG+zJ+UFRTBtOY+5pWL5YY=;
        b=lIw6N+QfD8kM2TbDtVT5ZUce2w3AGu7maraM9t/XevtfGAsqQFr6IJLjDvHetuqdkj
         5eUFe/ofB7/uPKn8fDWDjMU3e9DW8jI2QRZbCxwg49wGkEkhXmG535bkV7FP0h4sytlK
         BO9SYc3hVzNsATmKjNWnhQXAZU+uHnFLLYjT4HcGjhHt4p8IDit5E5UEdD5qiTaA9+gR
         GKKW7sXg4XVDUvizQgfksMqg79cer2bDt3ZjjRkSzcP009n/8ffibGUvL0LLafBkEkvp
         QrC/N6Lq6xq+RciqGxIBkglb9ujGjr9YHNXMp74ioVhX/VNqelXoeP14DGLH70Kk4McH
         Y6xQ==
X-Gm-Message-State: AOJu0YxJENzBc+xcVj+Lc68PaT1G7QB/WzZIpbE6bT+8JsV7boCaeKHt
	I6DJcE6DHExU/iJSuDwcJ1my+y5foya3dy5rrwvG+bR3I/NVVjvhob5m4AOJss6kV+yb2BvfaWl
	B9yxoN3EtMv5qLmaghW8cfbcBo4UUK63O3ho2
X-Gm-Gg: AeBDieveE3hYKXRguPmxwUDBVqFNy5yOLs6VWIlDvVNfVEKBjUGEf1ywpzIJK4YBinY
	IeYUxxCmfO6mJwkcisxWX5rcKfActWjQ8Ahal4NOPSP8tHScCcjQlU7GcyIP5BboQLHBkkgP5SK
	6JSEIbGoi/Pe/NAIckKjWob1PwtxHseKsVlhiQjvNZqCnl7pAjfHQ+CXIdhTykeiqE2HXMEVaWl
	mlkilU2FF59NvLuf8QcabNtwfxQarYuc2MXYsZegGZOKN/EDod/5NMRlGEYxi6uZbARgO9tUIKz
	Q/ARn0wBT1Ct2FVlE/KMaU67BWtqGQ==
X-Received: by 2002:a05:6214:43c7:b0:8ac:b0ef:47a5 with SMTP id
 6a1803df08f44-8b668929286mr97924896d6.35.1777753329137; Sat, 02 May 2026
 13:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan>
 <20260430071917.GB54208@sol> <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com>
 <20260501180028.GA2260@sol> <19837ef5-e5b6-45f4-8336-3ce07423dfb1@gmail.com>
 <20260501201841.GA2540@quark> <c13dd3c5-ddc1-431e-bc7d-2de39c551f8e@gmail.com>
 <20260502033556.GA3872267@google.com> <20260502035402.GB3872267@google.com> <378c2ca2-417a-4969-bda5-b7d3f3e8b6fd@gmail.com>
In-Reply-To: <378c2ca2-417a-4969-bda5-b7d3f3e8b6fd@gmail.com>
From: Greg Dahlman <dahlman@gmail.com>
Date: Sat, 2 May 2026 14:21:57 -0600
X-Gm-Features: AVHnY4L8OiDMSeV87bTHOJIK_baFRhXW2RGt4V0uC0u5h3E9Q0513PmswcC1xOA
Message-ID: <CAM=PXV4q2i13W8Z_AZGDfdxbqWANJ=U4Sw3FTcv5mH_QUrrSfA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

=46rom the admin side, here are my concerns.

LD_PRELOAD and capabilities are not a great option due to user
namespaces, lsm limitations, etc....

Review this qualys submission from last year for an example.
https://www.openwall.com/lists/oss-security/2025/03/27/6

You should expect any UID (even nobody) to be able to gain the
privileges in their bounding set, and because some packages like LXD
remove some of the protections from above etc...

Note the Bounding set on the install user on Ubuntu 26.04:

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


Both socket(2) and socket(3p) define and allow for EACESS, IMHO it
would be far more maintainable to leverage credentials(7) vs
capabilities(7) in this case, and it may offer a backwards compatible
solution.

I am not talking about requiring a device file with permissions, just
a method of setting constraints based on uid/gid etc... Especially as
these mechanisms often could never justify namespace support, I think
it cannot depend on the permissions of a device file as they may not
be able to view it.

I am sure that there is a reason no one has taken advantage of:
https://man7.org/linux/man-pages/man3/socket.3p.html
       The socket() function may fail if:

       EACCES The process does not have appropriate privileges.

Or: https://man7.org/linux/man-pages/man2/socket.2.html
       EACCES Permission to create a socket of the specified type
and/or protocol is denied.

IMHO, ideally the kernel would provide a (ideally subuid/subgid
compatible) method of limiting PF/AF sockets outside of the core.
Right now it is almost impossible to run with reduced privileges, and
in the oci/k8s world there are no methods to enforce even syscomp
rules, because the commands/containers/upstream don't allow for a
bounding set.  The CRIs like runc or crun for example can be invoked
directly, and as mutation etc... is up stream they will accept any
seccomp profile or no profile at all,

Currently it is trivial to gain almost any capability in a users
bounding set, and while userns limits the scope to the user, if you
are gating on capabilities(), you should expect any adversarial code
(browser plugin, container image etc..) to be able to gain it.

IMHO finding someway to depend on credentials(7) is a far more
maintainable step:
https://man7.org/linux/man-pages/man7/credentials.7.html

I realize that this isn't an option for AF_INET, etc... but those have
namespace support, it would seem that the cost for checking uid/gid
before doing file descriptor allocation /proc/*/fd in cases like this
would be easier.

This doesn't solve the splice() issue, but would allow us admins to
harden our systems and as EAFNOSUPPORT and EACCES are existing
standards, returning EACCES isn't a huge change.


On Sat, May 2, 2026 at 7:56=E2=80=AFAM Demi Marie Obenour <demiobenour@gmai=
l.com> wrote:
>
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
