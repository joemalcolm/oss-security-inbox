Received: (qmail 24433 invoked by uid 550); 6 Nov 2025 16:57:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24356 invoked from network); 6 Nov 2025 16:57:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1762448240; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Mv9Yv/KPwjUdz+VdN3V/dglLG6sD3bGm/FPylD1stuc=;
	b=tELYI0d1j7A4gwqDag85uu9U9+PR4Pyc0du14PC2Q0FadUdvSR1zdQlis7Vpy+gsOJPjMA
	tEL5uM25Gs5Awry8YGQOeB72y/lITxaorVu9glJ02Hbv+Dgqejg4ykcsNRzJE3BRKf3PAr
	tDEUQjAFSJAnJwzOiqpSmYy6qYH45aY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1762448240;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Mv9Yv/KPwjUdz+VdN3V/dglLG6sD3bGm/FPylD1stuc=;
	b=rBcOrTq+3kqyV9iBCgUKsAAELDWhQiacDeqxwbRYcdrqZQnYneM8TYRs0sC0MWEjMpEzkU
	dMsD/16naCEeEJCQ==
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=tELYI0d1;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=rBcOrTq+
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1762448240; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Mv9Yv/KPwjUdz+VdN3V/dglLG6sD3bGm/FPylD1stuc=;
	b=tELYI0d1j7A4gwqDag85uu9U9+PR4Pyc0du14PC2Q0FadUdvSR1zdQlis7Vpy+gsOJPjMA
	tEL5uM25Gs5Awry8YGQOeB72y/lITxaorVu9glJ02Hbv+Dgqejg4ykcsNRzJE3BRKf3PAr
	tDEUQjAFSJAnJwzOiqpSmYy6qYH45aY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1762448240;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=Mv9Yv/KPwjUdz+VdN3V/dglLG6sD3bGm/FPylD1stuc=;
	b=rBcOrTq+3kqyV9iBCgUKsAAELDWhQiacDeqxwbRYcdrqZQnYneM8TYRs0sC0MWEjMpEzkU
	dMsD/16naCEeEJCQ==
Date: Thu, 6 Nov 2025 17:57:15 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aQzTbpjZ-QoRBxpK@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hO1NsnsdxlkqS3zp"
Content-Disposition: inline
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -6.61
Subject: [oss-security] scx: Unauthenticated scx_loader D-Bus Service can lead to major
 Denial-of-Service

--hO1NsnsdxlkqS3zp
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="8F9RuF0+ezonPP5J"
Content-Disposition: inline
Date: Thu, 6 Nov 2025 17:57:15 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: scx: Unauthenticated scx_loader D-Bus Service can lead to major
 Denial-of-Service


--8F9RuF0+ezonPP5J
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

this is a report about local Denial-of-Service and other issues
resulting from an unauthenticated D-Bus service `scx_loader`, which is
part of the scx project. The full formal report follows below. We also
offer a rendered HTML version of this report on our blog [1].

Summary:=20

The scx project offers a range of dynamically loadable custom schedulers
which make use of the Linux kernel's `sched_ext` feature. An optional
D-Bus service `scx_loader` provides an interface accessible to all
users, allowing them to nearly arbitrarily change the scheduling
properties of the system, leading to Denial-of-Service and other attack
vectors. Upstream rejected parts of our report, moved the `scx_loader`
component into a separate repository and no bugfix is available as of
now.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The scx project [2] offers a range of dynamically loadable custom
schedulers implemented in Rust and C, which make use of the Linux
kernel's `sched_ext` feature. An optional D-Bus service called
`scx_loader` provides an interface accessible to all users in the
system, which allows to load and configure the schedulers provided by
scx. This D-Bus service is present in scx up to version v1.0.17. As a
response to this report, `scx_loader` has been moved into a dedicated
repository [3].

