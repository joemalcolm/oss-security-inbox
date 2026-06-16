X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/06/16/1
Message-ID: <fc896677-5ed1-4910-bad9-bed114fe3205@oracle.com>
Date: Mon, 15 Jun 2026 17:53:31 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: Fwd: gsasl-2.2.4 released - fixes heap disclosure
Content-Type: text/plain; charset=utf-8

https://lists.gnu.org/archive/html/help-gsasl/2026-06/msg00000.html
provides this additional detail, along with a reproducer:

> Affected:  GNU gsasl 2.2.3 (latest), linked against libntlm (any)
> Files:     lib/ntlm/ntlm.c  _gsasl_ntlm_client_step()  lines 107-117
>            (uninitialized read reaches libntlm buildSmbNtlmAuthResponse)
> Severity:  MEDIUM  — heap disclosure from a malicious NTLM server to the
>            gsasl client; leaked bytes are echoed back to the server inside
>            the NTLM response.
> CWE:       CWE-908 (Use of Uninitialized Resource)
> CVSS 3.1:  6.5  AV:N/AC:L/PR:N/UI:N/S:U/C:H/I:N/A:N
> 
> Reporter:  zhangph (afldl), independent security researcher
>            zhangph12138@....com
> 
> 1. Summary
> ----------
> In _gsasl_ntlm_client_step(), the Type-2 (challenge) message from the
> server is copied into a fixed tSmbNtlmAuthChallenge struct with malloc() +
> a bounded memcpy(), but the length check only rejects input_len *greater*
> than the struct size — it accepts any SHORTER challenge and leaves the
> uninitialized tail in place:
> 
>     107   if (input_len > sizeof (*challenge))
>     108     return GSASL_MECHANISM_PARSE_ERROR;
>     109
>     110   challenge = malloc (sizeof (*challenge));   /* NOT calloc: tail 
> uninit */
>     111   if (!challenge)
>     112     return GSASL_MALLOC_ERROR;
>     ...
>     117   memcpy (challenge, input, input_len);        /* only first input_len 
> bytes */
> 
> sizeof(tSmbNtlmAuthChallenge) is 1076 bytes. A malicious NTLM server that
> sends a short Type-2 challenge (e.g. 16 bytes) causes the remaining ~1060
> bytes to stay uninitialized. The struct is then handed to libntlm's
> buildSmbNtlmAuthResponse(), whose getUnicodeString() reads the target-name /
> target-info fields from the uninitialized tail. Those bytes end up in the
> NTLM response that the client transmits back to the attacker-controlled
> server — a heap memory disclosure to the remote peer.
> 
> Because this is the NTLM *client* path, the attacker is the server: it
> initiates the leak by sending a malformed challenge.




-------- Forwarded Message --------
Subject: gsasl-2.2.4 released [stable]
Date: Tue, 16 Jun 2026 00:30:01 +0200
From: Simon Josefsson via Announcements and Requests for Help from the GNU 
project and the Free Software Foundation <info-gnu@....org>
Reply-To: Simon Josefsson <simon@...efsson.org>
To: info-gnu@....org
CC: coordinator@...nslationproject.org, bug-gsasl@....org

This is to announce gsasl-2.2.4, a stable release.

GNU SASL is a modern C library that implement the network security
protocol Simple Authentication and Security Layer (SASL).  The framework
itself and a couple of common SASL mechanisms are implemented.  GNU SASL
can be used by network applications for IMAP, SMTP, XMPP and other
protocols to provide authentication services.  Supported mechanisms
include CRAM-MD5, EXTERNAL, GSSAPI, ANONYMOUS, PLAIN, SECURID,
DIGEST-MD5, SCRAM-SHA-1(-PLUS), SCRAM-SHA-256(-PLUS), GS2-KRB5, SAML20,
OPENID20, LOGIN, and NTLM.

There have been 7 commits by 1 people in the 34 days since 2.2.3.

See the NEWS below for a brief summary.

Thanks to everyone who has contributed!
The following people contributed changes to this release:

   Simon Josefsson (7)

Happy Hacking,
Simon [on behalf of the gsasl maintainers]
==================================================================

Here is the GNU gsasl home page:
   https://www.gnu.org/software/gsasl/

Manual:
   https://www.gnu.org/software/gsasl/manual/
   https://www.gnu.org/software/gsasl/manual/gsasl.html - HTML format
   https://www.gnu.org/software/gsasl/manual/gsasl.pdf - PDF format

API Reference manual:
   https://www.gnu.org/software/gsasl/reference/ - GTK-DOC HTML

Doxygen documentation:
   https://www.gnu.org/software/gsasl/doxygen/ - HTML format

For development snapshot QA analysis see:
   https://gsasl.gitlab.io/gsasl/coverage/
   https://gsasl.gitlab.io/gsasl/cyclo/
   https://gsasl.gitlab.io/gsasl/clang-analyzer/

If you need help to use GNU SASL, or want to help others, you are
invited to join our help-gsasl mailing list, see:
   https://lists.gnu.org/mailman/listinfo/help-gsasl

