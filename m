X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/10/14/1
Message-ID: <43115c9c-d74c-49af-81d9-7eb050e08e84@oracle.com>
Date: Tue, 13 Oct 2026 18:15:57 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Hex 2.5.2 released with security fixes
Content-Type: text/plain; charset=utf-8

https://github.com/hexpm/hex/releases/tag/v2.5.2 lists:
> Bug fixes
> ---------
> 
>  * Fail with the download error instead of crashing in mix hex.package
>    fetch when the version isn't in the registry but a copy of it is cached
>  
>  * Fetch the docs of organization packages in mix.lock with mix
>    hex.docs fetch. They were requested from an organization named
>    after the repository, such as hexpm:myorg, and never found.
>    Packages from other repositories are skipped with a warning
>  
>  * Reject package and organization names that hex.pm doesn't accept
>    and invalid versions in mix hex.docs. A version such as
>    1.0.0/../../x on the command line or in mix.lock made mix hex.docs
>    fetch write docs outside the docs directory
> 
> Security fixes
> --------------
> 
>  * Trust only the CA certificates in cacerts_path (HEX_CACERTS_PATH)
>    when it's set. Hex also accepted a server certificate chain that
>    led to a CA in its bundled store, so every bundled CA could still
>    authenticate Hex's servers (GHSA-rw8q-hg7m-cxgr, CVE-2026-103503)
> 
>  * Don't trust copies of CA certificates sent by the server. Hex
>    accepted a server-sent certificate with the same public key as a CA
>    in the CA store in place of that CA, so a server could send a copy
>    of an expired CA certificate with a later expiry date
>    (GHSA-rw8q-hg7m-cxgr, CVE-2026-103503)
> 
>  * Verify the registry checksum of the package tarball that mix
>    hex.package fetch PACKAGE VERSION --output - writes to standard
>    output, so a mirror can't substitute the package, and print the
>    command's messages to standard error, so standard output only
>    carries the tarball. Error responses and warnings from the mirror
>    were printed to standard output before the tarball. With --output
>    DIR the tarball is no longer written when its checksum doesn't
>    match (GHSA-98jr-23pm-vj7c, CVE-2026-105280)
> 
>  * Keep applying the release-age cooldown to a package when its locked
>    release is retired. Retiring a release takes the same package owner
>    permission as publishing one, so retiring the locked release let a
>    new release skip the cooldown. A locked release with a security
>    advisory still lifts the cooldown for its package and for the
>    direct dependencies of the locked release. When newer versions of a
>    retired locked release are filtered by the cooldown, mix deps.get
>    and mix deps.update say that the locked release is retired and show
>    the command to update without the cooldown, and mix hex.outdated
>    marks the update with (cooldown) and no longer exits with a
>    non-zero status for it (GHSA-pqhp-5x9x-69h7, CVE-2026-105668)
> 
>  * Only lift the release-age cooldown for a locked package in the
>    repository it's locked from. A locked package also lifted the
>    cooldown for packages with the same name in other repositories,
>    such as an organization repository and hexpm (GHSA-pqhp-5x9x-69h7,
>    CVE-2026-105668)
> 
>  * Stop downloading a registry file, package, docs tarball or other
>    file from a repository or mirror once it's larger than 16 MiB,
>    including after decompressing a gzip-encoded response. A package
>    mirror could make Hex use any amount of memory or disk before the
>    registry signature or package checksum was checked. Responses with
>    a status other than 200 are limited the same way on OTP 27.3.4.17,
>    28.5.0.6, 29.0.6, 29.1 or later when they have a Content-Length
>    header or chunked encoding, and are otherwise still read in full
>    (GHSA-gf42-pg2f-63jp, CVE-2026-96618)
> 
>  * Stop decompressing a gzip-encoded API response once it's larger
>    than 64 MiB. A small response could make Hex use any amount of
>    memory (GHSA-gf42-pg2f-63jp, CVE-2026-96618)
> 
>  * Check a package against the registry checksum before writing it to
>    the package cache and before unpacking a cached copy, including in
>    offline mode and when fetching the package fails. A cached package
>    that doesn't match the registry is removed instead of being
>    unpacked (GHSA-gf42-pg2f-63jp, CVE-2026-96618)
> 
>  * Apply the 16 MiB compressed and 128 MiB uncompressed size limits
>    for docs to mix hex.docs fetch and mix hex.docs offline
>    (GHSA-gf42-pg2f-63jp, CVE-2026-96618)
> 
>  * Stop decompressing a registry file once its contents are larger
>    than 16 MiB, before its signature is checked, and reject compressed
>    Erlang terms in API responses. A mirror could send a small registry
>    file, and an API server a small response, that decompressed to any
>    size (GHSA-7c4r-cgf9-9jmq, CVE-2026-105274)
> 
>  * Skip package releases that give a dependency an application name
>    other than a letter followed by letters, digits, _ and -, such as
>    ../name, and warn about them when resolving
>    dependencies. Resolution fails if no other release of the package
>    fits the requirements. Hex used the application name as the
>    dependency's directory, so such a release could make mix deps.get
>    delete and replace a directory outside deps/ (GHSA-2vjj-c5hr-6xc3,
>    CVE-2026-96612)
> 
>  * Escape terminal control characters in text from hex.pm and the
>    registry before printing it, such as package descriptions and
>    links, retirement messages, security advisories, search results and
>    error messages. A package publisher could otherwise send escape
>    sequences that clear the screen, rewrite earlier output or set the
>    clipboard in terminals that support it. A dependency in the
>    registry whose package or repository name isn't a valid name is now
>    rejected (GHSA-fpmj-3cxg-p766, CVE-2026-81856)

The listed GHSA ids can be found on:
https://github.com/hexpm/hex/security/advisories

-- 
         -Alan Coopersmith-                 alan.coopersmith@...cle.com
          Oracle Solaris Engineering - https://blogs.oracle.com/solaris

