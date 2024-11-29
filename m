Received: (qmail 1859 invoked by uid 550); 29 Nov 2024 12:37:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1826 invoked from network); 29 Nov 2024 12:37:16 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732883827; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=AWUEaP4nLUNjKlRIshMsHczlRhV5X4t8UmYW4M6UdMU=;
	b=xMgUl/mDupVe1p8NKFLlJ1rZrgUdjWslSv+43AMoybJeZJiPFlHtNKuzaYuFh8/ceefrva
	97Zy+U3Qrlfu5nhhp9BHYQqS/gdNCS8QlJYqX5i8wpcDSuNDubRKq+j37mrTDk4ByEfL3r
	kUQA6SE7SrAx6vjTWIeRSlX+eLfkrLE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732883827;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=AWUEaP4nLUNjKlRIshMsHczlRhV5X4t8UmYW4M6UdMU=;
	b=xBrFSHpbY1i846oz+ypyS2MzrEvBF+ORmKpXHQ3RcQvyw6T7Zbz9Q9ECUPnWUyo9NTejE6
	8uDTptcefxgwFdBg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1732883827; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=AWUEaP4nLUNjKlRIshMsHczlRhV5X4t8UmYW4M6UdMU=;
	b=xMgUl/mDupVe1p8NKFLlJ1rZrgUdjWslSv+43AMoybJeZJiPFlHtNKuzaYuFh8/ceefrva
	97Zy+U3Qrlfu5nhhp9BHYQqS/gdNCS8QlJYqX5i8wpcDSuNDubRKq+j37mrTDk4ByEfL3r
	kUQA6SE7SrAx6vjTWIeRSlX+eLfkrLE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1732883827;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=AWUEaP4nLUNjKlRIshMsHczlRhV5X4t8UmYW4M6UdMU=;
	b=xBrFSHpbY1i846oz+ypyS2MzrEvBF+ORmKpXHQ3RcQvyw6T7Zbz9Q9ECUPnWUyo9NTejE6
	8uDTptcefxgwFdBg==
Date: Fri, 29 Nov 2024 13:37:03 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <Z0m1cSHNQ1-0_6Cv@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="lW5VfK+MEg4UEQrI"
Content-Disposition: inline
Subject: [oss-security] stalld: unpatched fixed temporary file use and other issues

--lW5VfK+MEg4UEQrI
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Nov 2024 13:37:03 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: stalld: unpatched fixed temporary file use and other issues

Hello list,

this is a report about unfixed issues in stalld [1]. We also offer a
rendered version of this report on our blog [2].

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Stalld is a daemon that aims to prevent starvation of operating system
threads on Linux. It has recently been added to openSUSE Tumbleweed and
we performed a routine review the contained systemd service. During the
review we noticed a couple of security issues that should be addressed.

We reached out to upstream via their GitLab issue tracker and created a
public [3] and a private issue [4] (still private), but never got any
reaction. After nearly three months without a reply we decided to
publish the available information now.

This report is based on stalld version v1.19.6.

2) Use of Fixed Temporary File Path `/tmp/rtthrottle` in `scripts/throttlec=
tl.sh`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

The throttlectl.sh script [5], which is called with root privileges as a
pre and post script in stalld's systemd unit, is using the fixed /tmp
path `/tmp/rtthrottle` to cache the original values found in
`/proc/sys/kernel/sched_rt_runtime_us` and `/proc/sys/kernel/sched_rt_perio=
d_us`.
This allows for a symlink attack and a file pre-creation attack.

2.a) Symlink Attack
-------------------

A symlink attack can only work if the Linux kernel's
`protected_symlinks` setting is not in effect. If that would be the case
then an attacker could place a symlink at the location causing
`throttlectl` to overwrite arbitrary files in the system, allowing for a
local Denial-of-Service.

2.b) File Pre-Creation Attack
-----------------------------

Pre-creating the path in `/tmp/rtthrottle` will always work, even if the
`protected_regular` setting in the kernel is active. This is the case
because the shell redirection in the script (like in the line `echo
$period > $path/sched_rt_period_us`) will fall back to opening the
target file without `O_CREAT` in the `open()` flags, if creating the
file fails. Without `O_CREAT` the `protected_regular` logic no longer
triggers.

This means that if a local attacker pre-creates the file, the script
will write to a file owned by the attacker. By the time the script tries
to restore the values from this file, the local attacker can place
arbitrary values in it, which will in turn be written to the pseudo
files in `/proc/sys/kernel/sched_rt_*`. This is a kind of local
Denial-of-Service or a local integrity violation. It is not an
information leak, because the content of these pseudo files is
world-accessible anyway.

2.c) Exploitability
-------------------

When stalld starts at boot time, there is not much opportunity for
unprivileged local users to exploit this issue. If the service is
started at a later time, or restarted, then the attack vector is
exploitable, though.

2.d) Suggested Fix
-----------------

To fix this, we suggest to place the file into the `/run/stalld`
directory, which is owned by root. This directory is already created via
stalld's systemd unit.

In the systemd unit some hardenings like `PrivateTmp=3Dyes` could also be
applied to prevent any future temporary file issues of this type to be
exploitable.

The `throttlectl` script should also set the `errexit` shell option to
make it exit upon any unexpected errors.

3) The `fill_process_comm()` Function Might Read Unexpected Control Charact=
ers
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D

The `fill_process_comm()` function [6] reads the content of
`/proc/<pid>/comm` from potentially untrusted processes in the system.
The data found in there is obtained from the name of the executable that
the kernel executed. Executable names can contain any data, except for
the `/` character. This also includes control characters like `\r` or
even terminal control sequences. This string is used by `stalld` to
write information to logs. By embedding a carriage return in an
executable name, a local attacker could achieve log spoofing.

