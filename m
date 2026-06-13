X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/13/2
Message-ID: <2026-06-13-wimpy-renewed-taboos-prints-pXamDo@cyphar.com>
Date: Sat, 13 Jun 2026 19:39:08 +0200
From: Aleksa Sarai <cyphar@...har.com>
To: oss-security@...ts.openwall.com, security-announce@...ncontainers.org
Subject: CVE-2026-41579: runc allows a malicious image with a /dev symlink to trigger limited host filesystem integrity violations
Content-Type: text/plain; charset=utf-8

This is a PUBLIC release of a low-severity vulnerability in runc which
has been fixed in runc 1.3.6, runc 1.4.3, and runc 1.5.0-rc.3. There was
NO EMBARGO WINDOW for this vulnerability, as our analysis was that the
threat of this issue was not severe and we noticed that a similar issue
was publicly fixed in crun[1].

Based on our analysis, this vulnerability has a score of 3.3 (Low) with
a CVSSv3 vector of CVSS:3.1/AV:L/AC:L/PR:N/UI:R/S:U/C:N/I:L/A:N.

[1]: https://github.com/containers/crun/security/advisories/GHSA-7vwr-4279-7gq5

/* Impact */

When setting up the container rootfs, setupPtmx and setupDevSymlinks
call os.Remove and os.Symlink with a filepath.Join string which allow an
image with /dev as a symlink to trick runc into deleting files called
ptmx on the host or creating a hardcoded set of symlinks with specific
names and targets in an arbitrary pre-existing host directory.

Please note that this issue is not exploitable under Docker because it
creates a top-level ro layer that masks any malicious /dev symlink
present in the container image (this is also done without mounting the
lower layers so there is no opportunity for the malicious /dev symlink
to trick it into resolving to some other path). Unfortunately, Podman
and containerd† do not do this and so users using those higher-level
runtimes with runc can be exploited via a malicious image.

This issue mirrors a somewhat similar issue in crun, which was also
published recently (CVE-2026-47766).

† Actually, at the time we analysed this issue, containerd had dead code
that implemented this feature but the implementation contained several
security issues that would arguably have made it more exploitable than
in runc. Luckily, the code appears to have never been used (at least
since 2017) and the code has since been removed[2].

[2]: https://github.com/containerd/containerd/issues/13238

/** Mitigating Factors **/

There are a few mitigating factors about this issue which reduce the
impact for most users quite significantly, and is the reason why we
decided to release the fix publicly without an embargo.

While the deletion of "ptmx" seems like a significant issue, in practice
it is quite limited. Notably, devpts does not permit you to unlink
/dev/pts/ptmx regardless of privileges and so it is not a usable target
for this attack. Additionally, while /dev/ptmx can be unlinked‡, trying
to use an image with a symlink from /dev to /dev will cause runc will
return an error before it reaches the buggy code (it correctly detects a
symlink loop while setting up the mount target and the code correctly
scopes the lookup inside the container). Thus, the only files called
ptmx that are guaranteed to exist on the system cannot actually be
removed by this bug and so only some user file that happens to have that
specific name could be deleted, which seems fairly unlikely to happen on
real systems.

As for the issue of symlinks, again the impact is likely quite limited.
While the creation of arbitrary symlinks could be used to create drop-in
files for system services (and thus lead to a container breakout), the
hardcoded set of symlink names and targets that this bug allows you to
create on the host make it quite unlikely that you would be able to do
much more than pollute the host system with dummy symlinks. Here is the
complete list of symlinks that can be created with this attack:

 * core → /proc/kcore
 * fd → /proc/self/fd/
 * ptmx → pts/ptmx
 * stdin → /proc/self/fd/0
 * stdout → /proc/self/fd/1
 * stderr → /proc/self/fd/2

Note that none of these symlinks are likely to point to user-controlled
data -- the /proc/self/fd/$n symlinks are all properties of the process
accessing them (so privileged processes will only see the state they
were spawned with) and the pts/ptmx symlink is almost certainly in the
same privilege scope as the directory the symlink itself is in. It seems
the only somewhat plausible impact would be that a service could return
an error when trying to parse one of these symlinks and thus treat it as
an invalid configuration file. How arbitrary processes deal with this
situation is a bit hard to analyse, but most daemons require
configuration files to have certain suffixes (such as .conf) so it's not
really clear how large the impact is in practice and it seems there are
a few barriers to clear to use this to cause a DoS or other problems.

‡ This would actually be quite problematic if it could occur because
glibc seemingly only attempts to use /dev/ptmx when creating new
terminals and thus most terminal managers (including tmux) and shell
tools (including sudo -- but not su) would fail to start and thus bring
the system to a halt. setupPtmx does add a symlink to /dev/pts/ptmx
afterwards but on some systems the mode of the host /dev/pts/ptmx is set
to 0o000 which would still cause the same DoS issue.

/* Mitigations */

Using user namespaces restricts this attack fairly significantly such
that the attacker can only create/delete inodes in directories that the
remapped root user/group has write access to. Unless the root user is
remapped to an actual user on the host (such as with rootless containers
that don't use "/etc/sub[ug]id"), this in practice means that an
attacker would only be able to create or delete inodes in world-writable
directories.

LSMs can restrict the scope of where in the host filesystem runc can be
tricked into operating on, though how much this helps is questionable.
The default "container_runtime_t" SELinux label rules (or custom
AppArmor rules for the host "runc" context) may restrict the scope where
these filesystem operations can operate on, but we have not done an
in-depth analysis on the impact of those kinds of LSM protections.

/* Patches */

This issue has been patched in runc 1.3.6, runc 1.4.3, and runc
1.5.0-rc.3. The patches which resolve this issue on main are:

 * 864db8042dbb ("rootfs: make /dev initialisation code fd-based")
 * 66acd48f9d42 ("rootfs: make cgroupv1 subsystem symlinks fd-based")

Unfortunately, backporting them to apply cleanly on top of runc 1.3.5
and runc 1.4.2 requires quite a few other backports that would bloat the
set of patches included here. It is almost certainly easier for users to
just update to the latest patch release (which is our general
recommendation for any security release anyway).

/* Credits */

Thanks to "Davias" for initially finding and reporting this issue. The
same underlying issue (with varying levels of completeness) was later
reported by Arthur Chan (@arthurscchan from Ada Logics), Junyi Liu
(@mosskappa), and Derek Manzella (@Dmanzella).

-- 
Aleksa Sarai
Founding Engineer at Amutable
https://www.cyphar.com/

Download attachment "signature.asc" of type "application/pgp-signature" (266 bytes)
