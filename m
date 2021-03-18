X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2667" "Thursday" "18" "March" "2021" "17:27:09" "-0400" "Leo Famulari" "leo@famulari.name" nil "62" "[oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil "3" nil nil (number mark "U       leo@famulari Mar 18   62/2667  " thread-indent "\"[oss-security] Risk of local privilege escalation in GNU Guix\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Risk of local privilege escalation in GNU Guix" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24403 invoked by uid 550); 19 Mar 2021 06:40:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3466 invoked from network); 18 Mar 2021 21:27:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=famulari.name;
	 h=date:from:to:subject:message-id:mime-version:content-type
	:content-transfer-encoding; s=mesmtp; bh=SjHTUZ4m1jz/2gfQyk4bm9O
	klceyKmyr3A1QR0aG2SU=; b=qNe+tlebpLzWYvbpZRHhyMLt5rN1C1z4rJ+lfHt
	m3ZapYIFAYV7VNzV6dsw6iI3FAWKuIR7hug2xYNf9JE/wTI2M40JMWv3U1N1kLcx
	uXO64lLG/WjnWJArKEe1wxW8z9WgG4VeP/2goy1sgj3hVJ7qiGPLsOVwuZyBr758
	6OGk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=SjHTUZ
	4m1jz/2gfQyk4bm9OklceyKmyr3A1QR0aG2SU=; b=LDa2+ETxM5KLfdaE7pPsQC
	mB/4S0/UcCyCGFrG66rDWq29DcXOB0X4NinkKULBJKVXrMD3DBEn+JroYDWLykn4
	DxkVZqQ7tyzC8jAruTF3ANGwGvudH19DqUlxHs66Xk8NlFqNWCwerfUujlOpsl2e
	ApwpoVzChlP7yJvD8C3mPwga0mZ4TTjPtjMrYxQlEGuiP2WbpjqLhzi2Hy5MNCfy
	aO30lFhZ5Hx6ulntaT49ZwSYdfXgv3lOkdO2G7XJohY989YTztU24ZAgZfeYtrIZ
	Li8TYX1s9/r2+P0xivJHPmdZhSLO98i0V0YkpQy+8jC3u2LTC6ipPJxGgmrQDCuA
	==
X-ME-Sender: <xms:rsVTYAibSzBM3UPYP6_5SgbcPfEsDifEO2cYlpx2Ib4YIcj8FhN9-Q>
    <xme:rsVTYD48rcbgorl4S5DVdD-llqrIe3KT7fB2XYNi3jbY0xlaornEJpMNGtpKChw18
    S9yV-abkMJr1ASsmQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefiedgudehudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtggugfesthekre
    dttddtjeenucfhrhhomhepnfgvohcuhfgrmhhulhgrrhhiuceolhgvohesfhgrmhhulhgr
    rhhirdhnrghmvgeqnecuggftrfgrthhtvghrnhepgffhveeludelveduheeivedtjeeggf
    eifeehfeelueeuvdetleetleeuveduvdehnecuffhomhgrihhnpehgnhhurdhorhhgpdhg
    uhhigidrihhnfhhopdhshihstghtlhdqvgigphhlohhrvghrrdhnvghtnecukfhppedutd
    dtrdduuddrudeiledruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
    mhgrihhlfhhrohhmpehlvghosehfrghmuhhlrghrihdrnhgrmhgv
X-ME-Proxy: <xmx:rsVTYP4aOexX9TEdZgRDfqwr9yva37GuQ0N753ruRjNtwGWJASVbnw>
    <xmx:rsVTYPe_onYhYJB1rbT6ecKGwNXGAolWnavhWRlwTWO_38MuTKjRxQ>
    <xmx:rsVTYDC0l76bJLu5BmjElG5-1CSsyyIAhjdHkbLo245Oj8JalMnteg>
    <xmx:rsVTYO4QKEkL0vdqmk1-7wPGH5Iwf-sMZtn4zW2FiVoMZu4kGEDkNQ>
Date: Thu, 18 Mar 2021 17:27:09 -0400
From: Leo Famulari <leo@famulari.name>
To: oss-security@lists.openwall.com
Message-ID: <YFPFrYcJK1e+qedn@jasmine.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Risk of local privilege escalation in GNU Guix

A security vulnerability that can lead to local privilege escalation has
been found in `guix-daemon` [0]. It affects multi-user setups in which
`guix-daemon` runs locally.

It does _not_ affect multi-user setups where `guix-daemon` runs on a
separate machine and is accessed over the network via
`GUIX_DAEMON_SOCKET`, as is customary on cluster setups [1].

Exploitation is more difficult, but not impossible, on machines where
the Linux protected hardlinks [2] feature is enabled, which is common —
this is the case when the contents of `/proc/sys/fs/protected_hardlinks`
are `1`.

# Vulnerability

The attack consists in having an unprivileged user spawn a build process, for 
instance with `guix build`, that makes its build directory world-writable.  The 
user then creates a hardlink to a root-owned file such as `/etc/shadow` in that
build directory.  If the user passed the `--keep-failed` option and the build
eventually fails, the daemon changes ownership of the whole build tree,
including the hardlink, to the user.  At that point, the user has write access
to the target file.

# Fix

This bug [3] has been fixed [4].

The fix consists in adding a root-owned “wrapper” directory in which the build
directory itself is located.  If the user passed the `--keep-failed` option and 
the build fails, the `guix-daemon` first changes ownership of the build
directory, and then, in two stages, moves the build directory into the location
where users expect to find failed builds, roughly like this:

1. `chown -R USER /tmp/guix-build-foo.drv-0/top`
2. `mv /tmp/guix-build-foo.drv-0{,.pivot}`
3. `mv /tmp/guix-build-foo.drv-0.pivot/top /tmp/guix-build-foo.drv-0`

In step #1, `/tmp/guix-build-foo.drv-0` remains root-owned, with permissions of
`#o700`.  Thus, only root can change directory into it or into `top`.  Likewise in
step #2.

The build tree becomes accessible to the user once step #3 has succeeded, not
before.  These steps are performed after the package build scripts have stopped
running.

More information may be available on the Guix blog:

https://guix.gnu.org/en/blog/2021/risk-of-local-privilege-escalation-via-guix-daemon/

We are grateful to Nathan Nye of WhiteBeam Security for reporting
this bug and discussing fixes with us!

Your feedback is welcome.

On behalf of the Guix team,
Leo Famulari

[0] https://guix.gnu.org/manual/en/html_node/Invoking-guix_002ddaemon.html
[1] https://hpc.guix.info/blog/2017/11/installing-guix-on-a-cluster/
[2] https://sysctl-explorer.net/fs/protected_hardlinks/
[3] https://issues.guix.gnu.org/47229
[4] https://git.savannah.gnu.org/cgit/guix.git/commit/?id=ec7fb669945bfb47c5e1fdf7de3a5d07f7002ccf