To fix this, we suggest to transform any non-alphanumeric characters in
the string into some safe character like `?`.

4) Experimental FIFO Boosting Feature might have a Danger of Locking up the=
 System
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D

Via the `--force_fifo` command line switch, stalld can be instructed to
"boost" stalled tasks by switching them to `SCHED_FIFO` scheduling. We are
wondering what happens if a "rogue task" is assigned to this scheduler. As =
far
as we know, if such a task never yields the CPU again, the whole system cou=
ld
lock up. This might require `stalld` to run under `SCHED_FIFO` itself,
using a higher scheduling priority than the boosted task, to prevent any su=
ch
situation.

5) Potential Race Conditions when Accessing `/proc/<pid>/{status,comm}`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

As usual, when iterating over the processes in the `/proc` file system,
race conditions can occur. Target processes could attempt to replace
themselves by other processes, confusing stalld. We don't believe that
the "stall" situation can be provoked easily by a local attacker,
though, thus the possibility to exploit anything in this direction is
likely small.

We just mention this as a hint to the reader, maybe we're overlooking
something more critical here.

6) Weird `umask()` Setting used in `daemonize()`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The `daemonize()` function [7] applies a new umask to the daemon process
by calling `umask(DAEMON_UMASK)`. The constant for this [8] has a weird
value, though:

```
/*
 * Daemon umask value.
 */
#define DAEMON_UMASK  0x133  /* 0644 */
```

We don't know why an octal `0644` value isn't used in the first place,
instead of writing this as a comment only. The constant `0x133`
corresponds to an octal value of `0463`, though. It will mask out the
owner-readable bit, read-write bits for the group and write-execute bits
for world. This is likely not what was intended here.

Luckily no world-writable files will come into existence this way, but
the misconfiguration could lead to strange effects in the future, e.g.
because the owner of the file will not have read permissions for it.

We don't believe this is a security issue, which is why we created a
public issue [3] in the upstream GitLab tracker for this.

7) CVE Assignments
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Since upstream did not react and therefore also didn't confirm any of
these issues, we did not request any CVEs from Mitre until now. The
fixed temporary file usage issue 2) likely is worthy of a CVE
assignment, though.

8) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2024-09-09: We reported the issues ([3], [4]) in the upstream GitLab
            project, offering coordinated disclosure for the sensitive issu=
es.
2024-11-13: After getting no reaction for such a long time we commented
	    in the issue, asking for a reply until 2024-11-22, otherwise
	    we would publish the issue on our end.
2024-11-28: We published the information without upstream fixes being avail=
able.

9) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://gitlab.com/rt-linux-tools/stalld
[2]: https://security.opensuse.org/2024/11/29/stalld-fixed-tmp-file.html
[3]: https://gitlab.com/rt-linux-tools/stalld/-/issues/26
[4]: https://gitlab.com/rt-linux-tools/stalld/-/issues/25
[5]: https://gitlab.com/rt-linux-tools/stalld/-/blob/v1.19.6/scripts/thrott=
lectl.sh#L13
[6]: https://gitlab.com/rt-linux-tools/stalld/-/blob/v1.19.6/src/utils.c?re=
f_type=3Dtags#L54
[7]: https://gitlab.com/rt-linux-tools/stalld/-/blob/v1.19.6/src/utils.c?re=
f_type=3Dtags#L355
[7]: https://gitlab.com/rt-linux-tools/stalld/-/blob/v1.19.6/src/stalld.h?r=
ef_type=3Dtags#L49

Best Regards

Matthias

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Ivo Totev, Andrew McDonald, Werner Knoblich

--lW5VfK+MEg4UEQrI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmdJtXEACgkQFMQFyXGS
NVNiTQ/9GQe/vYfztjBIdXpHWgqU8iT3xGqo5SJHNNRZbM5bK8/wtn1zPVOWK/q4
CtoM+M3QElDXJJjyc8Eg+Kkfptflfdnq5f9xiEYn4BPBoKuUvw2pSaYcDnipHKSh
U4A5HM2tK3H9p+3pxLJC0vXaOS1sDO95OlxQm7G+xf7GZYKnWsME+FPhmLxGg+Qz
xaij8fKrSCDSQbK+T6qICA/5pZlZy4l9QwO5sDxQ2MplkHXhmVSFrcPgXYCQS3or
APmLLI4daEOks/xgM64UFp8GE1padfhShGKrPvVigfVQTp0DDVXr/8m3HigkIgIl
3oRrTrV/fH34QX/cR/4E13HiYCUVS2ZhpfevAkR6aKZtiN4Q9v04oY1Z7Ny8RJp3
IRHjV5dzw/t7KpseErGZBNFSn4jHYFOX98MAFNp3RXz99gPsnVJw7kfPX29GX6b3
9vk0EfQvGFGWH6SCY76rw1z+XUtV+ciF49RvSsuOCGC9ZEWNDWlyyrXsj1gqMPy9
OZ9xZnWn5RtXeRryaTneV77QCV+M9ogSni2wP+Oz8qRWwBOs1TlHX3ulp7p0ZFOV
PB4v0js4FMvLjsvlYTszn+6uW1nKsqsJFAGkAKmQgs3pYM/8wIX+sy5dDks2ZAQV
/2JTNW6UolSlOpHxOxyZPM1N8bjNZV7WpxK7isQKZQb4JlihSGs=
=WyFi
-----END PGP SIGNATURE-----

--lW5VfK+MEg4UEQrI--
