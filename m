X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/22/4
Message-ID: <amCQIMF5SWDeEp7R@kasco.suse.de>
Date: Wed, 22 Jul 2026 11:40:47 +0200
From: Matthias Gerstner <mgerstner@...e.de>
To: oss-security@...ts.openwall.com
Subject: PortProtonQt: Custom Polkit Rule Allows Escalation of NetworkManager and UDisks2 Privileges (CVE-2026-59678)
Content-Type: text/plain; charset=utf-8

Hello list,

this is a report about a Polkit authentication bypass made possible by
Polkit rules installed by PortProtonQt. We also offer a rendered HTML
version of this report on our blog [1].

Summary: PortProtonQt is a GUI application to simplify launching of
Windows games on Linux. A review of a custom Polkit rule installed by
PortProtonQt uncovered an attack vector which allows arbitrary local
users to modify NetworkManager connections or UDisks2 mounts.

1) Introduction
===============

PortProtonQt [2] is a GUI application to simplify launching of Windows
games on Linux. A review of a custom Polkit rule [3] installed by
PortProtonQt uncovered an attack vector which allows arbitrary local
users to modify NetworkManager connections or UDisks2 mounts.

This report is based on version 1.3.0 [4] of PortProtonQt. A
bugfix is available in the newly released version 1.3.1 [5].

2) Insecure Polkit Rule
=======================

PortProtonQt installs a Polkit rules file
`ru.linux_gaming.PortProtonQt.rules` [6] containing the following logic:

```
var cmd_line = polkit.spawn(["ps", "-o", "args=", "-p", String(subject.pid)]);
var ppid = polkit.spawn(["ps", "-o", "ppid=", "-p", String(subject.pid)]).trim();
var parent_cmd_line = "";
if (ppid) {
    parent_cmd_line = polkit.spawn(["ps", "-o", "args=", "-p", ppid]);
}
var is_ppqt_call = cmd_line.includes("ppqtos") || parent_cmd_line.includes("ppqtos");

if (( action.id === "org.freedesktop.NetworkManager.settings.modify.system" ||
        action.id == "org.freedesktop.udisks2.filesystem-mount-system" ||
        action.id == "org.freedesktop.udisks2.filesystem-mount-other-seat" ||
        action.id == "org.freedesktop.udisks2.filesystem-unmount-others" ) && is_ppqt_call) {
    return polkit.Result.YES;
}
```

The code inspects the requesting process's command line as reported by
the `ps` utility, aiming to grant additional privileges to the `ppqtos`
program.  This is on one hand subject to race conditions, because the
PID used by the requestor can be recycled or replaced by other programs
by the time the Polkit rule runs. On the other hand, the process command
line can be influenced arbitrarily to fake a `ppqtos` process.

We developed a simple shell script reproducer (TODO XXX attached to this email XXX TODO) which
shows that the exploitation of this vulnerability is simple and always
succeeds. The vulnerability allows arbitrary local users to meddle with the
network settings via NetworkManager and mount/unmount file systems via udisks.
We could not spot a full local root exploit in that, although it is getting
close. The impact is mostly Denial-of-Service and system integrity:

- arbitrary block devices can be mounted (but not in arbitrary locations, only
  under `/run/media`).
- arbitrary block devices can be unmounted (unless in use, but independent of
  their mount location).
- arbitrary NetworkManager connections can be removed and created, violating
  network integrity.

3) Bugfix
=========

Upstream fixed the issue in commit f0ab40a2d [7] which is part of
a 1.3.1 bugfix release [5]. Upstream followed our suggestion to
allow these extra Polkit actions only for users in an active local session
which are members of a dedicated `portprotonqt` group. This way the
authentication bypass is restricted to interactive users that opt-in to using
this feature.

The issue was introduced in PortProtonQt version 0.1.12 [8]
via commit 71a8ebd89 [9].

4) CVE Assignment
=================

In agreement with upstream we assigned CVE-2026-59676 to track this issue.

5) Timeline
===========

|2026-07-06|We reached out to the lead developer of PortProtonQt via email, offering coordinated disclosure.|
|2026-07-10|With no response, we sent a follow-up email asking for feedback until July 17 lest we publish without coordination.|
|2026-07-15|Still without reply we reached out to yet another developer documented in the upstream README.md, asking whether the lead developer contact is still valid.|
|2026-07-15|We got a response pointing out that the Polkit rules file needs not to be installed for the package to function, but no details regarding the coordinated disclosure or a bugfix.|
|2026-07-16|We sent the full report once more to the second mail contact, pointing out that a security issue is at hand.|
|2026-07-16|Upstream informed us about the public bugfix [7], implying that no coordinated disclosure is desired. Upstream also asked us to assign a CVE for the issue.|
|2026-07-17|We assigned CVE-2026-59678 and shared it with upstream.|
|2026-07-22|Publication of this report.|

6) References
=============

- PortProtonQt GitHub project [2]
- PortProtonQt 1.3.1 bugfix release [5]
- openSUSE review bug for PortProtonQT Polkit rule [3]
- Reproducer for the issue (TODO XXX attached to this email XXX TODO)

[1]: https://security.opensuse.org/2026/07/22/port-proton-qt-polkit-rules.html
[2]: https://github.com/Boria138/PortProtonQt
[3]: https://bugzilla.suse.com/show_bug.cgi?id=1270218
[4]: https://github.com/Boria138/PortProtonQt/releases#release-v1.3.0
[5]: https://github.com/Boria138/PortProtonQt/releases/tag/v1.3.1
[6]: https://github.com/Boria138/PortProtonQt/blob/v1.3.0/build-aux/share/polkit-1/rules.d/ru.linux_gaming.PortProtonQt.rules
[7]: https://github.com/Boria138/PortProtonQt/commit/f0ab40a2dab36ce91bc7e1b13d8d4ea220e5107c
[8]: https://github.com/Boria138/PortProtonQt/releases/tag/v0.1.12
[9]: https://github.com/Boria138/PortProtonQt/commit/71a8ebd89a503e692cdc6b40777e8cc22393c87b

Best Regards

Matthias

-- 
Matthias Gerstner <matthias.gerstner@...e.de>
Security Engineer
https://www.suse.com/security
GPG Key ID: 0x14C405C971923553
 
SUSE Software Solutions Germany GmbH
HRB 36809, AG Nürnberg
Geschäftsführer: Jochen Jaser, Andrew McDonald

Download attachment "portprotonqt-reproducer.gz" of type "application/gzip" (763 bytes)

Download attachment "signature.asc" of type "application/pgp-signature" (871 bytes)
