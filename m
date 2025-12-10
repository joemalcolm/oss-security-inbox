Received: (qmail 20065 invoked by uid 550); 10 Dec 2025 18:23:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20034 invoked from network); 10 Dec 2025 18:23:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1765390986; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=lcYnnP6Ehvt3Cfs0PpAmcTew8E/hn8QNMWkdh+0rzpc=;
	b=nK/uxb/5LFoMdnZZrYoDKUptBaAE0KYjVd6ZhRN5jSiNXoXn9gNuItEULFYMeYn1XEAxWh
	ASW/8RTe1b9AnmwmWBKV0p5pFR4Zc9wBlBjlZ79i08brCLaOqxLpUOkdzv2qNE10LDN5CQ
	crjcPH4YDbbRSrZho0jpq+XS8PaaaAw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1765390986;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=lcYnnP6Ehvt3Cfs0PpAmcTew8E/hn8QNMWkdh+0rzpc=;
	b=0ubtyRVL0vQR6i3MOT0uIyPcQGabG0nGeHLBLEz6Y76avH/6K+hHpVsD4wHEc5qeDktvv9
	MeK+TqtrB2tARECg==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1765390986; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=lcYnnP6Ehvt3Cfs0PpAmcTew8E/hn8QNMWkdh+0rzpc=;
	b=nK/uxb/5LFoMdnZZrYoDKUptBaAE0KYjVd6ZhRN5jSiNXoXn9gNuItEULFYMeYn1XEAxWh
	ASW/8RTe1b9AnmwmWBKV0p5pFR4Zc9wBlBjlZ79i08brCLaOqxLpUOkdzv2qNE10LDN5CQ
	crjcPH4YDbbRSrZho0jpq+XS8PaaaAw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1765390986;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:
	 mime-version:mime-version:content-type:content-type;
	bh=lcYnnP6Ehvt3Cfs0PpAmcTew8E/hn8QNMWkdh+0rzpc=;
	b=0ubtyRVL0vQR6i3MOT0uIyPcQGabG0nGeHLBLEz6Y76avH/6K+hHpVsD4wHEc5qeDktvv9
	MeK+TqtrB2tARECg==
Date: Wed, 10 Dec 2025 19:23:05 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Message-ID: <aTm6iVPJJD4drBzA@kasco.suse.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hrfkbNhd3mIKCr2g"
Content-Disposition: inline
X-Spam-Flag: NO
X-Spam-Score: -6.30
X-Spam-Level: 
Subject: [oss-security] smb4k: Major Vulnerabilities in KAuth Helper (CVE-2025-66002,
 CVE-2025-66003)

--hrfkbNhd3mIKCr2g
Content-Type: multipart/mixed; protected-headers=v1;
	boundary="kImkqcALBXC1n5aG"
Content-Disposition: inline
Date: Wed, 10 Dec 2025 19:23:05 +0100
From: Matthias Gerstner <mgerstner@suse.de>
To: oss-security@lists.openwall.com
Subject: smb4k: Major Vulnerabilities in KAuth Helper (CVE-2025-66002,
 CVE-2025-66003)


--kImkqcALBXC1n5aG
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello list,

please find below a detailed report of vulnerabilities found in smb4k [1].
These issues have been pre-disclosed to the distros mailing list on
2025-12-01, and today is the general publication date. We also offer a
rendered HTML version of this report on our blog [2].

Summary: smb4k is a KDE desktop related utility which allows
unprivileged mounts of Samba/CIFS network shares. The utility was
already rejected from entering openSUSE in 2017 due to severe security
issues. A revisit of the tool showed that it still suffered from major
vulnerabilities leading to local Denial-of-Service or even a local root
exploit. After a long coordinated disclosure, upstream arrived at a
working bugfix in version 4.0.5.

1) Introduction
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

smb4k [1] is a KDE desktop related utility which allows unprivileged
mounting of Samba/CIFS network shares. The SUSE security team reviewed
its privileged KAuth helper component already in 2017 [3] which led to
the discovery of CVE-2017-8422 [4] (general KAuth authentication bypass)
and CVE-2017-8849 [5] (local root exploit via smb4k mount helper).

This September we were asked to reconsider [6] smb4k for inclusion in
openSUSE Tumbleweed. The resulting review showed that the mount helper
still lacks input validation, is affected by race conditions and has a
bug in its existing verification logic. This leads to local attack
vectors which allow Denial-of-Service or even a local root exploit.

Many Linux distributions and also some BSDs are potentially affected by
the issues described in this report. We offered coordinated disclosure
to upstream and the maximum 90 days non-disclosure period was fully
spent to arrive at a patch which addresses all the issues. This patch is
found in commit 0dea60194a [7], which is part of the 4.0.5 bugfix
release [8] of smb4k.

