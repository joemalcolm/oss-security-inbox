X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6575" "Tuesday" "6" "July" "2021" "10:53:55" "+0300" "Mustafa Kuscu" "mustafakuscu@gmail.com" nil "154" "[oss-security] xscreensaver 5.45 crash" nil nil nil "7" nil nil (number mark "U       mustafakuscu Jul  6  154/6575  " thread-indent "\"[oss-security] xscreensaver 5.45 crash\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] xscreensaver 5.45 crash" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3853 invoked by uid 550); 6 Jul 2021 09:41:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23905 invoked from network); 6 Jul 2021 07:54:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=PUtYvj4hjKVE/5FmhJKSkxhbN/qjYA2Z/1FfNgPiygw=;
        b=UXTAk2rn24ZtyO9qNj4T32EOtreiqEGXCYTO/5S2yioY46vWyl9vn8xg4NhFcX0dNH
         pQ2AzpcQ//Fn2PJ/9A2tl3Yv4Gnig2Gk+fJkj/9ij1bxmkYTM58k2jv1nY77n2Icy2WY
         8/B3AS2GcOqm88QGx6pulvOJfAkLRFn7or6TNnCZrA09mN8qnzLouMooqmQq81hq25u3
         zUveUGs5eV5h/ZtKV72JAwYMhoOPIi3k9hdcOj5eRhxScZXZRdEPJJU1DkvfgMGZrqxW
         9ZjMh+QdI/7FcfVupQlruYRAMcOpjUJD/j9C8H0Yk/tQ5WUJA1dTySW0O/idQRjGmfjP
         sg5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=PUtYvj4hjKVE/5FmhJKSkxhbN/qjYA2Z/1FfNgPiygw=;
        b=sAfJaxDLBCJxhdUa8l5zCb1EINKiC38sQ7hcPigwomZxAL0ymt/7gekYYG16ukTpfV
         DiCbieoItf9z610+Gd5RLXn561hgKxXOA9Wcz5XB1KV1C1llxrzDvnb727Zw1lPK6H37
         0Cdm1ZJ0mTUFCbzkbdvPBYaweawn0vF0Ds9URhenYBDI0Sy4hB9zJh7YPZf9kMidweX/
         MDSkX/DuP87Bm42KiS2ozZJ90UjXT5/TRysStEhdgDMTJPCkLmqvkZdNFQTWa9cihqai
         TCCnNQM0cie8k90o6ppWOMgU37wwPW6TeYbYbBBrL1XiL6Y10l2DyT9uRSfKy2NiPXlf
         3ksw==
X-Gm-Message-State: AOAM531+qZwvHXSpgxqX62Sjzhm7qQYuYLf+nzwQ+vEOk63Wh4QgtEQr
	FEAJe7TwOc8rhUZ8nLtdGeLDNUzQG4fgkvChBfEbflg3iID7ypwR
X-Google-Smtp-Source: ABdhPJwyrxZmTlXEg6Ud4IEocc1x0qVt8auMkLru/jsoDVswR9EJBNj//cgmtcXTHuGmcdzuP1J5xr58edrMEGCMZhs=
X-Received: by 2002:a05:6402:31b3:: with SMTP id dj19mr21846876edb.24.1625558046337;
 Tue, 06 Jul 2021 00:54:06 -0700 (PDT)
MIME-Version: 1.0
From: Mustafa Kuscu <mustafakuscu@gmail.com>
Date: Tue, 6 Jul 2021 10:53:55 +0300
Message-ID: <CAMz_NCr0y0cWsdSaUyGVm4+5HMi_-qhpevrr23QF5mMgH_R-5Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e9edb205c66fb98b"
Subject: [oss-security] xscreensaver 5.45 crash

--000000000000e9edb205c66fb98b
Content-Type: text/plain; charset="UTF-8"

Hi,

As the embargo period has ended, I am sharing some details about an
xscreensaver crash that might happen on some setups. There are i) the
original post and ii) reproduction instructions.

My workaround is to stop using xscreensaver on my system. And also I have
disabled TB3 port, instead, using USB-C port only, with the dock.

*i) original posting to distros: *

Hi,
This is a new issue which results in xscreensaver crash. Previously I
have reported a similar issue to the Qubes OS security team. This one
might be affecting other distros therefore posting to this list.

I have a Lenovo Thinkpad T14 Gen1 Intel laptop and a Lenovo TB3 dock
with vendor firmware 1.19. My T14 laptop has 2 usb-c ports. Previously I
owned a T480s which had the same two ports, and one was for power and
the other was for thunderbolt.

It looks like T14 has changed the behavior of the power port. T480s
could not recognize external screens through the power port, but T14
can. I might be wrong, this is just an observation. So when docking and
undocking, sometimes I use the power port, sometimes the TB3 port.

The behavior in CVE-2021-34557 started after I upgraded the firmware to
v1.19. The Qubes OS security team has released a patched version of
xscreensaver that mitigated the crash, however, it looks like there is a
new variant.

