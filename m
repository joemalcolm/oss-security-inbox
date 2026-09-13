X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/10
Message-ID: <d9b0c799-c41c-7f2a-63e4-35881ff08857@apache.org>
Date: Sun, 13 Sep 2026 05:46:02 +0000
From: Richard Zowalla <rzo1@...che.org>
To: oss-security@...ts.openwall.com
Subject: CVE-2026-82430: Apache Storm Worker Launcher: Local Privilege Escalation to Root via Container Command Files Chowned to the Tenant 
Content-Type: text/plain; charset=utf-8

Severity: important 

Affected versions:

- Apache Storm Worker Launcher (org.apache.storm:storm-core) 3.0.0 before 3.1.0

Description:

Description

When launching a Docker or OCI worker, the setuid-root `worker-launcher` first changes ownership of the
entire worker directory to the untrusted topology user, and only afterwards reads and acts on the command
file that the supervisor wrote into that same directory. The file is opened without `O_NOFOLLOW` and without
re-verifying its owner, so between the ownership change and the read the tenant can replace its contents.

For the Docker path the parsed command is executed with real uid 0, and the command sanitiser is not a
privilege boundary: it admits `-v` with an arbitrary source, `--device`, `--cap-add`, `--security-opt`,
`--user` and `--net`, and copies positional arguments through verbatim. A rewritten file therefore yields an
attacker-authored, root-equivalent container invocation with the host filesystem available.

For the OCI path the same rewrite window applies, and mount validation is structural only, with no
source or destination allow-list, so arbitrary host paths can be bind-mounted read-write into the
container. The `username` field of the command file is likewise attacker-settable and is checked only
against non-root and minimum-uid rules, permitting execution as another tenant's uid.

Mitigation

Upgrade to 3.1.0, where the command file is validated before the ownership change and re-verified on open,
and where mount sources and destinations are constrained by configuration.

Users who cannot upgrade immediately should disable Docker and OCI worker isolation, or restrict topology
submission on affected supervisors to trusted principals. Note that the launcher must be rebuilt and
reinstalled after upgrading.

Credit

The ASF -- found using Claude agents to study the security of open-source projects, validated and reported by Apache Storm.

Credit:

The ASF using Claude Agents (finder)

References:

https://storm.apache.org/
https://www.cve.org/CVERecord?id=CVE-2026-82430