Here are the compressed sources and a GPG detached signature:
   https://ftp.gnu.org/gnu/gsasl/gsasl-2.2.4.tar.gz
   https://ftp.gnu.org/gnu/gsasl/gsasl-2.2.4.tar.gz.sig

Here is minimal source-only "git archive" sources:
   https://ftp.gnu.org/gnu/gsasl/gsasl-v2.2.4-src.tar.gz
   https://ftp.gnu.org/gnu/gsasl/gsasl-v2.2.4-src.tar.gz.sig

Here are Sigsum Proofs:
   https://ftp.gnu.org/gnu/gsasl/gsasl-2.2.4.tar.gz.proof
   https://ftp.gnu.org/gnu/gsasl/gsasl-v2.2.4-src.tar.gz.proof

Use a mirror for higher download bandwidth:
   https://www.gnu.org/order/ftp.html

Here are the SHA256 and SHA3-256 checksums:

   SHA256 (gsasl-2.2.4.tar.gz) = 0yvhXv06BMsZsjL3Ib3KAsxq16tBXffXn7LdLA2j4L4=
   SHA3-256 (gsasl-2.2.4.tar.gz) = n0jIgGb5FyokCpihIDIoZTVaJws1CjoHAjYezuuOa30=

   SHA256 (gsasl-v2.2.4-src.tar.gz) = fXtGFR/Gt13cde3xhIlyGBG9Gsgxi6td7DKMQs7SyoQ=
   SHA3-256 (gsasl-v2.2.4-src.tar.gz) = fblO3Q31AkJztgSnGBCX/uzeFsxA8Y3axae7yAkp0Vw=

Verify the base64 SHA256 checksum with 'cksum -a sha256 --check'
from coreutils-9.2 or OpenBSD's cksum since 2007.

Verify the base64 SHA3-256 checksum with 'cksum -a sha3 --check'
from coreutils-9.8.

Use a .sig file to verify that the corresponding file (without the
.sig suffix) is intact.  First, be sure to download both the .sig file
and the corresponding tarball.  Then, run a command like this:

   gpg --verify gsasl-2.2.4.tar.gz.sig

The signature should match the fingerprint of the following key:

   pub   ed25519 2019-03-20 [SC]
         B1D2 BD13 75BE CB78 4CF4  F8C4 D73C F638 C53C 06BE
   uid   Simon Josefsson <simon@...efsson.org>

If that command fails because you don't have the required public key,
or that public key has expired, try the following commands to retrieve
or refresh it, and then rerun the 'gpg --verify' command.

   gpg --locate-external-key simon@...efsson.org

   gpg --recv-keys 51722B08FE4745A2

   wget -q -O- 
'https://savannah.gnu.org/project/release-gpgkeys.php?group=gsasl&download=1' | 
gpg --import -

As a last resort to find the key, you can try the official GNU
keyring:

   wget -q https://ftp.gnu.org/gnu/gnu-keyring.gpg
   gpg --keyring gnu-keyring.gpg --verify gsasl-2.2.4.tar.gz.sig

Use the .proof files to verify the Sigsum proof.  These files are like
signatures but with extra transparency: you can cryptographically verify
that every signature is logged in a public append-only log, so you can
say with confidence what signatures exists.  This makes hidden releases
no longer deniable for the same public key.

Releases are Sigsum-signed with the following public key:

   cat <<EOF > gsasl-sigsum-key.pub
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILzCFcHHrKzVSPDDarZPYqn89H5TPaxwcORgRg+4DagE
EOF

Run a command like this to verify downloaded artifacts:

   sigsum-verify -k gsasl-sigsum-key.pub -P sigsum-generic-2025-1 \
         gsasl-2.2.4.tar.gz.proof < gsasl-2.2.4.tar.gz

You may learn more about Sigsum concepts and find instructions how to
download the tools here: https://www.sigsum.org/getting-started/

This release is based on the gsasl git repository, available as

   git clone https://https.git.savannah.gnu.org/git/gsasl.git

with commit 63715f23424feb70d0a676dd826516554625841d tagged as v2.2.4.

For a summary of changes and contributors, see:

   https://gitweb.git.savannah.gnu.org/gitweb/?p=gsasl.git;a=shortlog;h=v2.2.4

or run this command from a git-cloned gsasl directory:

   git shortlog v2.2.3..v2.2.4

This release was bootstrapped with the following tools:
   Gnulib 2026-04-29 aa527567a732fbb36d21d576fcd1a2c8486c812d
   Autoconf 2.72
   Automake 1.17
   Libtoolize 2.4.7
   Make 4.4.1
   Makeinfo 7.1.1
   Help2man 1.49.2
   Gperf 3.3
   Gengetopt 2.23
   Gtkdocize 1.34.0
   Tar 1.35
   Gzip 1.14
   Guix 1.5.0rc1

NEWS

* Noteworthy changes in release 2.2.4 (2026-06-15) [stable]

** NTLM: Avoid use-of-uninitialized-value in libntlm.
The code is in the client side, and can be triggered by a malicious
server.  Report and fix by zhangph <zhangph12138@....com> in
<https://lists.gnu.org/archive/html/help-gsasl/2026-06/msg00000.html>.

** i18n: Updated translations.

