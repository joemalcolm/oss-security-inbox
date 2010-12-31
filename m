X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2010/12/31/1
Message-ID: <AANLkTinjjWGQepbZBS7C6fp6uHux5n+8yR+TAzCdTas6@mail.gmail.com>
Date: Thu, 30 Dec 2010 19:02:42 -0500
From: Dan Rosenberg <dan.j.rosenberg@...il.com>
To: oss-security@...ts.openwall.com
Subject: CVE request: kernel: buffer overflow in OSS load_mixer_volumes
Content-Type: text/plain; charset=utf-8

"The load_mixer_volumes() function, which can be triggered by
unprivileged users via the SOUND_MIXER_SETLEVELS ioctl, is vulnerable to
a buffer overflow.  Because the provided 'name' argument isn't
guaranteed to be NULL terminated at the expected 32 bytes, it's possible
to overflow past the end of the last element in the mixer_vols array.
Further exploitation can result in an arbitrary kernel write (via
subsequent calls to load_mixer_volumes()) leading to privilege
escalation, or arbitrary kernel reads via get_mixer_levels().  In
addition, the strcmp() may leak bytes beyond the mixer_vols array."

http://git.kernel.org/?p=linux/kernel/git/tiwai/sound-2.6.git;a=commit;h=d81a12bc29ae4038770e05dce4ab7f26fd5880fb

This only affects users who are using OSS (not to be confused with the
OSS emulation provided by ALSA), and requires access to a device file
normally restricted to users in group audio.

-Dan