The following section provides a short overview of the privileged mount
helper. Section 3) looks into the problems found in the helper's mount
method. Section 4) in turn looks into the issues found in the helper's
unmount method. Section 5) contains further remarks on the helper's code
quality and security concerns. Section 6) discusses the fixes we
suggested to upstream to address the issues. Section 7) gives details
about the bugfix which was finally implemented by upstream. Section 8)
suggests possible workarounds that can be applied to avoid the issues
found in this report. Section 9) provides reproducers for the issues.

This report is based on smb4k release 4.0.4 [9].

2) Overview of the Privileged Mount Helper
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The problematic privileged mount helper component of smb4k is relatively
small and can be found in the file smb4kmounthelper.cpp [10]. The helper
runs with full root privileges and implements two KAuth actions
accessible via D-Bus: mounting and unmounting a network share. Both
actions are allowed for local users in active sessions without
authentication, based on the Polkit `yes` setting.

3) Problems in `Smb4KMountHelper::mount()`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

3.1) Arbitrary Target Directories can be used for Mounting Network Shares
-------------------------------------------------------------------------

The helper does not impose any restrictions on the target directory
where the desired Samba share will be mounted. This means the share can
also be mounted over `/bin`, for example. Should the client have control
over the contents of the network share, then this allows for a local
root exploit by placing crafted binaries e.g. for `/bin/bash` on the
share, which are bound to be executed by privileged processes at some
point.

If the share's content cannot be controlled by the attacker, then this
serves as a local Denial-of-Service attack vector, as vital system
programs will become inaccessible.

To fix this, we suggest to only allow mounting of network shares in a
pre-defined location which is not controlled by unprivileged users.

3.2) Arbitrary Command Line Arguments can be Passed to `mount.cifs`
-------------------------------------------------------------------

The client can specify arbitrary additional command line arguments in
the `mh_options` parameter, which will be passed to the `mount.cifs`
program [11]. The command line constructed by the mount helper looks
like this:

    /sbin/mount.cifs <URL> <mountpoint> <options>...

All of these arguments, except for the path to the `mount.cifs` program
itself, are actually controlled by the client. It is not the generic
`mount` program which is invoked here, otherwise the client could
already perform arbitrary mounts in the system. Instead the attacker is
restricted to what the special-purpose `mount.cifs` binary provides.

The `mount.cifs` program supports a plethora of mount options [12].
Investigating the effect of each one would go beyond the scope of this
report. There is one simple privilege escalation vector, however:
passing `filemode=3D04777,uid=3D0` to the command line results in every file
on the network share mount receiving setuid-root permissions. If the
content of the network share is controlled by the attacker, then this
can easily be used to introduce an attacker-controlled setuid-root
program into the system. This would then allow for a local root exploit
even if issue 3.1) would be fixed.

Other `mount.cifs` options like `port=3D<port>` could be used to direct
the kernel to a CIFS server controlled by the attacker itself, listening
on an unprivileged port on localhost. This way a local attacker could
provide the necessary crafted network share for executing the exploits
described in this report on its own, without relying on external network
resources.

To fix this, we suggest to restrict the `mh_options` to a whitelist of
allowed parameters, and also verify the options' values in case they can
contain problematic settings.

3.3) Clients can Control the `KRB5CCNAME` Environment Variable Passed To `m=
ount.cifs`
---------------------------------------------------------------------------=
----------

The client can provide an arbitrary path in the `mh_krb5ticket`
parameter; the mount helper will place this path into the `KRB5CCNAME`
environment variable [13] for the `mount.cifs` child process. This is to
allow use of the client's Kerberos credentials for mounting the network
share.

The client can pass a path pointing to file system locations normally
not accessible to it. In a multi-user scenario this would allow, for
example, to hijack another user's Kerberos credentials, by passing a
path to the credentials cache of the other user. It might also lead to
information leaks of files like `/etc/shadow`, should `mount.cifs`
output file content to the system logs or on stderr (the output of which
is returned to the client via D-Bus).

Furthermore, this path could be used for file existence tests or for a
local Denial-of-Service attack (by pointing to special files like
`/dev/zero` or a named FIFO pipe).

To fix this, we recommend not to pass a path, but an already open file
descriptor from the client to the helper, to avoid the opening of
arbitrary files with root privileges.

4) Problems in `Smb4KMountHelper::unmount()`
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

4.1) Missing `return` Statement on Mount Path Verification Failure
------------------------------------------------------------------

This is similar to issue 3.1) above regarding mounting. In
smb4kmounthelper.cpp line 177 [14] there is an `if` block that acts on
the situation when the `mh_mountpoint` path supplied by the client does
not match any of the available Samba mounts returned from
`KMountPoint::currentMountPoints()`.

The problem is that this `if` block only sets an error message, but does
not actually terminate the function execution with `return`. This means
the verification is ineffective and local users can unmount arbitrary
file systems despite the check.

This is a major local Denial-of-Service attack vector, which can lead to
a complete system outage. In some special contexts it might even allow
information leaks or privilege escalation, when file system locations
have been made inaccessible by mounting other file systems on top (we
can imagine something like this e.g. in the context of container
setups).