A SUSE colleague packaged scx for addition to openSUSE Tumbleweed, and
the D-Bus service it contained required a review [4] by our team. The
review showed that the D-Bus service runs with full root privileges and
is missing an authentication layer, thus allowing any user to nearly
arbitrarily change the scheduling properties of the system, leading to
Denial-of-Service and other attack vectors.

Upstream declined coordinated disclosure for this report and asked us to
handle it in the open right away. In the discussion that followed,
upstream rejected parts of our report and presented no clear path
forward to fix the issues, which is why there is no bugfix available at
the moment.

Section 2 provides an overview of the `scx_loader` D-Bus service and its
lack of authentication. Section 3 takes a look into problematic command
line parameters which can be influenced by unprivileged clients. Section
4 looks into attempts to achieve a local root exploit using the
`scx_loader` API. Section 5 lists affected Linux distributions. Section
6 discusses possible approaches to fix the issues found in this report.
Section 7 takes a look at the upstream efforts to fix the issues.

This report is based on version 1.0.16 [5] of scx.

2) Overview of the Unauthenticated `scx_loader` D-Bus Service
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The `scx_loader` D-Bus service [6] is implemented in Rust and offers a
completely unauthenticated D-Bus interface on the system bus. The
upstream repository contains configuration files and documentation
advertising this service as suitable to be automatically started [7] via
D-Bus requests. Thus arbitrary users in the system (including low
privilege service users or even `nobody`) are allowed to make
unrestricted use of the service.

The service's interface [8] offers functions to start, stop or switch
between a number of scx schedulers. The start and switch methods also
offer to specify an arbitrary list of parameters which will be directly
passed to the binary implementing the scheduler.

Every scheduler is implemented in a dedicated binary and found e.g. in
`/usr/bin/scx_bpfland` for the bpfland scheduler. Not all schedulers
that are part of scx are accessible via this interface. The list of
schedulers supported by `scx_loader` in the reviewed version is:

    scx_bpfland scx_cosmos scx_flash scx_lavd
    scx_p2dq scx_tickless scx_rustland scx_rusty

We believe the ability to more or less arbitrarily tune the scheduling
behaviour of the system already poses a local Denial-of-Service (DoS)
attack vector that might even make it possible to lock up the complete
system. We did not look into a concrete set of parameters that might
achieve that, but it seems likely, given the range of schedulers and
their parameters made available via the D-Bus interface.

3) Passing Arbitrary Parameters to Schedulers
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The ability to pass arbitrary command line parameters to any of the
supported scheduler binaries increases the attack surface of the D-Bus
interface considerably. This makes a couple of concrete attacks
possible, especially when the scheduler in question accepts file paths
as input. Apart from parameters that influence scheduler behaviour, all
schedulers offer the generic "Libbpf Options", of which the following
four options stick out in this context:

--pin-root-path <PIN_ROOT_PATH>      Maps that set the 'pinning' attribute =
in their definition will have
                                     their pin_path attribute set to a file=
 in this directory, and be
                                     auto-pinned to that path on load; defa=
ults to "/sys/fs/bpf"
--kconfig <KCONFIG>                  Additional kernel config content that =
augments and overrides system
                                     Kconfig for CONFIG_xxx externs
--btf-custom-path <BTF_CUSTOM_PATH>  Path to the custom BTF to be used for =
BPF CO-RE relocations. This custom
                                     BTF completely replaces the use of vml=
inux BTF for the purpose of CO-RE
                                     relocations. NOTE: any other BPF featu=
re (e.g., fentry/fexit programs,
                                     struct_ops, etc) will need actual kern=
el BTF at /sys/kernel/btf/vmlinux
--bpf-token-path <BPF_TOKEN_PATH>    Path to BPF FS mount point to derive B=
PF token from. Created BPF token
                                     will be used for all bpf() syscall ope=
rations that accept BPF token
                                     (e.g., map creation, BTF and program l=
oads, etc) automatically within
                                     instantiated BPF object. If bpf_token_=
