Received: (qmail 6065 invoked by uid 550); 3 Jun 2025 22:42:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11987 invoked from network); 3 Jun 2025 22:21:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748989265;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+hGmKVvHkh6/BQGhhO8Vtm6vu32lwvQBDn4AIypD5q4=;
	b=auf9hWq3PmXx1fe4S19SP25KVvanqEfuJ2cqWIhuA5M6eV6zXd5mVyQvq1PbRYMoXKbUg9
	p0AJUHz6U2IqOX6mMYzy2vdN93TW2PSnKyNeUIgyiw++i07mdoD/k4Q8UVviIaRCFlsT9G
	pPxu1zGN0hkxdg6H72zOWCRIVGymh28=
X-MC-Unique: O8ysqdE1NtiF2zWxmC53gA-1
X-Mimecast-MFC-AGG-ID: O8ysqdE1NtiF2zWxmC53gA_1748989263
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748989263; x=1749594063;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+hGmKVvHkh6/BQGhhO8Vtm6vu32lwvQBDn4AIypD5q4=;
        b=bc9KLD3jtVu9aqMYLxlgo0UhxeUOo+qALsMFPYFQ2DQqSbvrbZ+W2kOqKaZpqBzfXH
         BzSCwTzbkfk1sNEaoAAgVL4ZkrHqshZnkZGcgKF6EMP3zFwGPLjZWJS1A4fYCSr9JvyZ
         5/Ts360kR7sklfAjowt9hvGrOAA6Hx2sWDmMSc1Qcpp6RSOHJgcDkmsZPgHtCXc5GIfX
         R89wegiWP+Fg8gSxto+iPtNlNCyfn9drL/tnz4l6HXuFZUQJXbYpzOs42FOHQ4Jmwwdf
         UqWRb/MnLHYUqykp13hVDeyCZZU+5wDJLXYbo+4+cOBBZ6GJHcUN5JeIfopOVVRn86uL
         6abQ==
X-Gm-Message-State: AOJu0YwgP1i8S2da+83ac0O2HqOaQRcy08wYxPGk4R+lekpFzlbKl3bD
	USfDwDPd77mUB9hh1CRxFaa2vUChbILC5WBk8d+0k+BAt6eZ0MgyxS3lo3KtO4i8MoDRzn78DXa
	o9XcVeYsUH/gP6I09QOtQEcVtTHZbLSX0kPztDFPx5Ch5ATU5e9kncV1lSiUjpLGYPOPJfrrtKZ
	NEuiFZIeQsJic6MZLRz/1wCYfSFyqRydSgUiszgJQ/IP2yQPHwY6nXWyc=
X-Gm-Gg: ASbGncuKWMnRkZ82WhGoUwEYkjWBsry+HSVNxi8TFiaSSA5LiPdeR7qZ+Wb9CahSLhC
	ZbD1+hBL07hA/yYrkV6KCemzbJMayztdhPRaKvChChfMyZ3oOVxmnKZSds7tcO0isPFNe97A=
X-Received: by 2002:a05:6a00:92a5:b0:736:3ea8:4805 with SMTP id d2e1a72fcca58-7480b2b5749mr1092207b3a.7.1748989262720;
        Tue, 03 Jun 2025 15:21:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9AFRTnI5h+/cpiKQT+UNRYbsYz+VeRoDV2uW3D7Jwguu2L4z/9jvbGm5kiWfGbvMqGEmvOzQtEJsEkDXOFLs=
X-Received: by 2002:a05:6a00:92a5:b0:736:3ea8:4805 with SMTP id
 d2e1a72fcca58-7480b2b5749mr1092193b3a.7.1748989262338; Tue, 03 Jun 2025
 15:21:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250529171556.GA9260@localhost.localdomain> <20250603040528.GA12667@openwall.com>