4.2) Arbitrary Command Line Parameters can be Passed to `umount`
----------------------------------------------------------------

Similar to issue 3.2) above, the privileged helper forwards arbitrary
command line parameters provided by the client in `mh_options` to the
command line of the `umount` program. This happens in
smb4kmounthelper.cpp line 187 [15]. Basically the `umount` program will
be invoked like this:

    /sbin/umount <options>... <mount-point>

Assuming issue 4.1) would be fixed, the `<mount-point>` parameter cannot
be chosen arbitrarily by the client, but must match an existing "cifs",
"smbfs" or "smb3" type mount path. As long as such a mount path exists,
the client can pass arbitrary additional mount points as "options",
which will then be unmounted as well. This is a lighter variant of issue
4.1), leading to local Denial-of-Service if the described pre-condition
is fulfilled.

Apart from this, `umount` offers various options [16] that can influence
the way it operates. One option that sticks out is `-N --namespace ns`,
which causes the program to unmount the file system in an arbitrary
mount namespace. This could impact privileged processes, other users'
containers or jailed processes.

To fix this, we suggest to restrict the `mh_options` to a whitelist of
allowed parameters.

4.3) Race Conditions Affecting `KMountPoint::currentMountPoints()`
------------------------------------------------------------------

This is not directly an issue in smb4k itself, but an issue in the KIO
library [17] which implements the `KMountPoint` API. During our tests we
used version v6.17.0 [18] of this library.

The mount helper's `umount()` function attempts to verify [19] the input
path provided by the client by comparing it against current mounts in
the system as reported by the kernel. Only active "cifs", "smbfs" and
"smb3" file system mounts are supposed to be unmounted. To this end the
current list of mounted file systems is obtained from

    KMountPoint::currentMountPoints(KMountPoint::BasicInfoNeeded | KMountPo=
int::NeedMountOptions);

The implementation of `currentMountPoints()` relies on the libmount
library to retrieve a list of mount points [20]. The libmount library
provides a proven implementation for safely parsing files like
`/proc/self/mountinfo`, which we reviewed ourselves a few years ago and
deemed robust. After safely obtaining the information from libmount, the
KIO library performs some actions on top, however, which can lead to
security relevant issues.

One minor issue is found in kmountpoint.cpp line 365 [21], where
`stat()` is called on the target mount directory of each mount entry.
This potentially accesses untrusted paths, also from FUSE file systems,
which could in some cases cause a local Denial-of-Service if `stat()`
blocks. Also, the supposed mount point could be unmounted by the time
the `stat()` call is performed, allowing the path to point to an
arbitrary file (also following symbolic links), which would lead to
incorrect information in the `m_deviceID` field of the information
returned by `currentMountPoints()`.

Later on the code tries to "resolve GVFS mount points" in line 382 [22].
The `resolveGvfsMountPoints()` function [23] that implements this logic
looks for mount entries with "gvfsd-fuse" as source device name. For
each of these mount points the function will list the mount's directory
contents and look for directory entries of the form `<type>:<label>`,
where `type` refers to the file system type that is expected to be found
there. The function then synthesizes additional mount entries from this
information which will be returned to the caller, appearing as
fully-fledged regular mounts.

There are two problems with this. For one, these operations are all
subject to race conditions; the mount table entries can change at any
time. Secondly, there exists a common way for unprivileged users in
Linux systems to create mount points with arbitrary source device names.
This is the `fusermount` setuid-root utility, which is used for mounting
FUSE file systems. Local users can create a fake `gvfsd-fuse` mount
point like this:

    $ export _FUSE_COMMFD=3D0
    $ mkdir $HOME/mnt
    $ fusermount $HOME/mnt -ononempty,fsname=3Dgvfsd-fuse
    $ mount | tail -n1
    gvfsd-fuse on /home/$USER/mnt type fuse (rw,nosuid,nodev,relatime,user_=
id=3D1000,group_id=3D100)

The default FUSE configuration prevents the `root` user from accessing
non-root controlled FUSE file systems. To overcome this limitation, an
attacker can perform the following steps:

- create a fake `gvfsd-fuse` mount like shown above.
- trigger the `unmount()` logic in smb4k's mount helper.
- attempt to unmount `$HOME/mnt` after `currentMountPoints()` obtained
  the mount information from libmount, but before it calls
  `resolveGvfsMountPoints()`.
- place directories in this location that match the expected format e.g.
  something like `cifs:mymount`. These directories can already be placed
  there in advance, of course.
- on success, the `currentMountPoints()` function will return a
  synthesized entry to the mount helper which lists a CIFS mount in the
  unprivileged user's `$HOME/mnt/cifs:mymount`.

Using this approach, the verification step in the mount helper's
`unmount()` function can be bypassed even if issues 4.1) and 4.2) would
be fixed.

