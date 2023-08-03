Received: (qmail 17592 invoked by uid 550); 3 Aug 2023 12:06:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15697 invoked from network); 3 Aug 2023 12:03:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	pietroalbini.org; h=cc:content-type:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm1; t=1691064221; x=1691150621; bh=Lw
	EN4+JQyHJIuZH3s5nieheQkABL2CpsWNlIFTRv/t4=; b=PL7nJDUmfVkW3HZjuY
	uafMKLu98nHek4ObesMHX/YPcjrxjreKBj2/kqrGowB2pbAFKSBg07H9b1bmlgPD
	1tndo4zHqh2gq4lLnTHPWrlGw8QZ9MbsDg3dsqxRF7Ax+ZKldqF4PiB4Bo3/n7sR
	SWpDfVXOAGGmbazOgPAwIgxljBqFQAbtlPbf5DqSk+zQYxOlFgI4Zwa4R+CtgxR5
	xdHeR4h5TuOWTVyln5pJMYYcLksMqO2i0gwb0FR7NBubaLPEPnAB6tGWH8hzWQTP
	K2cYBXi7MjQ9jwg4oyz3Wq2iZHSLhtTmInUceJrKzkOFQmxI+sodwfacChdTgX/d
	2+8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1691064221; x=1691150621; bh=LwEN4+JQyHJIuZH3s5nieheQkABL2CpsWNl
	IFTRv/t4=; b=OswQPUenvEHn89XYX7KklDglDZlKByzzB3YE8MO13L1RfM3JneG
	juLQhG6M8RcmJzrEyESOXJqBRFQ/DGXNTyN/Sj92CL9to7I40bj8JbuvocuFxNwZ
	iLvnBdRkUbsvQnWODD/5eUZc2/TiVGB94WTzcpGtQtNdCxbdb7fM1qy5XikM9QBz
	qOBmNzb15v8NdPoQlgkGbKGh79yw3IEK4vdJSUBatVbutcLGRsLdTZqRY5slYSkr
	JOg3pvbFk3DibYuBazrdR24/9hoTNFD3bncQvkiGoMOCjA75AJjbX/k/R6UK+hFv
	EMRULfiWjQDJEfk11445qMQ9EWvc00+eB7A==
X-ME-Sender: <xms:nJfLZEp0pj5GvO1sykuwHaXL94-JGlWJJxwLK8k2W-DkxNX_agX_Lw>
    <xme:nJfLZKobiOGQ0SxGVFpbmbR9mt0i7XEevXcpm6k8bK-ig7pXf-a7W2ESXHp-Chuso
    a77sjJCiNLFbirFxuM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrkedvgdegiecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkfffhvffutgesthdtredtre
    ertdenucfhrhhomhepfdfrihgvthhrohcutehlsghinhhifdcuoehpihgvthhrohesphhi
    vghtrhhorghlsghinhhirdhorhhgqeenucggtffrrghtthgvrhhnpedvffetueelleegve
    ejiedvleelvdettdeggeejkeefvdefleegffehjedvuefhtdenucffohhmrghinhepfihi
    khhiphgvughirgdrohhrghdpghhithhhuhgsrdgtohhmpdhruhhsthdqlhgrnhhgrdhorh
    hgnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphhi
    vghtrhhosehpihgvthhrohgrlhgsihhnihdrohhrgh
X-ME-Proxy: <xmx:nZfLZJPb5jO_PsW5ZKegg713JOZtASNw_46u-ij5y2p4CtzyMm6yhQ>
    <xmx:nZfLZL77-KzWJ79aoz_Uc2ujajGMF-6HFPF6I8lw4apySMSrWBmfkA>
    <xmx:nZfLZD6om2sZaSCcX0iDLXByis-xTg9fzzCiByv2XnS0XlT_lZhEng>
    <xmx:nZfLZFFescZiAMSJP8RFrkKnYZFzrEURjIiJ9YXSdLUapf-gKu1x4Q>
Feedback-ID: i6b794706:Fastmail
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-624-g7714e4406d-fm-20230801.001-g7714e440
Mime-Version: 1.0
Message-Id: <af14cd93-8173-47f9-b1eb-540e87dbf270@app.fastmail.com>
Date: Thu, 03 Aug 2023 14:03:20 +0200
From: "Pietro Albini" <pietro@pietroalbini.org>
To: oss-security@lists.openwall.com
Content-Type: text/plain
Subject: [oss-security] CVE-2023-38497: Cargo does not respect umask when extracting packages

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA512

