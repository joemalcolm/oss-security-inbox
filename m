X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/24/3
Message-ID: <ac96101f-7180-4b8d-8e9e-a80e3c305c2a@geeklan.co.uk>
Date: Wed, 24 Jun 2026 13:14:28 +0100
From: Sevan Janiyan <venture37@...klan.co.uk>
To: oss-security@...ts.openwall.com
Subject: Re: libssh2: CVE-2026-55200 (critical), CVE-2025-15661 (high), CVE-2026-55199 (high)
Content-Type: text/plain; charset=utf-8

On 23/06/2026 21:24, James Addison wrote:
> The commit IDs of the fixes for each of the vulnerabilities,
> respectively, as found in the GitHub libssh2/libssh2.git repository,
> are:
> 
> - 2dae3024897e1898d389835151f4e9606227721d
> - 17626857d20b3c9a1addfa45979dadcee1cd84a4
> - 97acf3dfda80c91c3a8c9f2372546301d4a1a7a8

Just as a heads up, libssh2 1.11.1 was release October 2024 and the 
patch for src/sftp.c does not apply cleanly to the release.

> [1] -https://digital.nhs.uk/cyber-alerts/2026/cc-4799

This url point to https://github.com/advisories/GHSA-R8MH-X5QV-7GG2 as 
the "Definitive source of threat updates" which references another 
commit separate from the hashes above

https://github.com/libssh2/libssh2/commit/97acf3dfda80c91c3a8c9f2372546301d4a1a7a8
via
https://github.com/libssh2/libssh2/pull/2052
"transport.c: Additional boundary checks for packet length"

Sorry, too busy melting to provide a patch against 1.11.1 release. :(

Sincerely,

Sevan
