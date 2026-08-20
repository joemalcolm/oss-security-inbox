X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/20/4
Message-ID: <87o6exv5pn.fsf@gentoo.org>
Date: Thu, 20 Aug 2026 04:19:48 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Multiple vulnerabilities fixed in libgit2-1.9.5, 1.9.7
Content-Type: text/plain; charset=utf-8

Hi,

libgit2-1.9.5 fixes several vulnerabilities [0]:
"""
    Fix for blame error handling on hunk creation failures

    Fix for potential PCRE memory access: 1-byte heap-buffer-overflow WRITE in bundled PCRE 8.45 reachable via revspec

🔒 This is a security release with multiple changes.

    This vulnerability was identified by @DavidKorczynski.

    hunk_from_entry can return NULL on error; handle that and
    return an error.

    libgit2's builtin HTTP transport follows offsite redirects for the initial smart HTTP request by default. If the redirected server then
    returns 401 Unauthorized, libgit2 asks the application credential callback for credentials using the original remote URL, not the redirected URL. The returned credential is then attached to the next request to the redirected host as an Authorization header.

    git_revparse_single accepts revspecs of the form :/<pattern> (the "grep by commit message" shorthand) and forwards <pattern> directly to libgit2's regex backend. When libgit2 is using its builtin regular expression engine, this causes a heap buffer overflow.

    Fix for CVE-2026-53587: libgit2 version 1.9.4 and below is vulnerable to a heap out-of-bounds read in set_data in src/libgit2/transports/smart_pkt.c.

    Fix for CVE-2026-53586: give auth callback current host

    This vulnerability was identified by @manop55555, and CVE-2026-53587 was issued for this vulnerability.

    This vulnerability was identified by @sondt99, and CVE-2026-53586 was issued for this vulnerability.

    Potential denial of service because git_delta_apply reads the claimed result size (res_sz) from the delta object header — data entirely controlled by the sender — and immediately allocates a buffer of that size.

    When given capabilities, we check for the object-format capability; we need to ensure that the current packet buffer is large enough before actually doing the check.

    Fix for CVE-2026-53584: submodule: check paths for escaping

    Fix for CVE-2026-53585: Unbounded Memory Allocation via Delta Object Result-Size Header

    This vulnerability was identified by @sectroyer, and CVE-2026-53584 was issued for this vulnerability.

    This vulnerability was identified by Michał Majchrowicz and Marcin Wyczechowski, members of the AFINE Team, and CVE-2026-53585 was issued for this vulnerability.

    An inverted comparison in the OpenSSL TLS backend causes IP SubjectAltName (SAN) verification to accept certificates with mismatched IP addresses and reject certificates with correct IP addresses. This allows a network attacker with a valid CA-signed certificate containing any IP SAN to perform MITM attacks against libgit2 clients connecting to IP-literal HTTPS URLs.

    A crafted repository with a submodule whose path contains traversal components (e.g. "../") can cause the library to create directories outside the repository's working tree.

    This vulnerability was identified by @pavelkohout396, and CVE-2026-53583 was issued for this vulnerability.

    Fix for CVE-2026-53583: inverted IP SubjectAltName comparison in OpenSSL backend.

All users of the v1.8 release line are recommended to upgrade.

libgit2 thanks the reporters of these issues for their responsible disclosure.
"""

(I'm sorry for not reformatting but if I were to impose that constraint
upon myself for every such announcement, it would likely deter me from
posting at least in some cases.)

Out of those, CVE-2026-53587 and CVE-2026-53584 seem the most
significant.

Further, in 1.9.7 [1], there is another escape fix:

"""
    Escape remote repository paths in libssh2

    In v1.8.5, we started escaping repository paths in the OpenSSH-based exec ssh transport. Bring the same escaping to the libssh2 transport to avoid any potential command injection.

This is a security release with one change.

In addition, changes have been ported from the main branch to update CI builds.

Thank you to @izzy0101010101 for responsibly disclosing this issue to us, and thank you to @sgallagher for the fix. This bug was identified as CVE 2026-5917 by an unrelated third party.
"""

I believe 1.8.6 and 1.8.7 have equivalent fixes for the 1.8.x branch.

[0] https://github.com/libgit2/libgit2/releases/tag/v1.9.5
[1] https://github.com/libgit2/libgit2/releases/tag/v1.9.7

thanks,
sam

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