The Rust Security Response WG was notified that Cargo did not respect the umask
when extracting crate archives on UNIX-like systems. If the user downloaded a
crate containing files writeable by any local user, another local user could
exploit this to change the source code compiled and executed by the current
user.

This vulnerability has been assigned CVE-2023-38497.

## Overview

In UNIX-like systems, each file has three sets of permissions: for the user
owning the file, for the group owning the file, and for all other local users.
The "[umask][1]" is configured on most systems to limit those permissions
during file creation, removing dangerous ones. For example, the default umask
on macOS and most Linux distributions only allow the user owning a file to
write to it, preventing the group owning it or other local users from doing the
same.

When a dependency is downloaded by Cargo, its source code has to be extracted
on disk to allow the Rust compiler to read as part of the build. To improve
performance, this extraction only happens the first time a dependency is used,
caching the pre-extracted files for future invocations.

Unfortunately, it was discovered that Cargo did not respect the umask during
extraction, and propagated the permissions stored in the crate archive as-is.
If an archive contained files writeable by any user on the system (and the
system configuration didn't prevent writes through other security measures),
another local user on the system could replace or tweak the source code of a
dependency, potentially achieving code execution the next time the project is
compiled.

## Affected Versions

All Rust versions before 1.71.1 on UNIX-like systems (like macOS and Linux) are
affected. Note that additional system-dependent security measures configured on
the local system might prevent the vulnerability from being exploited.

Users on Windows and other non-UNIX-like systems are not affected.

## Mitigations

We recommend all users to update to Rust 1.71.1, which will be released later
today, as it fixes the vulnerability by respecting the umask when extracting
crate archives. If you build your own toolchain, patches for 1.71.0 source
tarballs are [available here][2].

To prevent existing cached extractions from being exploitable, the Cargo binary
included in Rust 1.71.1 or later will purge the caches it tries to access if
they were generated by older Cargo versions.

If you cannot update to Rust 1.71.1, we recommend configuring your system to
prevent other local users from accessing the Cargo directory, usually located
in `~/.cargo`:

```
chmod go= ~/.cargo
```

## Acknowledgments

We want to thank Addison Crump for responsibly disclosing this to us according
to the [Rust security policy][3].

We also want to thank the members of the Rust project who helped us disclose
the vulnerability: Weihang Lo for developing the fix; Eric Huss for reviewing
the fix; Pietro Albini for writing this advisory; Pietro Albini, Manish
Goregaokar and Josh Stone for coordinating this disclosure; Josh Triplett, Arlo
Siemen, Scott Schafer, and Jacob Finkelman for advising during the disclosure.

[1]: https://en.wikipedia.org/wiki/Umask
[2]: https://github.com/rust-lang/wg-security-response/tree/main/patches/CVE-2023-38497
[3]: https://www.rust-lang.org/policies/security
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEV2nIi/XdPRSiNKes77mGCudSDawFAmTLX38ACgkQ77mGCudS
Daxn7Q/+Oid260WnVd1sH9njTJt/+zBImTjbfNaMge6PzFteKat/D15YPgpaFEmy
WM+gH9ejz+oOgjw2DTdeMHzh9i137kchNfzgEY6Cl0SMxc5NymA47Q2zrSt+TBK6
L362q5dw/Ic1Sf5GRt7J4xeLjY4Vj8FFve1Jnd3VW+QQkATBJn01SLyTD4uXE5tJ
1UX9IkG1n2y9wXgvkmMYInAnOux8mAb5Sx5JYAtPBO7jV2xfg5ffME6BIzH4F7xw
wL5k7epvHbtwt2eHVetbHf8UjTiuZxDK8GWbMPqe59AheoLRfgmw06qxVwxI8lEJ
cWTnZDZEdSXgpy9OphoTYAonQp7qdzoQdXpc4dQxpWkTa3+kvB9SD9H+OVTiYYEv
EctRt7CQGeTFmpotwq3wwpv8XjWvpjdRie1TIMA5WejZecHiL/iiZxkn00DxW3RP
dp6Qvqb/jxl7dfRTSm3mH+iqVkv8GtEWwbfK0LE3i9O1ezmQ0m7kjKbgv+NP8p8v
mtGM1K/IDGYIUgOXha46wqXv9/1f6tCeOcuC9C1j24Jbl7ScmwanQ0VmZWZBfhFD
EBrLaSlHl45GwSyEaIe7REtOrCR4UCAvHMe1Rxw0KdWe//8Qrtq4agqVg4DYr0/h
WzDXqlbVAQqKWehaQtJfhQ8xW3XYQBmYLZOsWmBKUKVMnUsTkFQ=
=XCFS
-----END PGP SIGNATURE-----