When connected to my 3 monitor setup (two external displays through the
tb3 dock + laptop display), just unplug thunderbolt cable, plug it into
the other port. And repeat vice versa. Within 1-2 attempts, the
screensaver crashes with desktop unlocked. (These reproduction steps do
not always result in a crash. Will work on it to determine how to
reproduce it precisely.)

The stack trace of crashed processes are below. I am not an X11 expert,
and not sure if these are related to each other. Both binaries are from
the latest r4.1 branch of Qubes OS.

I also thought about notifying Lenovo but don't know of an effective
means to ask for their help on the UEFI update.

Jun 20 22:24:23 dom0 systemd-coredump[50218]: Process 50175 (xrandr) of
user 1000 dumped core.

                                               Stack trace of thread 50175:
                                               #0 0x00005efc87cf7c23
main (xrandr + 0x3c23)
                                               #1 0x00007f77df8ce082
__libc_start_main (libc.so.6 + 0x27082)
                                               #2 0x00005efc87cfd32e
_start (xrandr + 0x932e)
Jun 20 22:24:23 dom0 systemd[1]: systemd-coredump@1-50217-0.service:
Succeeded.


Jun 20 21:59:10 dom0 systemd-coredump[49098]: Process 7710
(xscreensaver) of user 1000 dumped core.

                                               Stack trace of thread 7710:
                                               #0 0x00007725eea98bab
kill (libc.so.6 + 0x3cbab)
                                               #1 0x00007725eea98860
__restore_rt (libc.so.6 + 0x3c860)
                                               #2 0x000063323b529ccc
auth_finished_cb (xscreensaver + 0x24ccc)
                                               #3 0x000063323b52a61f
unlock_p (xscreensaver + 0x2561f)
                                               #4 0x000063323b5115b6
main (xscreensaver + 0xc5b6)
                                               #5 0x00007725eea83082
__libc_start_main (libc.so.6 + 0x27082)
                                               #6 0x000063323b5122de
_start (xscreensaver + 0xd2de)
Jun 20 21:59:10 dom0 systemd[1]: systemd-coredump@0-49097-0.service:
Succeeded.

*ii) reproduction instructions*
Actually I cannot review the code at the moment therefore I don't know if
they are related or not.
However the new issue is reproducible. The steps to reproduce are:

shut down the laptop and dock
connect the dock to the TB3 port
boot the system
log in (3 displays)
lock the screen
plug TB3 cable off
plug it into the USB-C port
screen is unlocked

The unit systemd-coredump@0-9285-0.service has successfully entered the
'dead' state.
Jun 22 14:39:22 dom0 systemd-coredump[9286]: Process 8893 (xscreensaver) of
user 1000 dumped core.

                                             Stack trace of thread 8893:
                                             #0  0x00007a8b14778bab kill
(libc.so.6 + 0x3cbab)
                                             #1  0x00007a8b14778860
__restore_rt (libc.so.6 + 0x3c860)
                                             #2  0x00005ea8124ea69d
update_passwd_window (xscreensaver + 0x2169d)
                                             #3  0x00005ea8124ed229
passwd_event_loop (xscreensaver + 0x24229)
                                             #4  0x00005ea8124ed9cc
gui_auth_conv (xscreensaver + 0x249cc)
                                             #5  0x00005ea8124ef2c1
pam_conversation (xscreensaver + 0x262c1)
                                             #6  0x00007a8b1494a477
pam_vprompt (libpam.so.0 + 0x9477)
                                             #7  0x00007a8b1494a6ce
pam_prompt (libpam.so.0 + 0x96ce)
                                             #8  0x00007a8b14946d26
pam_get_authtok_internal (libpam.so.0 + 0x5d26)
                                             #9  0x00007a8b145c4897
pam_sm_authenticate (pam_unix.so + 0x4897)
                                             #10 0x00007a8b149452d2
_pam_dispatch (libpam.so.0 + 0x42d2)
                                             #11 0x00007a8b14944ba4
pam_authenticate (libpam.so.0 + 0x3ba4)
                                             #12 0x00005ea8124ef72c
pam_try_unlock (xscreensaver + 0x2672c)
                                             #13 0x00005ea8124eec59
xss_authenticate (xscreensaver + 0x25c59)
                                             #14 0x00005ea8124ee61f
unlock_p (xscreensaver + 0x2561f)
                                             #15 0x00005ea8124d55b6 main
(xscreensaver + 0xc5b6)
                                             #16 0x00007a8b14763082
__libc_start_main (libc.so.6 + 0x27082)
                                             #17 0x00005ea8124d62de _start
(xscreensaver + 0xd2de)
-- Subject: Process 8893 (xscreensaver) dumped core
-- Defined-By: systemd
-- Support: https://lists.freedesktop.org/mailman/listinfo/systemd-devel
-- Documentation: man:core(5)
-- 
-- Process 8893 (xscreensaver) crashed and dumped core.
-- 
-- This usually indicates a programming error in the crashing program and
-- should be reported to its vendor as a bug.

Kind Regards,

Mustafa Kuscu

--000000000000e9edb205c66fb98b--
