X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/27/7
Message-ID: <apC0ZALTQNxF-H2c@definition.pseudorandom.co.uk>
Date: Thu, 27 Aug 2026 23:04:20 +0100
From: Simon McVittie <smcv@...ian.org>
To: oss-security@...ts.openwall.com
Subject: bubblewrap 0.12.0 fixes writes outside sandbox
Content-Type: text/plain; charset=utf-8

bubblewrap 0.12.0 fixes a security vulnerability
involving symlink traversal during container setup:
<https://github.com/containers/bubblewrap/security/advisories/GHSA-pxhw-h44j-8pfx>.
A CVE ID has been requested but is not yet available; please refer to
this vulnerability as GHSA-pxhw-h44j-8pfx until a CVE ID is allocated.

All versions older than 0.12.0 are vulnerable.

>## Impact
>
>If bubblewrap is used to create files on attacker controlled filesystem
>content (such as a malicious app image), then the attacker can use symlinks
>to redirect those files to be created on the host. This happens during
>setup of the sandbox, before anything is running, so there is no way to
>escape a sandbox at runtime.
>
>The bubblewrap arguments are not typically under the attacker's control,
>so the risks depend on exactly how bwrap it is being used. Any files
>created by bubblewrap in this way are created by the uid/gid that
>launched bubblewrap, which is generally not root, so sandbox escapes
>are not privileged.
>
>This vulnerability affects Flatpak if a malicious or compromised app
>is used, and potentially affects other app frameworks that work in a
>similar way.
>
>## Description
>
>During sandbox setup the host filesystem is mounted at /oldroot and the
>sandboxed root is mounted at /newroot. When bubblewrap creates a file in
>/newroot it may follow a symlink in a parent that points to /oldroot. For
>example `bwrap --bind /untrusted / --dir /subdir/newdir ...` would follow
>a link at /untrusted/subdir which, if it pointed to /newroot/some/path,
>would then create the new directory in /some/path/newdir on the host.
>
>## Patches
>
>This has been fixed in the 0.12.0 release by using openat2 with the
>RESOLVE_IN_ROOT flag (with fallback for older kernels), and all affected
>users should update.
>
>## Note on setuid versions of bubblewrap
>
>This has been fixed only in 0.12.0, which doesn't support building a
>setuid version of bubblewrap. Due to the complexity of the fix, there is
>currently no backport to older versions that support setuid. Essentially
>all modern Linux distributions support unprivileged user namespaces,
>so the risks involved with a setuid version of bubblewrap are not worth
>keeping it, and all users should stop using it.
>
>## Credits
>
>Reported by @geeknik.

-- 
Simon McVittie, Collabora Ltd. / Debian