path is not specified, libbpf will
                                     consult LIBBPF_BPF_TOKEN_PATH environm=
ent variable. If set, it will be
                                     taken as a value of bpf_token_path opt=
ion and will force libbpf to
                                     either create BPF token from provided =
custom BPF FS path, or will
                                     disable implicit BPF token creation, i=
f envvar value is an empty string.
                                     bpf_token_path overrides LIBBPF_BPF_TO=
KEN_PATH, if both are set at the
                                     same time. Setting bpf_token_path opti=
on to empty string disables
                                     libbpf's automatic attempt to create B=
PF token from default BPF FS mount
                                     point (/sys/fs/bpf), in case this defa=
ult behavior is undesirable

libbpf is a userspace support library for BPF programs found in the
Linux source tree [9]. The following sub-sections take a look at each of
the attacker-controlled paths passed to this library in detail.

The `--pin-root-path` Option
----------------------------

The `--pin-root-path` option potentially causes libbpf to create the
parent directory of this path in `bfp_object__pin_programs()` [10]. We
are not entirely sure under which conditions the logic is triggered,
however, and if these conditions are controlled by an unprivileged
caller in the context of the `scx_loader` D-Bus API.

The `--kconfig` Option
----------------------

The file found in the `--kconfig` path is completely read into memory in
`libbpf_clap_opts.rs` line 91 [11]. This makes a number of attack
vectors possible:

- pointing to a device file like `/dev/zero` leads to an out of memory
  situation in the selected scheduler binary.
- pointing to a private file like `/etc/shadow` causes the scheduler
  binary to read in the private data. We did not find a way for this
  data to leak out into the context of an unprivileged D-Bus caller,
  however. This technique still allows to perform file existence tests
  in locations that are normally not accessible to unprivileged users.
- pointing to a FIFO named pipe will block the scheduler binary
  indefinitely, breaking the D-Bus service. Also, by feeding data to
  such a PIPE, _nearly_ all memory can be used up, keeping the system in
  a low-memory situation and possibly leading to the kernel's OOM killer
  targeting unrelated processes.
- by pointing to a regular file controlled by the caller, crafted
  KConfig information can be passed into libbpf. The impact of this
  appears to be minimal, however.

The following command line is an example reproducer which will cause the
`scx_bpfland` process to consume all system memory until it is killed by
the kernel:

    user$ gdbus call -y -d org.scx.Loader -o /org/scx/Loader \
        -m org.scx.Loader.SwitchSchedulerWithArgs scx_bpfland \
	    '["--kconfig", "/dev/zero"]'

The `--btf-custom-path` Option
------------------------------

The `--btf-custom-path` option offers similar attack vectors as the
`--kconfig` option discussed above. Additionally, crafted binary symbol
information can be fed to the scheduler via this path, which will be
processed either by `btf_parse_raw()` [12] or `btf_parse_elf()` [13]
found in libbpf. This can lead to integrity violation of the scheduler /
the kernel, the impact of which we cannot fully judge as we lack
expertise in this low level area and did not want to invest more time
than necessary for the analysis.

The `--bpf-token-path` Option
-----------------------------

The `--bpf-token-path`, if it refers to a directory, will be opened by
libbpf [14] and the file descriptor will be passed to the bpf system
call like this:

    bpf(BPF_TOKEN_CREATE, {token_create=3D{flags=3D0, bpffs_fd=3D20}}, 8) =
=3D -1 EINVAL (Invalid argument)

This does not seem to achieve anything, however, because the kernel code
rejects the caller if it lives in the initial user namespace (which the
privileged D-Bus service always does). The path could maybe serve as an
information leak to test file existence and type, if the behaviour of
the scheduler "start" operation shows observable differences depending
on the input.

4) On the Verge of a Local Root Exploit
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

