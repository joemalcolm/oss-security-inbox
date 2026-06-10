X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/10/15
Message-ID: <CAPC5pGQxmCywhxd0RkWvahFf5-QKdMLn6xGa9f1AF6dTrxRCNw@mail.gmail.com>
Date: Wed, 10 Jun 2026 20:05:35 +0200
From: Thomas GERBET <thomas@...bet.me>
To: oss-security@...ts.openwall.com
Subject: Re: Local privilege escalation in Lix and Nix
Content-Type: text/plain; charset=utf-8

Hello everyone,

The Lix issue has been assigned CVE-2026-44028
(CVSS:3.1/AV:L/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N).
The Lix team has published a detailed blog post about it here for
those of you wanting extra details:
https://lix.systems/blog/2026-05-05-lix-unsigned-integer-overflow/

We are currently having some troubles getting this CVE split from the
Nix issue GHSA-vh5x-56v6-4368 and updated accordingly.
While both vulnerabilities could lead to similar compromises and were
discovered around the same time, they do not share the same root
cause.


The other Nix vulnerability, GHSA-gr92-w2r5-qw5p, has been assigned
CVE-2026-44029.

Le lun. 4 mai 2026 à 23:06, Thomas GERBET <thomas@...bet.me> a écrit :
>
> ## Summary
>
> Nix and Lix daemon implementations are affected by buffer overflows vulnerabilities that allow a local attacker to gain arbitrary
> code execution as the daemon user (root in multi-user installations).
>
> The vulnerabilities are identified as:
> - Nix: GHSA-vh5x-56v6-4368, CVE ID pending attribution.
> - Lix: CVE ID pending attribution.
>
> This is a coordinated disclosure between the Nix and Lix projects.
>
> Guix is *NOT* affected by this vulnerability.
>
> ## Am I affected?
>
> To exploit this issue, a local attacker needs access to talk to the Nix daemon. All systems that allow connections to their daemons are affected.
> Only users that are allowed to connect to the daemon (via `allowed-users` and `trusted-users`) can reliably trigger the issue. Substituters can
> in theory trigger the issue but cannot make enough attempts to mount attacks in practice.
>
> Additionally, this vulnerability requires ASLR weakening techniques to lead to a compromise.
>
> ## Fixes
>
> The vulnerabilities are fixed in the following versions:
>
> - Nix:
>   - Affected versions: ≥ 2.24.4
>   - Fixed versions: 2.34.7, 2.33.6, 2.32.8, 2.31.5, 2.30.5, 2.29.4, 2.28.7
>
> Nix security release also includes patches that address an unrelated path traversal vulnerability GHSA-gr92-w2r5-qw5p (CVE ID pending attribution).
>
> - Lix:
>   - Affected versions: ≥ 2.93.0
>   - Fixed versions: 2.93.4, 2.94.2, 2.95.2
>
> ## Acknowledgement
>
> - We would like to thank @edef with the help of Sander (@sandydoo) for reporting the issues and working with the development teams to suggest and confirm the fixes.
> - Thanks to eldritch horrors (@pennae) and Raito Bezarius (@RaitoBezarius) on the Lix side for the mitigation.
> - Thanks to @xokdvium on the Nix side for the mitigation.
> - Thanks to @hexa and @tgerbet on the NixOS security team for coordinating this.
>
> ## References
>
> * https://discourse.nixos.org/t/security-advisory-local-privilege-escalation-in-lix-and-nix/77407
> * Nix issues:
>   - https://github.com/NixOS/nix/security/advisories/GHSA-vh5x-56v6-4368
>   - https://github.com/NixOS/nix/security/advisories/GHSA-gr92-w2r5-qw5p
> * Lix in-depth review blog post: not yet published