There are further potential issues in the `KMountPoint` logic, e.g. in
`finalizeCurrentMountPoint()` the source device name is resolved if the
`KMountPoint::NeedRealDeviceName` flag is passed by the caller. This
provides another opportunity for unprivileged FUSE mounts with fake
source device names to influence the outcome, e.g. to perform file
existence tests or otherwise trick the caller of the KIO library.

Due to these problems, the information obtained from
`currentMountPoints()` currently cannot be used to base security related
decisions on. Generally `root` should not perform these additional
queries at all. The library could check for `geteuid() =3D=3D 0` to prevent
the execution of this dangerous logic in privileged contexts.

For unprivileged applications we could imagine the addition of a flag
like `KMountPoint::AllowUnsafe`, which opts in to the problematic
behaviour. Only applications that are aware of the potential problems
would then pass this flag.

When we reported this, KDE security at first stated that the problems
described in this section would only affect smb4k and no other users of
the KMountPoint API. We found it questionable to consider a library's
API secure only based on its supposed current users. Beyond that, even
unprivileged processes using this API might fall victim to other users
in the system crafting gvfsd mount information. One could argue that
there is an issue in the `fusermount` utility to begin with. The
`KMountPoint` API is explicitly processing a FUSE-based file system,
however, and thus it should be prepared to deal with the peculiarities
this entails.

When we pointed out our continued concern to KDE security, it was
suggested that we create an upstream issue, or ideally provide a bugfix
ourselves. While we are happy to help where we can, the issue at hand is
a larger API design topic, and we believe it should be dealt with
carefully by the responsible upstream developers, allowing them also to
learn from this experience. For this reason we only created the upstream
issue [24], as was suggested to us.

4.4) Arbitrary Network Share Mounts can be Unmounted
----------------------------------------------------

Even if all the other issues discussed in this section would be fixed,
the current mount helper code allows to unmount arbitrary Samba shares,
no matter if they have been originally mounted by smb4k itself (for the
same user or a different one), or by other components in the system
(e.g. via a fixed entry in `/etc/fstab`).

Similarly to issue 3.1) above, we suggest to restrict smb4k mounts to a
pre-defined location not controlled by unprivileged users to address
this issue.

5) Other Remarks
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

5.1) Superfluous `mh_command` Client Parameter
----------------------------------------------

Both helper actions compare an arbitrary path supplied by the client in
`mh_command` to the trusted "mount" or "unmount" program path returned
from `findMountExecutable()` or `findUmountExecutable()`, respectively.
This is odd. It seems this comparison is a remnant from the attempted
fix of CVE-2017-8849. This is superfluous logic that increases the
complexity of both client and helper unnecessarily and can cause
confusion, at best.

The helper should choose the trusted mount program on its own and stop
considering the `mh_command` parameter at all.

5.2) Redundant "online check" Code
----------------------------------

There is a redundant check for online network interfaces in
smb4kmounthelper.cpp line 38 [25] and line 205 [26]. This code should be
placed into a separate function instead, to avoid code duplication and
to increase readability.

This online check is also highly heuristic, and it might be possible for
unprivileged users to influence its outcome e.g. by creating
unprivileged pseudo network devices that appear to be online.

5.3) `mount.cifs` and `umount` Follow Symbolic Links
----------------------------------------------------

Both `mount.cifs` and `umount` follow symbolic links in path arguments.
This means that even if the mount helper would try to verify a path
pointing to a client-controlled location, this could be replaced with a
symbolic link by the time the actual `mount.cifs` or `umount` utility
runs, and the mount logic would then operate on a completely different
location than expected by the helper.

6) Suggested Fixes
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Apart from the individual suggestions mentioned in the context of the
issues above, we believe the range and severity of the issues uncovered
shows that a major redesign of the mount helper utility is necessary to
address all the problems in a robust way.

Here are some suggestions regarding a larger redesign:

- the helper should not allow mounting or unmounting of user provided
  paths at all. A dedicated directory like `/mounts/smb4k`, only controlled=
 by
  `root`, should be used for these purposes. Some form of tracking which mo=
unt
  belongs to which user would be needed (e.g. giving ownership of the mount=
 to
  the client that requested it). This is more like udisks [27] solves
  the problem of mounting devices on user request.
- passing through arbitrary parameters from unprivileged clients to
  `mount.cifs` or `umount` won't work securely. A more abstract interface w=
ith
  well-defined settings for mounting or unmounting would help to restrict t=
he
  degrees of freedom that a client has. This would also improve the decoupl=
ing
  of the helper's interface from the concrete implementation, this way the
  helper could e.g. change the implementation to call the `mount()` and
  `umount()` system calls directly, instead of going through the mount
  utilities.

7) Upstream Bugfix
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

During the course of a month we discussed various versions of patches
with the smb4k upstream developer, until we arrived at a workable patch [7]
just in time for publication of this report after the 90 days maximum
embargo period we offered. The main aspects of the bugfix are as
follows:

- For `mount` and `unmount` the options passed by the client are now more
  closely scrutinized, and only settings present in a whitelist of
  options are allowed anymore.
- The `filemode` mount option, which is still basically supported, is
  now checked to make sure no special file bits are present.
- The `uid` and `gid` mount options can only be set to the UID/GID of
  the caller, not to arbitrary IDs anymore.
- Network share mounts are now restricted to a directory hierarchy
  rooted in `/run/smb4k`. This way, unprivileged users can no longer
  place symlinks in the mount destination paths. Mounts are placed in
  per-UID subdirectories such that different clients cannot influence
  each other's mounts anymore.
- For passing Kerberos credentials, clients now pass already open file
  descriptors to the mount helper, thereby avoiding any issues with
  regards to operating on untrusted paths.
- The problematic `KMountPoint` API is no longer used and has been
  replaced by Qt's `QStorageInfo` API. Formally the investigation of
  existing mount points would no longer be necessary at all with the
  trusted mount tree location, but the upstream developer preferred to
  keep this extra verification step for the time being.

We want to express our thanks to Alexander Reinholdt, the smb4k upstream
developer, for cooperating with us and finishing the patch in time for
publication. This way a series of long-standing issues in smb4k could final=
ly
be addressed.

8) Possible Workarounds
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

If the upstream bugfix cannot be used right away, the following
suggestions can be considered to remove the attack surface described in
this report:

- Raise the Polkit authentication requirements for the mount and unmount
  helper actions to `auth_admin`. This way the problematic logic can
  only be reached by already privileged users. This contradicts the
  original purpose of smb4k, however, to allow unprivileged mounts and
  unmounts of network shares.
- Restrict D-Bus access to the mount helper utility to members of an
  opt-in group like `smb4k`. Coupled with a security disclaimer, this
  would allow users that really want to use this feature to opt-in.

9) Reproducers
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

The KAuth D-Bus interface cannot easily be invoked via utilities like
`gdbus`, because it expects a serialized `QVariantMap` as input. We
offer two C++ programs which can be used to perform standalone tests of
smb4k's mount helper API for the purposes of reproducing the attack
vectors described in this report, `smb4k_mount.cpp` and
`smb4k_unmount.cpp`. There are comments in the source code of the
reproducers that explain how to compile and use them. You can find them
attached to this email.

10) CVE Assignment
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

Formally the findings in this report could justify a large count of
CVEs, but we decided to condense them into the two main aspects that
result from the issues:

- CVE-2025-66002: local users can perform arbitrary unmounts via the
  smb4k mount helper due to lack of input validation.
- CVE-2025-66003: local users can perform a local root exploit via the
  smb4k mount helper if they can access and control the contents of a
  Samba network share.

When the end of the 90 days maximum non-disclosure period we offered
upstream approached, due to lack of feedback from KDE Security, we
assigned these CVEs as we originally suggested them to upstream.

11) Coordinated Disclosure
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D

We reached out to KDE security on September 11 and shared the full
details about the issues described in this report, offering coordinated
disclosure. For nearly the first two months of the maximum 90 days
non-disclosure period, we had difficulties getting clear answers from
KDE security about the expected publication date, whether they
acknowledged the findings or even whether they wanted to practice
coordinated disclosure at all.

We only saw some visible progress at the beginning of November, when the
smb4k upstream developer joined the discussion and started developing
bugfixes. The progress remained slow, however, due to limited resources
on the end of the developer. Still, from this point onwards the
discussion turned out helpful and cooperative, and we could finally see
that the non-disclosure time was actually being put to use. We managed
to agree on a bugfix that addresses all the issues only less than a week
before the 90 days maximum embargo period would be reached.

In summary, we are not completely happy about how the coordinated
disclosure developed in this case. We perceived an unwillingness on the
end of KDE security to communicate and to help in coordinating the
disclosure. We believe the issue could have been fixed faster by
suggesting a workaround to users and by developing a bugfix in the open,
with the help of the rest of the community.

12) Timeline
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

2025-09-11: We forwarded our report to security@kde.org, offering
  coordinated disclosure.
2025-09-17: We received acknowledgement of receipt from KDE security.
2025-09-29: Not having heard anything else from upstream, we asked at
  least for a confirmation of the issues described in the report and a
  formal decision whether coordinated disclosure was desired. We asked to
  get feedback until October 2, lest we would publish the information on
  our end.
2025-10-01: We got a reply from KDE security that they were working on
  the issue, without answering our questions. We replied again and tried
  to clarify that we did not intend to put time pressure on upstream, but
  would like to clearly setup the coordinated disclosure process.
2025-10-02: We got a short reply that they could not give us an expected
  publication date, repeating again that they were working on the issue.
  Our questions pertaining the process still remained unanswered. We once
  more explained that we would like to be involved in reviewing potential
  bugfixes where we could offer our help, and that we would like to avoid
  non-disclosure time passing without any visible progress.