With this much control over the command line parameters of many
different scheduler binaries, which offer a wide range of options, we
initially assumed that a full local root exploit would not be difficult
to achieve. We tried hard, however, and did not find any working attack
vector so far. It could be that we overlooked something in the area of
the low level BPF handling regarding the attacker-controlled input files
discussed in the previous section, however.

`scx_loader` is saved from a trivial local root exploit merely by the
fact that only a subset of the available scx scheduler binaries is
accessible via its interface. The `scx_chaos` scheduler, which is not
among the schedulers offered by the D-Bus service, supports a positional
command line argument [15] referring to a "Program to run under the
chaos scheduler". Would this scheduler be accessible via D-Bus, then
unprivileged users could cause user controlled programs to be executed
with full root privileges, leading to arbitrary code execution.

=46rom discussions with upstream it sounds like the exclusion of
schedulers like `scx_chaos` from the D-Bus interface does not stem from
security concerns, but rather from functional restrictions, because some
schedulers are not supported in all contexts, or are not stable yet.

5) Affected Linux Distributions
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

=46rom our investigations and communication with upstream it seems that
only Arch Linux is affected by the problem in its default installation
of scx. Gentoo Linux comes with an ebuild for scx, but for some reason
there is no integration of `scx_loader` into the init system and also
the D-Bus autostart configuration file is missing. Thus it will only be
affected if an admin manually invokes the service.

Otherwise we did not find a packaging of `scx_loader` on current Fedora
Linux, Ubuntu LTS or Debian Linux. Due to the outcome of this review we
never allowed the D-Bus service into openSUSE, which is therefore also
not affected.

6) Suggested Fixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Restrict Access to a Group on D-Bus Level
-----------------------------------------

A quick fix for the worst aspects of the issue would be to restrict the
D-Bus configuration in `org.scx.Loader.conf` [16] to allow access to the
interface only for members of a dedicated group like `scx`. This at
least prevents random unprivileged users from abusing the API.

We offer a patch (attached to this email) which does exactly this.

Use Polkit for Authentication
-----------------------------

By integrating Polkit authentication, the use of this interface can be
restricted to physically present interactive users. Even in this case we
suggest to restrict full API access to users that can authenticate as
admin, via Polkit's `auth_admin_keep` setting. Read-only operations can
still be allowed without authentication.

Making the API more Robust
--------------------------

The individual methods offered by the `scx_loader` D-Bus service should
not allow to perform actions beyond the intended scope, even if a caller
would have authenticated in some form as outlined in the previous
sections.

To this end, dangerous parameters for schedulers should either be
rejected (e.g. by enforcing a whitelist of allowed parameters) or
verified (e.g. by determining whether a provided path is only under
control of root and similar checks).

Regarding input files, the client ideally should not pass path names at
all, but send file descriptors instead, to avoid unexpected surprises
and the burden of verifying input paths in the privileged D-Bus service.

Use systemd Sandboxing
----------------------

The systemd service for `scx_loader` could make use of various hardening
options that systemd offers (like `ProtectSystem=3Dfull`), as long as
these do not interfere with the functionality of the service. This would
prevent more dangerous attack vectors from succeeding if the first line
of defense fails.

7) Missing Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

Upstream showed a reluctant reaction [17] to the report we provided in a
GitHub issue [18], rejecting parts of our assessment. An attempt to
introduce a Polkit authentication layer [19] based on AI-generated code
was abandoned quickly, and upstream instead split off the `scx_loader`
service into a new repository [3] to separate it from the `scx` core
project. Our original GitHub issue has been closed, and we cloned it
[20] in the new repository to keep track of the issue.

Downstream integrators of `scx_loader` can can limit access to the D-Bus
service to members of an `scx` group by applying the patch attached to
this mail and mentioned in the Suggested Fixes section. This way access
to the problematic API becomes opt-in, and is restricted to more
privileged users that actually intend to use this service.

8) CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

