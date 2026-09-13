X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/9
Message-ID: <9f53aa48-8829-b64a-1d12-cf10df747efc@apache.org>
Date: Sun, 13 Sep 2026 05:45:54 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82429: Apache Storm Worker Launcher: Local Privilege Escalation to Root via a Time-of-Check Race in the Worker Launcher 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Worker Launcher (org.apache.storm:storm-core) 3.0.0 before 3.1.0

Description:

Description

The setuid-root `worker-launcher` binary adjusts ownership and permissions of worker directories by walking
the tree with FTS and calling `lchown` and `chmod` on each entry's full pathname while running with an
effective uid of 0. Both syscalls re-resolve the path at the time of the call, after FTS has classified the
entry, and the trees being walked are owned and writable by the untrusted topology user.

A tenant running code on a supervisor node could therefore replace an intermediate directory component with
a symbolic link between classification and the privileged operation, redirecting the root-owned `lchown` or
`chmod` at an arbitrary file on the host. The operation is repeatable at will, since crashing a worker
forces a relaunch and blob updates re-run the walk, so a failed attempt costs the attacker nothing.

This crosses the boundary that `supervisor.run.worker.as.user` and container isolation are intended to
enforce. It is the same defect class as the Hadoop container-executor issues from which this code derives.

Mitigation

Upgrade to 3.1.0, where the privileged walk operates on file descriptors it has already stat'd rather than
on pathnames re-resolved at call time.

Users who cannot upgrade immediately should not run untrusted topology code on supervisors configured with
`supervisor.run.worker.as.user`, since the launcher is the boundary being crossed. Note that the launcher
must be rebuilt and reinstalled after upgrading; replacing the Java artifacts alone is not sufficient.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82429