2025-10-07: KDE security informed us that the fix was moving forward
  without giving further details.
2025-11-07: The smb4k developer, Alexander Reinholdt, contacted us
  directly sharing a first batch of suggested bugfixes.
2025-11-12: We provided detailed feedback on the security relevant part
  of the patch, pointing out various problems that remained, and new
  problems that got introduced.
2025-11-12: KDE security chimed in about the KMountPoint topic, stating
  that smb4k would be the only privileged component using this API.
2025-11-13: We replied to KDE security explaining in more detail the
  remaining concerns we had regarding the KMountPoint API.
2025-11-16: The smb4k developer thanked us for the review of the patch,
  and sent back detailed comments on our input. He told us he would be
  working on a follow-up patch set.
2025-11-26: The smb4k developer informed us that it would take still
  more time for him to provide the improved version of the patch.
2025-11-26: We thanked the developer for his continued effort, but also
  reminded all participants that the end of the 90 days maximum
  non-disclosure period we offered was approaching in two weeks. We
  suggested the alternative of publishing a temporary workaround instead
  (like increasing authentication requirements), should a full bugfix be
  out of reach within the remaining time. We also suggested to involve the
  distros mailing list [28] at this time, to give other Linux and BSD
  distributions a chance to prepare before general publication of the
  report.
2025-11-27: On the topic of the KMountPoint API, KDE security clarified
  that they ideally would like a merge request from us addressing our
  concerns.
2025-11-28: We assigned the CVEs the way we initially suggested them to
  upstream, to provide them as additional information to the distros
  mailing list. We also shared the CVEs with upstream.
2025-11-30: The upstream developer shared an improved patch set with us.
2025-12-01: We sent another round of comments back to the upstream
  developer. The new patch was still lacking in a number of areas.
2025-12-01: We forwarded a draft of this report to the distros mailing
  list, announcing publication of the issues on 2025-12-10. We pointed out
  that no proper bugfix was available for sharing at this time.
2025-12-03: We received yet another version of the suggested patch from
  the upstream developer.
2025-12-04: This time we found no remaining security issues, agreed on
  the patch, but still commented on a couple of quality and style aspects.
2025-12-04: We forwarded the bugfix from the upstream developer to the
  distros mailing list.
2025-12-05: We asked the upstream developer to publish a bugfix release
  on 2025-12-10, which he agreed upon.
2025-12-10: Upstream published the bugfix release 4.0.5 [8] as planned.
2025-12-10: Publication of this report.

13) References
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

- smb4k KDE Project [1]
- smb4k 4.05 bugfix release [8]
- upstream bugfix for the issues in this report [7]
- SUSE Bugzilla review bug for smb4k [6]
- Bug report against the KIO library regarding KMountPoint API issues [24]

[1]: https://invent.kde.org/network/smb4k.git
[2]: https://security.opensuse.org/2025/12/10/smb4k-major-issues-in-kauth-h=
elper.html
[3]: https://bugzilla.suse.com/show_bug.cgi?id=3D1033300
[4]: https://bugzilla.suse.com/show_bug.cgi?id=3D1036244
[5]: https://bugzilla.suse.com/show_bug.cgi?id=3D1036245
[6]: https://bugzilla.suse.com/show_bug.cgi?id=3D1249004
[7]: https://invent.kde.org/network/smb4k/-/commit/0dea60194ab6eb8f6e34ca2e=
6cb0f97b90c46f1e
[8]: https://sourceforge.net/p/smb4k/blog/2025/12/smb4k-405-security-bug-fi=
x-release
[9]: https://invent.kde.org/network/smb4k/-/tags/4.0.4
[10]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags
[11]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags#L73
[12]: https://man7.org/linux//man-pages/man8/mount.cifs.8.html
[13]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags#L97
[14]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags#L177
[15]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags#L187
[16]: https://man7.org/linux/man-pages/man8/umount.8.html
[17]: https://invent.kde.org/frameworks/kio
[18]: https://invent.kde.org/frameworks/kio/-/tree/v6.17.0?ref_type=3Dtags
[19]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags#L163
[20]: https://invent.kde.org/frameworks/kio/-/blob/v6.17.0/src/core/kmountp=
oint.cpp?ref_type=3Dtags#L341
[21]: https://invent.kde.org/frameworks/kio/-/blob/v6.17.0/src/core/kmountp=
oint.cpp?ref_type=3Dtags#L365
[22]: https://invent.kde.org/frameworks/kio/-/blob/v6.17.0/src/core/kmountp=
oint.cpp?ref_type=3Dtags#L382
[23]: https://invent.kde.org/frameworks/kio/-/blob/v6.17.0/src/core/kmountp=
oint.cpp?ref_type=3Dtags#L267
[24]: https://bugs.kde.org/show_bug.cgi?id=3D513176
[25]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags#L205
[26]: https://invent.kde.org/network/smb4k/-/blob/4.0.4/helpers/smb4kmounth=
elper.cpp?ref_type=3Dtags#L38
[27]: https://github.com/storaged-project/udisks
[28]: https://oss-security.openwall.org/wiki/mailing-lists/distros