In-Reply-To: <20250603040528.GA12667@openwall.com>
From: Marco Benatto <mbenatto@redhat.com>
Date: Tue, 3 Jun 2025 19:20:25 -0300
X-Gm-Features: AX0GCFvee1xQyBKPIoobIRJah2OKURud8YuCiHOT0biNWoSAApraIWKiAXr7Jg4
Message-ID: <CAOGQQ29wZe_Z8J5go4JZyM=Xc6ku-ton7xc6iqpwYaTUQ=VCmw@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Qualys Security Advisory <qsa@qualys.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: CD8UHuCFet7pRinWYvXeBNbt4U6FDI8smSsKV_MzlH8_1748989263
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Local information disclosure in apport and systemd-coredump

Hi Alexander,

> Meanwhile, Red Hat confirms RHEL 9 and 10 are affected, and curiously
> lists not only systemd, but also NetworkManager and rpm-ostree among
> affected packages - I wonder why?

This was brought to my attention and I was checking it here. For the
NetworkManager I could check
that our manifest caught that because the NetworkManager lists systemd
as a bundled 'provides'.
This happens because NetworkManager seems to use parts of
systemd-network internally, I'll fix the information on
our page as in fact this flaw *does not* affect NetworkManager at all.

I'll try to further look into the rpm-ostree case as well.

Thanks,

Marco Benatto
Red Hat Product Security
secalert@redhat.com for urgent response

