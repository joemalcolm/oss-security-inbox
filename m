X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/08/10
Message-ID: <bf673262-850e-41da-8cea-5f0fc780fe5d@oracle.com>
Date: Wed, 8 Jul 2026 09:52:12 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Go 1.26.5 and Go 1.25.12 fix CVE-2026-39822 & CVE-2026-42505
Content-Type: text/plain; charset=utf-8




-------- Forwarded Message --------
Subject: 	[security] Go 1.26.5 and Go 1.25.12 are released
Date: 	Tue, 7 Jul 2026 20:22:04 +0000
From: 	announce@...ang.org
To: 	golang-nuts@...glegroups.com



Hello gophers,

We have just released Go versions 1.26.5 and 1.25.12, minor point releases.

These releases include 2 security fixes following the security policy
<https://go.dev/doc/security/policy>:

   * os: Root escape via symlink plus trailing slash

     On Unix systems, opening a file in an os.Root improperly
     followed symlinks to locations outside of the Root when
     the final path component of the a path is a symbolic link
     and the path ends in /.

     For example, |root.Open("symlink/")| would open "symlink"
     even when "symlink" is a symbolic link pointing outside of the root.

     On Unix, |openat(fd, path, O_NOFOLLOW)| will follow symlinks
     in |path| when |path| ends in a /. Root failed to account for
     this behavior, permitting paths with a trailing / to escape.
     It now properly sanitizes the path parameter provided to openat.

     Thanks to Mundur <https://github.com/M0nd0R> forreporting this issue.

     This is CVE-2026-39822 and Go issue <https://go.dev/issue/79005>.

   * crypto/tls: Encrypted Client Hello privacy leak

     The Encrypted Client Hello implementation would leak the pre-shared key
     identities during the handshake, allowing a passive network observer who can
     collect handshakes to de-anonymize the hostname of the server, even when ECH
     was being used.

     Thanks to Coia Prant (github.com/rbqvq) for reporting this issue.

     This is CVE-2026-42505 and Go issue <https://go.dev/issue/79282>.

View the release notes for more information:
https://go.dev/doc/devel/release#go1.26.5

You can download binary and source distributions from the Go website:
https://go.dev/dl/

To compile from source using a Git clone, update to the release with
|git checkout go1.26.5| and build as usual.

Thanks to everyone who contributed to the releases.

Cheers,
Junyang and David for the Go team

-- 
You received this message because you are subscribed to the Google Groups "golang-announce" group.
To view this discussion visit https://groups.google.com/d/msgid/golang-announce/f9a3d5eb.CAAACOz5h5QAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqTV_s%40mailjet.com <https://groups.google.com/d/msgid/golang-announce/f9a3d5eb.CAAACOz5h5QAAAAAAAAAA-p9MGAAAYKKSQYAAAAAADE8OwBqTV_s%40mailjet.com?utm_medium=email&utm_source=footer>.