--=20
Matthias Gerstner <matthias.gerstner@suse.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
=20
SUSE Software Solutions Germany GmbH
HRB 36809, AG N=FCrnberg
Gesch=E4ftsf=FChrer: Jochen Jaser, Andrew McDonald, Werner Knoblich

--kImkqcALBXC1n5aG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=smb4k_mount.cpp

#include <iostream>
#include <KAuth/ExecuteJob>
#include <QFileInfo>
#include <QApplicationStatic>

/*
 * Matthias Gerstner <matthias.gerstner@suse.de>
 *
 * 2025-12-01
 *
 * Overview
 * ========
 *
 * Helper for reproducing smb4k security issues. This utility invokes the
 * mounthelper.mount D-Bus method, providing the arguments provided on the
 * command line. The action will only work when invoked from an active local
 * user session e.g. in a regular graphical session.
 *
 * Examples
 * ========
 *
 * # this shows  that the helper attempted to mount the file system on /root
 * # but failed, because the server is not available.
 * $ ./smb4k_mount smb://my.server.com/my/shared /root
 * mount failed: mount error: could not resolve address for my.server.com: Unknown error
 *
 * Compilation
 * ===========
 *
 * Compiling this standalone on openSUSE Tumbleweed requires a couple of
 * tweaks as shown below. For KF6 there exist not package config files, thus
 * switches need to be hard-coded here.
 *
 * ```
 * # install the smb4k package (not in Factory, only in KDE:Extra/smb4k)
 * $ zypper in /path/to/smb4k-4-0*.rpm
 * # install devel files for Qt and KAuth
 * zypper in kf6-kauth-devel qt6-core-devel
 *
 * g++ -std=c++17 smb4k_mount.cpp -osmb4k_mount \
 *  `pkg-config --cflags --libs Qt6Core` \
 *  -isystem /usr/include/KF6/KConfigCore -isystem /usr/include/KF6/KAuthCore \
 *  -isystem /usr/include/KF6/KCoreAddons -isystem /usr/include/KF6/KAuth \
 *  /usr/lib64/libKF6AuthCore.so.6.20.0 /usr/lib64/libKF6CoreAddons.so.6
 * ```
 */

int main(int argc, char **argv) {
	if (argc < 3) {
		std::cerr << argv[0] << " <source> <mountpoint> <options...>\n";
		return 1;
	}

	QCoreApplication app(argc, argv);
        QVariantMap args;

	args.insert(QStringLiteral("mh_command"), QStringLiteral("/sbin/mount.cifs"));
	args.insert(QStringLiteral("mh_url"), QString::fromStdString(argv[1]));
	args.insert(QStringLiteral("mh_mountpoint"), QString::fromStdString(argv[2]));

	QStringList options;
	for (int arg=3; arg < argc; arg++) {
		options << QString::fromStdString(argv[arg]);
	}
	args.insert(QStringLiteral("mh_options"), options);

        //
        // Create the mount action
        //
        KAuth::Action mountAction(QStringLiteral("org.kde.smb4k.mounthelper.mount"));
        mountAction.setHelperId(QStringLiteral("org.kde.smb4k.mounthelper"));
        mountAction.setArguments(args);

        KAuth::ExecuteJob *job = mountAction.execute();
        bool success = job->exec();
        if (success) {
            int errorCode = job->error();

            if (errorCode == 0) {
                // Get the error message
                QString errorMsg = job->data().value(QStringLiteral("mh_error_message")).toString();

                if (!errorMsg.isEmpty()) {
                    // No error handling needed, just report the error message.
			std::cerr << "mounting failed: " << errorMsg.toStdString() << "\n";
			return 1;
                }
            } else {
		std::cerr << "mounting failed with code " << errorCode << " (no error msg)\n";
		return 1;
            }
        } else {
		std::cerr << "action could not be started\n";
		return 1;
        }

	std::cout << "mounted!\n";
	return 0;
}

--kImkqcALBXC1n5aG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=smb4k_unmount.cpp

#include <iostream>
#include <KAuth/ExecuteJob>
#include <QFileInfo>
#include <QApplicationStatic>

