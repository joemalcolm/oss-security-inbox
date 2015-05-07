X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5626" "Thursday" "7" "May" "2015" "17:41:09" "-0400" "Eric Windisch" "ewindisch@docker.com" "<CAFmghwx3=9vwk==YKv0ULRViijTh9y5XV4ufF2L=QWQuvpOoxg@mail.gmail.com>" "132" "[oss-security] Docker 1.6.1 - Security Advisory [150507]" nil nil nil "5" "2015050721:41:09" "[oss-security] Docker 1.6.1 - Security Advisory [150507]" (number mark "        ewindisch@do May  7  132/5626  " thread-indent "\"[oss-security] Docker 1.6.1 - Security Advisory [150507]\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29963 invoked by uid 550); 7 May 2015 21:41:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29920 invoked from network); 7 May 2015 21:41:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to
         :content-type;
        bh=sVpegbmrjRn52hCrZWcBkbp3NgO173pT+fLqEdoCHsg=;
        b=DjlRgwHrSbn66BXi4F0YMAr0Q98qpiRGw1VG3Tq56R+yg3XXAbMCXStiylrVE5AKt3
         oV2Trh6j2NKUEGzVYOS3KpPkJk6KyRl0zwnWh+b4HLESX7jFutvN6kAC2ebdHcXskUZe
         bVLhsM/1KDWTDA5q5X4HQ1knx5drq827Yi8mXXeADAohqpyKnxUymsIYm0m1OxAyDLBT
         qBy3/f/T0Cb/iQDtQTv2zkpsAmr4JphgfSPWLR2L4awAci8MrffBUafcRefT+rOUtcZN
         22Lt06Lda2ebajPescaTEcX4D0y54P4JFPINw4simwvul9bqsuPnLjTRIIlhUQU3CknQ
         UHoQ==
X-Gm-Message-State: ALoCoQlOxnVKpuehFnBKac1c7SasmoWW82VDD3uHpTNHo9VGDNQJrubqosR+gh3YnPcfg6TFFR3x
MIME-Version: 1.0
X-Received: by 10.194.11.73 with SMTP id o9mr1215460wjb.116.1431034869444;
 Thu, 07 May 2015 14:41:09 -0700 (PDT)
Message-ID: <CAFmghwx3=9vwk==YKv0ULRViijTh9y5XV4ufF2L=QWQuvpOoxg@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7b4507e00e0daa051584c56d
Date: Thu, 7 May 2015 17:41:09 -0400
From: Eric Windisch <ewindisch@docker.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Docker 1.6.1 - Security Advisory [150507]
To: oss-security@lists.openwall.com

--047d7b4507e00e0daa051584c56d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Docker Engine version 1.6.1 has been released to address several
vulnerabilities and is immediately available for all supported platforms.
Users are advised to upgrade existing installations of the Docker Engine
and use 1.6.1 for new installations.

It should be noted that each of the vulnerabilities allowing privilege
escalation may only be exploited by a malicious Dockerfile or image.  Users
are advised to run their own images and/or images built by trusted parties,
such as those in the official images library.

Please send any questions to security@docker.com.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[CVE-2015-3629] Symlink traversal on container respawn allows local
privilege escalation

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Libcontainer version 1.6.0 introduced changes which facilitated a mount
namespace breakout upon respawn of a container. This allowed malicious
images to write files to the host system and escape containerization.

Libcontainer and Docker Engine 1.6.1 have been released to address this
vulnerability. Users running untrusted images are encouraged to upgrade
Docker Engine.

Discovered by T=C3=B5nis Tiigi.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[CVE-2015-3627] Insecure opening of file-descriptor 1 leading to privilege
escalation

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The file-descriptor passed by libcontainer to the pid-1 process of a
container has been found to be opened prior to performing the chroot,
allowing insecure open and symlink traversal. This allows malicious
container images to trigger a local privilege escalation.

Libcontainer and Docker Engine 1.6.1 have been released to address this
vulnerability. Users running untrusted images are encouraged  to upgrade
Docker Engine.

Discovered by T=C3=B5nis Tiigi.


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[CVE-2015-3630] Read/write proc paths allow host modification & information
disclosure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Several paths underneath /proc were writable from containers, allowing
global system manipulation and configuration. These paths included
/proc/asound, /proc/timer_stats, /proc/latency_stats, and /proc/fs.

By allowing writes to /proc/fs, it has been noted that CIFS volumes could
be forced into a protocol downgrade attack by a root user operating inside
of a container. Machines having loaded the timer_stats module were
vulnerable to having this mechanism enabled and consumed by a container.

We are releasing Docker Engine 1.6.1 to address this vulnerability. All
versions up to 1.6.1 are believed vulnerable. Users running untrusted
images are encouraged to upgrade.

Discovered by Eric Windisch of the Docker Security Team.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[CVE-2015-3631] Volume mounts allow LSM profile escalation

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

By allowing volumes to override files of /proc within a mount namespace, a
user could specify arbitrary policies for Linux Security Modules, including
setting an unconfined policy underneath AppArmor, or a docker_t policy for
processes managed by SELinux. In all versions of Docker up until 1.6.1, it
is possible for malicious images to configure volume mounts such that files
of proc may be overridden.

We are releasing Docker Engine 1.6.1 to address this vulnerability. All
versions up to 1.6.1 are believed vulnerable. Users running untrusted
images are encouraged to upgrade.

Discovered by Eric Windisch of the Docker Security Team.

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

AppArmor policy improvements

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The 1.6.1 release also marks preventative additions to the AppArmor policy.
Recently, several CVEs against the kernel have been reported whereby mount
namespaces could be circumvented through the use of the sys_mount syscall
from inside of an unprivileged Docker container. In all reported cases, the
AppArmor policy included in libcontainer and shipped with Docker has been
sufficient to deflect these attacks. However, we have deemed it prudent to
proactively tighten the policy further by outright denying the use of the
sys_mount syscall.

Because this addition is preventative, no CVE-ID is requested.

--=20
Regards,
Eric Windisch
Docker Security Team

--047d7b4507e00e0daa051584c56d--