We suggested to upstream to assign at least one cumulative CVE to
generally cover the unauthenticated D-Bus interface aspect leading to
local DoS, potential information disclosure and integrity violation. We
offered to assign a CVE from the SUSE pool to simplify the process.

Upstream did not respond to this and did not clearly confirm the issues
we raised, but rather rejected certain elements of our report. For this
reason there is currently no CVE assignment available.

9) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-09-30: We contacted one of the upstream developers by email and asked =
for a security contact of the project, since none was documented in the rep=
ository.
2025-09-30: The upstream developer agreed to handle the report together wit=
h a fellow developer of the project.
2025-09-30: We shared a detailed report with the two developers.
2025-10-02: After analysis of the report, the upstream developer suggested =
to create a public GitHub issue, which we did [18].
2025-10-03: An upstream developer responded to the issue [17] rejecting var=
ious parts of our report.
2025-10-28: With some delay we provided a short reply [21], pointing out th=
at the rejections seem to miss the central point of the change of privilege=
 which is taking place.
2025-10-28: Upstream created a pull request [19] based on AI-generated code=
 to add an authentication layer to the D-Bus service.
2025-10-28: Upstream closed the unmerged pull request shortly after. The di=
scussion sounded like upstream no longer intends to support the `scx_loader=
` D-Bus service in this repository.
2025-11-03: We provided a more detailed reply [22] to the issue discussion.
2025-11-04: Upstream closed the GitHub issue and split off a dedicated repo=
sitory [3] for `scx_loader`.
2025-11-06: We cloned the original issue [20] in the new repository.
2025-11-06: Publication of this report.

References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

[1]: https://security.opensuse.org/2025/11/06/scx-unauthorized-dbus.html
[2]: https://github.com/sched-ext/scx
[3]: https://github.com/sched-ext/scx-loader
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1250449
[5]: https://github.com/sched-ext/scx/releases/tag/v1.0.16
[6]: https://github.com/sched-ext/scx/tree/v1.0.16/tools/scx_loader
[7]: https://github.com/sched-ext/scx/blob/v1.0.16/tools/scx_loader/README.=
md?plain=3D1#L76
[8]: https://github.com/sched-ext/scx/blob/v1.0.16/tools/scx_loader/src/dbu=
s.rs#L16
[9]: https://github.com/torvalds/linux/tree/c9cfc122f03711a5124b4aafab3211c=
f4d35a2ac/tools/lib/bpf
[10]: https://github.com/torvalds/linux/blob/6146a0f1dfae5d37442a9ddcba012a=
dd260bceb0/tools/lib/bpf/libbpf.c#L8801
[11]: https://github.com/sched-ext/scx/blob/e25cc6e5920f33d5bbe2bd62b2e7a58=
54de88a19/rust/scx_utils/src/libbpf_clap_opts.rs#L91
[12]: https://github.com/torvalds/linux/blob/6146a0f1dfae5d37442a9ddcba012a=
dd260bceb0/tools/lib/bpf/btf.c#L1304
[13]: https://github.com/torvalds/linux/blob/6146a0f1dfae5d37442a9ddcba012a=
dd260bceb0/tools/lib/bpf/btf.c#L1192
[14]: https://github.com/torvalds/linux/blob/6146a0f1dfae5d37442a9ddcba012a=
dd260bceb0/tools/lib/bpf/libbpf.c#L5030
[15]: https://github.com/sched-ext/scx/blob/e25cc6e5920f33d5bbe2bd62b2e7a58=
54de88a19/scheds/rust/scx_chaos/src/lib.rs#L711
[16]: https://github.com/sched-ext/scx/blob/e25cc6e5920f33d5bbe2bd62b2e7a58=
54de88a19/tools/scx_loader/org.scx.Loader.conf
[17]: https://github.com/sched-ext/scx/issues/2847#issuecomment-3365496251
[18]: https://github.com/sched-ext/scx/issues/2847
[19]: https://github.com/sched-ext/scx/pull/2970
[20]: https://github.com/sched-ext/scx-loader/issues/12
[21]: https://github.com/sched-ext/scx/issues/2847#issuecomment-3455392651
[22]: https://github.com/sched-ext/scx/issues/2847#issuecomment-3480324604

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
Gesch=E4ftsf=FChrer: Jochen Jaser, Andrew McDonald, Werner Knoblich

