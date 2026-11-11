X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/11/11/27
Message-ID: <CAOGQQ2-6Y2NUu3iwJm1Zm60xGgRFQydifAgRDpPwmg549Wjijw@mail.gmail.com>
Date: Wed, 11 Nov 2026 17:05:36 -0300
From: Marco Benatto <mbenatto@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-108472 - xfs_admin allows for OS command injection
Content-Type: text/plain; charset=utf-8

Hello all,

on behalf of Red Hat Product Security team I'm disclosing a flaw in
the xfs_admin utility
present in the xfsprogs suite, where xfs_admin lacks use input validation.

This allows OS command injection and under certain circumstances,
results in local privilege escalation.

Red Hat Product Security has assigned CVE-2026-108472 for this issue,
with the severity of Important and the following CVSSv3.1 scoring:

7.8 CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

The upstream patch has been posted at:
https://lore.kernel.org/linux-xfs/20261111151107.3884786-2-aalbersh@kernel.org/T/#u

In general xfs_admin is executed with non administrative privileges
however under certain circumstances, for example when udisks is
calling it,
it may be called with `root` privilege resulting in a local privilege
escalation.

Description:
A flaw was found in the xfs_admin utility in xfsprogs. The tool does
not properly validate user-supplied parameters, allowing operating
system command injection. A local attacker can exploit this issue by
providing crafted input arguments, which may result in arbitrary
command execution and local privilege escalation depending on how
xfs_admin is executed.

Severity:
Important

CVSSv3.1:
7.8 CVSS:3.1/AV:L/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H

Red Hat's Impact Statement:
This vulnerability is rated as Important because unauthorized local
users who are able to supply parameters to xfs_admin through
administrative delegation or automated provisioning tools can achieve
arbitrary command execution and privilege escalation. On standard Red
Hat Enterprise Linux installations, storage maintenance utilities are
restricted to administrative accounts, preventing direct exposure to
unprivileged users. However, in environments where untrusted inputs
are passed to xfs_admin without proper validation, an attacker can
compromise the host with the permissions of the executing process.

Acknowledgement:
Red Hat would like to thank  Hazley Samsudin of GovTech CSG for
responsably reporting this issue

Don't hesitate to reach out if you have any further doubts or concerns.

Marco Benatto
Red Hat Product Security
secalert@...hat.com for urgent response