On Tue, Jun 3, 2025 at 1:12=E2=80=AFAM Solar Designer <solar@openwall.com> =
wrote:
>
> Hi,
>
> Great findings by Qualys, as usual!
>
> Below are some comments on my attempt at reproducing the issue against
> Rocky Linux 9.5's systemd-coredump (systemd-252-46.el9_5.3.x86_64):
>
> On Thu, May 29, 2025 at 05:17:08PM +0000, Qualys Security Advisory wrote:
> > Local information disclosure in systemd-coredump (CVE-2025-4598)
> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> >
> > ------------------------------------------------------------------------
> > Background
> > ------------------------------------------------------------------------
> >
> > While working on Ubuntu's apport, we remembered that various other
> > distributions (Red Hat Enterprise Linux 9 and Fedora for example) use
> > systemd-coredump as a core-dump handler in /proc/sys/kernel/core_pattern
> > (instead of apport). We began to wonder: how does systemd-coredump solve
> > the kill-and-replace race condition that we exploited against apport?
> >
> > Similarly to apport, systemd-coredump writes all core files into a
> > hard-coded directory, /var/lib/systemd/coredump/. Before December 2022,
> > systemd-coredump allowed users to read all of their core files (through
> > file ACLs), including the core files of SUID or SGID programs, which of
> > course allowed local attackers to read the contents of /etc/shadow by
> > simply crashing su for example; this vulnerability was CVE-2022-4415,
> > discovered and published by Matthias Gerstner:
> >
> >   https://www.openwall.com/lists/oss-security/2022/12/21/3
>
> FWIW, when run on Fedora 34, my reproducer trying to trigger the new bug
> instead triggers the above older bug - file ACLs are in fact set to
> enable the non-root user to read a coredump from a SUID program.
>
> > This old vulnerability was patched by introducing a new function,
> > grant_user_access(), which decides whether a user should be allowed to
> > read a core file or not, by analyzing the /proc/pid/auxv of the crashed
> > process: if its AT_UID and AT_EUID match, and if its AT_GID and AT_EGID
> > match, and if its AT_SECURE flag is 0, then read access is allowed;
> > otherwise (if the crashed process is SUID or SGID), read access is
> > denied (only root can read the core file).
> >
> > ------------------------------------------------------------------------
> > Analysis
> > ------------------------------------------------------------------------
> >
> > Unfortunately, we soon realized that systemd-coredump does not provide
> > any protection at all against the kill-and-replace race condition that
> > we exploited in apport. In other words, an attacker can simply crash a
> > SUID process such as unix_chkpwd, SIGKILL and replace it with a non-SUID
> > process (before its /proc/pid/auxv is analyzed by systemd-coredump), and
> > therefore gain read access to the core file of the crashed SUID process,
> > and hence to the contents of /etc/shadow.
> >
> > On the one hand, exploiting systemd-coredump is easier than exploiting
> > apport, because we do not need to replace the crashed SUID process with
> > a namespaced process: we can replace it with any non-SUID process, whose
> > AT_UID and AT_EUID match, whose AT_GID and AT_EGID match, and whose
> > AT_SECURE flag is 0.
> >
> > On the other hand, winning the kill-and-replace race condition against
> > systemd-coredump is harder: unlike apport, systemd-coredump is written
> > in C, and its initialization takes little time. To widen the window of
> > the race condition, we pass an argv[0] of 128K '\177' characters to the
> > SUID process: this slows down the analysis of its /proc/pid/cmdline (by
> > systemd-coredump, before the analysis of its /proc/pid/auxv) and gives
> > us enough time to replace the crashed SUID process with a non-SUID
> > process.
> >
> > ------------------------------------------------------------------------
> > Proof of concept
> > ------------------------------------------------------------------------
> >
> > $ grep PRETTY_NAME=3D /etc/os-release
> > PRETTY_NAME=3D"Fedora Linux 41 (Server Edition)"
> >
> > $ id
> > uid=3D1001(evey) gid=3D1001(evey) groups=3D1001(evey) context=3Dunconfi=
ned_u:unconfined_r:unconfined_t:s0-s0:c0.c1023
> >
> > $ while true; do
> >     pid=3D"$(printf 'whatever\0' | ./CVE-2025-4598 /usr/sbin/unix_chkpw=
d "$USER" nullok)";
> >     pidwait -f /usr/lib/systemd/systemd-coredump;
> >     if coredumpctl -1 dump "$pid" 2>/dev/null | strings -a | grep '\$[0=
-9A-Za-z]\+\$[0-9A-Za-z./]'; then
> >         break;
> >     fi;
> > done
> >
> > ...
> > pid 364536
> > tid 364521
> > tid 364540
> > died in main: 177
> > theadmin:$y$j9T$APKdqQO.brzhEbC2JFd.5zb7$Rz2q.0umBr8AmkwlozWr8/yphm/ckE=
HIOMo9vcj.Wj/::0:99999:7:::
> > evey:$y$j9T$QUW3HEErO9CYuGrRhiQjt.$.befySFW/nA48280u/Hk1XrcA2yDZ6Z1s7iR=
f91nJuA:20188:0:99999:7:::
>
> I've attached my attempt at partially reconstructing the Qualys' exploit
> (which I haven't seen) that the above script uses, as well as the script
> with some edits.
>
> I think I implemented most of what Qualys described (of the parts
> relevant to systemd-coredump rather than only to apport), except that I
> simply use fork() rather than clone() (slower PID reuse) and I didn't
> implement usage of inotify (harder to win the race leading to password
> hashes in dump).  I've been testing this after:
>
> sysctl kernel.pid_max=3D2000
> control unix_chkpwd public # Undo SIG/Security hardening
>
> With the PID range reduced from the default of 4M down to 2K, PID reuse
> is quick even with simple fork().  I am getting frequent unix_chkpwd
> coredumps (without password hashes in them, which is as expected without
> inotify), but none of them are getting ACLs set for read by the user
> (unexpected - I thought I'd win this easier race once in a while), e.g.:
>
> Target pid 1588, current pid 1589 - missed target, retrying
> Target pid 1590, current pid 1591 - missed target, retrying
> Replaced pid 1592
> getfacl: Removing leading '/' from absolute path names
> # file: var/lib/systemd/coredump/core.unix_chkpwd.1000.17099079ebb84acbbb=
2dc4d8dd38e858.1592.1748566368000000.zst
> # owner: root
> # group: root
> user::rw-
> group::r--
> other::---
>
> I'd appreciate any hints here.
>
> Meanwhile, Red Hat confirms RHEL 9 and 10 are affected, and curiously
> lists not only systemd, but also NetworkManager and rpm-ostree among
> affected packages - I wonder why?
>
> Alexander