--8F9RuF0+ezonPP5J
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment;
	filename=0001-scx_loader-D-Bus-configuration-restrict-access-to-me.patch
Content-Transfer-Encoding: quoted-printable

=46rom f0fe83b7eef0ffa6be9c08e7905b10b93ec7cfc6 Mon Sep 17 00:00:00 2001
From: Matthias Gerstner <matthias.gerstner@suse.de>
Date: Tue, 4 Nov 2025 12:29:48 +0100
Subject: [PATCH] scx_loader D-Bus configuration: restrict access to members=
 of
 scx group

To avoid the unauthenticated D-Bus interface being accessible to all
users in the system, tighten the D-Bus policy to restrict access to
members of the "scx" group.

This way access to the D-Bus service is opt-in only. Any users allowed
to access the D-Bus service likely can completely lock up the system.
---
 tools/scx_loader/org.scx.Loader.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tools/scx_loader/org.scx.Loader.conf b/tools/scx_loader/org.sc=
x.Loader.conf
index 81a1e340..b2fd00c6 100644
--- a/tools/scx_loader/org.scx.Loader.conf
+++ b/tools/scx_loader/org.scx.Loader.conf
@@ -8,7 +8,7 @@
         <allow send_destination=3D"org.scx.Loader"/>
         <allow receive_sender=3D"org.scx.Loader"/>
     </policy>
-    <policy context=3D"default">
+    <policy group=3D"scx">
         <allow send_destination=3D"org.scx.Loader"/>
         <allow receive_sender=3D"org.scx.Loader"/>
     </policy>
--=20
2.51.0


--8F9RuF0+ezonPP5J--

--hO1NsnsdxlkqS3zp
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmkM02sACgkQFMQFyXGS
NVNjfxAAjG218/cljEl0oi/TncdUZlyt6WFvx73WoTs6QOvp8AK3Ypo8mQchQrNJ
EUvJ3Jo8jIgYiALtVlEdvdi3/ZpuQUgTBwaQBHDBzjGBMMk1shH6FAby9rOQrUjY
livmUSr8TOob88X2Fly14brVx8tUxNkw8BrrBk/f5HSdzIqpMIBVOGXCgG906YrH
JIaDkNSzTa48HZjw9GkReIENqPfTvD5WqwUFkW+h1fIVf/PwRTn8DOBTsW0CmnOx
GN+Q4Bqc+MWvoXVjleYmTDTuLushkq0mv3H41PjHfmr57N+k1hRz3TpzThCuCwK5
SwzazD2EclGp7U+v4tlywhHjdtnz2xjOQb8n9chcWAX3sO4crUyDYlKlVKXb0M0q
9vdbRmSWRRk+YmKAI9RnqcqaHDhST6QjfPCcgbi7D9Z7H4tJnT916mdCRey73e28
/UtHmhlPUcwbexsfiX/i8PILFJdY6Lo9hdHepEfeRRvfkuiJIAE57Gvh0NGGB9nq
SSSq8ptD+ut7KmQE+URhLzPuuHhf2/GGzNDVKuAyoY8A/K2CoXopSNXQ1GtPdmnp
4ul+qk/3tbudLt0HdlidDX12RSPWgRSkYznXdN1EkRHAxUE95xIsrHrFGNRNCEC/
xl4d3AzV9gYMnvLi8Qu7Jm+Xo3fMNUyzBYB7I7theHiudCI+H6o=
=HZn7
-----END PGP SIGNATURE-----

--hO1NsnsdxlkqS3zp--