/*
 * Matthias Gerstner <matthias.gerstner@suse.de>
 *
 * 2025-12-01
 *
 * Overview
 * ========
 *
 * Helper for reproducing smb4k security issues. This utility invokes the
 * mounthelper.unmount D-Bus method, providing the arguments provided on the
 * command line.The action will only work when invoked from an active local
 * user session e.g. in a regular graphical session.
 *
 * Examples
 * ========
 *
 * This example shows how to unmount /dev/shm. The helper will output an error
 * message but still continue operating and unmounting. Unmounting only works
 * for non-busy file systems.
 *
 * $ mount | grep /dev/shm | wc -l
 * 1
 * $ ./smb4k_unmount /dev/shm
 * Warning from helper: "The mountpoint %1 is invalid." ...
 * unmounted!
 * $ mount | grep /dev/shm | wc -l
 * 0
 *
 * Compilation
 * ===========
 *
 * Compiling this standalone on openSUSE Tumbleweed requires a couple of
 * tweaks as shown below. For KF6 there exist not package config files, thus
 * switches need to be hard-coded here.
 *
 * ```
 * # install the smb4k package (not in Factory, only in KDE:Extra/smb4k)
 * $ zypper in /path/to/smb4k-4-0*.rpm
 * # install devel files for Qt and KAuth
 * zypper in kf6-kauth-devel qt6-core-devel
 *
 * g++ -std=c++17 smb4k_unmount.cpp -osmb4k_unmount \
 *  `pkg-config --cflags --libs Qt6Core` \
 *  -isystem /usr/include/KF6/KConfigCore -isystem /usr/include/KF6/KAuthCore \
 *  -isystem /usr/include/KF6/KCoreAddons -isystem /usr/include/KF6/KAuth \
 *  /usr/lib64/libKF6AuthCore.so.6.20.0 /usr/lib64/libKF6CoreAddons.so.6
 * ```
 */

int main(int argc, char **argv) {
	if (argc < 2) {
		std::cerr << argv[0] << " <mountpoint> <options...>\n";
		return 1;
	}

	QCoreApplication app(argc, argv);
        QVariantMap args;

	args.insert(QStringLiteral("mh_command"), QStringLiteral("/bin/umount"));
	args.insert(QStringLiteral("mh_mountpoint"), QString::fromStdString(argv[1]));

	QStringList options;
	for (int arg=2; arg < argc; arg++) {
		options << QString::fromStdString(argv[arg]);
	}
	args.insert(QStringLiteral("mh_options"), options);

        //
        // Create the unmount action
        //
        KAuth::Action unmountAction(QStringLiteral("org.kde.smb4k.mounthelper.unmount"));
        unmountAction.setHelperId(QStringLiteral("org.kde.smb4k.mounthelper"));
        unmountAction.setArguments(args);

        KAuth::ExecuteJob *job = unmountAction.execute();
        bool success = job->exec();
        if (success) {
            int errorCode = job->error();

            if (errorCode == 0) {
                // Get the error message
                QString errorMsg = job->data().value(QStringLiteral("mh_error_message")).toString();

                if (!errorMsg.isEmpty()) {
                    // No error handling needed, just report the error message.
			std::cerr << "unmounting failed: " << errorMsg.toStdString() << "\n";
			return 1;
                }
            } else {
		std::cerr << "unmounting failed with code " << errorCode << " (no error msg)\n";
		return 1;
            }
        } else {
		std::cerr << "action could not be started\n";
		return 1;
        }

	std::cout << "umounted!\n";
	return 0;
}

--kImkqcALBXC1n5aG--

--hrfkbNhd3mIKCr2g
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEE82oG1A8ab1eESZdjFMQFyXGSNVMFAmk5uokACgkQFMQFyXGS
NVMVDQ/+JpeQurWCmb7AXWAmjrYx6+wrFF76J3+bIkJExiXBkZGhocgu/03X1iY/
b9Tl+LzZ4/5Mlgs0JPLiDbVVk572RsDU51J3Mly5OmrQCe389A+LgFDsjPO2n42+
EfdiKo+5F4ULCNLrb70c/zrT3nKpABZYrnxrYG+gduRZFb9WgGgZyr0NfwZOnZ4u
fLnJ/MYB/JP+ppKWO+rGcspluVRtX9iM8+KeAqNG67I42f+NBTsNNYm/XzSMGvrU
leIGy4EhVbeh8zv69L2tvM+le/8EYpQeZUVHqlarYvl3o0AcvKKg5s7ipDzB8FFW
GPOMtOsOhaehBMapBXmwAdQKv3coUl1ljZ4qthfyBryzjLNGTtJFHH1MHfJp0fri
CSCKnf65TPKrKl6ZZM/QNxfCyEmITc+VoHtbf8aeCPp15D5TK7FaxxoNPpLLLBA8
V7t2Ve6G+SFogy4FmzcRI/8lFhYJTdI956Qq4kUez64Xkyn8ohom82QiBmZfbiip
2uvpY6Fou+/MbuPaY5Y79buJAW6bOhOErs8I3pxn/66DfsfhhQyjPYkgHhH0QN98
Dz3dgHxlJ+ySTdL8DmsTtFPak+x1P0pUPkQJGVOA/yMg06KEOQp7H96vDkTCbyZu
n5/G1N3rHz9+MaouQC95o1hSpUBH+UUYlFI51p0nX0NeX2/AKPM=
=MjW1
-----END PGP SIGNATURE-----

--hrfkbNhd3mIKCr2g--
