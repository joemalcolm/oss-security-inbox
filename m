X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/04/25/1
Message-ID: <aeygshq_JaijQUUm@definition.pseudorandom.co.uk>
Date: Sat, 25 Apr 2026 12:08:34 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: bubblewrap CVE-2026-41163: Privilege escalation if setuid root, via ptrace
Content-Type: text/plain; charset=utf-8

https://github.com/containers/bubblewrap/security/advisories/GHSA-xq78-7hw4-5jvp
Vulnerable: bubblewrap >= 0.11.0 if installed setuid
Fixed: bubblewrap >= 0.11.2
Not believed to be vulnerable: bubblewrap < 0.11.0

If bubblewrap 0.11.0 or 0.11.1 is installed in setuid mode, then the 
user can use ptrace to attach to bubblewrap and control the unprivileged 
part of the sandbox setup phase. This allows a local attacker to 
arbitrarily use the privileged operations, and in particular the 
"overlay mount" operation, allowing the creation of overlay mounts which 
is otherwise not allowed in the setuid version of bubblewrap.

A mitigation is that most Linux distributions do not install bubblewrap 
as setuid root. This was historically done on distros where a hardened 
or feature-limited kernel did not allow unprivileged users to create new 
user namespaces, mainly Debian <= 10 and RHEL <= 7. Debian >= 11 and 
RHEL >= 8 already switched to installing bubblewrap as non-setuid, which 
is the recommended configuration.

Arch Linux has a non-default bubblewrap-suid package, intended for use 
with their non-default linux-hardened kernel package, which would have 
been vulnerable to this attack (it was fixed earlier today). Similarly, 
unfixed versions of Gentoo's bubblewrap package would be vulnerable if 
built with the "suid" USE flag. Any distro's bubblewrap packages of an 
affected version would be vulnerable if the local sysadmin had manually 
set the executable to be setuid root.

The bubblewrap maintainers recommend that it should not be installed 
setuid root. By default the 0.11.2 release will refuse to run if it 
detects that it is setuid, but for backward compatibility it has a 
build-time option that will allow the setuid mode. As a hardening 
measure, the next upstream release (0.12.0) will remove the build-time 
option, and instead, unconditionally refuse to run when setuid.

The older vulnerabilities CVE-2020-5291 and CVE-2016-8659 were similarly 
only relevant when installed setuid root, and were avoided by the 
recommended configuration.

Thanks to fdiakh for reporting this vulnerability and helping to address 
it.
