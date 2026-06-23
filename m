X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/23/10
Message-ID: <CAF3AkiO-wQNc=ibGB0hGXbea+fCejZqzOAmxE+yX6y67hyBbDA@mail.gmail.com>
Date: Tue, 23 Jun 2026 20:24:25 +0000
From: James Addison <james@...iperadar.com>
To: oss-security@...ts.openwall.com
Subject: libssh2: CVE-2026-55200 (critical), CVE-2025-15661 (high), CVE-2026-55199 (high)
Content-Type: text/plain; charset=utf-8

Hello list,

With credit to the NHS Digital Cyber security team for publishing[1] a
notice about CVE-2026-55200 that alerted me to these:

Three vulnerabilities in libssh2 - a popular client library for the
Unix secure shell protocol (aka SSH) - have been published as CVEs:

- High severity, 8.3 rating: CVE-2025-15661
- High severity, 8.2 rating: CVE-2026-55199
- Critical severity, 9.2 rating: CVE-2026-55200

The vulnerabilities affect versions up-to-and-including v1.11.1 of the
libssh2 library.

Patches/commits fixing each of the vulnerabilities are available and
have been merged into the libssh2 mainline development source control
branch.

A release containing these fixes is under preparation.

For reference:

The commit IDs of the fixes for each of the vulnerabilities,
respectively, as found in the GitHub libssh2/libssh2.git repository,
are:

- 2dae3024897e1898d389835151f4e9606227721d
- 17626857d20b3c9a1addfa45979dadcee1cd84a4
- 97acf3dfda80c91c3a8c9f2372546301d4a1a7a8

Regards,
James

[1] - https://digital.nhs.uk/cyber-alerts/2026/cc-4799

--
OpenCulinary C.I.C. is a Community Interest Company, number SC647817,
registered in Scotland, United Kingdom and with registered company
address The Melting Pot, 15 Calton Road, Edinburgh, Scotland, EH8 8DL.
