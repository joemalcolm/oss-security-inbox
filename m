X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/07/21/7
Message-ID: <2a94c76b-ee62-4144-a51d-c930ec8fd039@oracle.com>
Date: Tue, 21 Jul 2026 10:05:45 -0700
From: Alan Coopersmith <alan.coopersmith@...cle.com>
To: oss-security@...ts.openwall.com
Subject: libssh 0.12.1 and 0.11.5 security releases
Content-Type: text/plain; charset=utf-8

https://www.libssh.org/2026/07/21/libssh-0-12-1-and-0-11-5-security-releases/
announces:
> Within the storm of AI-assisted reports, we are pleased to announce another
> libssh releases, bringing mostly security relevant fixes for both new
> features and code that was used for years.
> 
> A big thank you to all the security researchers who responsibly reported the
> issues to us, as well as to all the contributors who made this release
> possible!
> 
> For those new to libssh, we recommend checking out our getting started
> tutorial. If you have any questions, feel free to join our mailing list or
> visit our Matrix channel.
> 
> You can download libssh-0.12.1 here: https://www.libssh.org/files/0.12/
> and libssh-0.11.5 in here: https://www.libssh.org/files/0.11/
> 
> ChangeLog for libssh 0.12.1:
> 
>   Security:
> 
>     CVE-2026-15370: Stack buffer overflow in SFTP server longname construction
>         http://www.libssh.org/security/advisories/CVE-2026-15370.txt
>     CVE-2026-59842: Information disclosure via short GSSAPI Curve25519 public key
>     	http://www.libssh.org/security/advisories/CVE-2026-59842.txt
>     CVE-2026-59843: Denial of service via zero advertised channel packet size
>         http://www.libssh.org/security/advisories/CVE-2026-59843.txt
>     CVE-2026-59844: Denial of service via oversized SFTP read length
>         http://www.libssh.org/security/advisories/CVE-2026-59844.txt
>     CVE-2026-59845: Denial of service via unchecked ProxyCommand fork() failure
>     	http://www.libssh.org/security/advisories/CVE-2026-59845.txt
>     CVE-2026-59846: Information disclosure via ProxyCommand %r username expansion
>         http://www.libssh.org/security/advisories/CVE-2026-59846.txt
>     CVE-2026-59847: Integrity downgrade via OpenSSL AES-GCM tag verification
>         http://www.libssh.org/security/advisories/CVE-2026-59847.txt
>     CVE-2026-59848: Denial of service via SFTP responses with unknown request IDs
>         http://www.libssh.org/security/advisories/CVE-2026-59848.txt
>     CVE-2026-59849: Denial of service via automatic certificate authentication loop
>         http://www.libssh.org/security/advisories/CVE-2026-59849.txt
>     CVE-2026-59850: Use-after-free via data callbacks on closed channels
>         http://www.libssh.org/security/advisories/CVE-2026-59850.txt
>     CVE-2026-59851: Authentication bypass via missing GSSAPI principal check
>         http://www.libssh.org/security/advisories/CVE-2026-59851.txt
>     Zero-initialize every ssh_string
> 
>   Compatibility:
> 
>     Fix compatibility with C23 / gcc16
>     Allow hybrid ML-KEM key exchange in FIPS mode
> 
>   Bugfixes:
> 
>     Fix multiple memory leaks, null checks, and error checks
>     Fix parameter size mismatch in mlkem768x25519-sha256
>     Fix client SFTP messages being ignored if sent at high rate
>     Validate peer public key in DH key exchange
>     Fix ambiguous error reporting of sftp_init
>     Fix hidden integer underflow in socket packet callback
>     Avoid remote window overflow
>     Fix socket data callback return value on rekey failure
>     Avoid off-by-one overflow during kbdint authentication
>     Avoid logging uninitialized sequence numbers
>     Avoid double conversion of SFTP version number
>     Send correct SFTP server version number
>     Avoid handling repeated SFTP INIT messages
>     Harmonize return values from SFTP server callbacks
> 
> ChangeLog for libssh 0.11.5:
> 
>   Security:
> 
>     CVE-2026-15370: Stack buffer overflow in SFTP server longname construction
>         http://www.libssh.org/security/advisories/CVE-2026-15370.txt
>     CVE-2026-59843: Denial of service via zero advertised channel packet size
>         http://www.libssh.org/security/advisories/CVE-2026-59843.txt
>     CVE-2026-59844: Denial of service via oversized SFTP read length
>         http://www.libssh.org/security/advisories/CVE-2026-59844.txt
>     CVE-2026-59845: Denial of service via unchecked ProxyCommand fork() failure
>     	http://www.libssh.org/security/advisories/CVE-2026-59845.txt
>     CVE-2026-59846: Information disclosure via ProxyCommand %r username expansion
>         http://www.libssh.org/security/advisories/CVE-2026-59846.txt
>     CVE-2026-59847: Integrity downgrade via OpenSSL AES-GCM tag verification
>         http://www.libssh.org/security/advisories/CVE-2026-59847.txt
>     CVE-2026-59848: Denial of service via SFTP responses with unknown request IDs
>         http://www.libssh.org/security/advisories/CVE-2026-59848.txt
>     CVE-2026-59849: Denial of service via automatic certificate authentication loop
>         http://www.libssh.org/security/advisories/CVE-2026-59849.txt
>     CVE-2026-59850: Use-after-free via data callbacks on closed channels
>         http://www.libssh.org/security/advisories/CVE-2026-59850.txt
>     Zero-initialize every ssh_string
> 
>   Compatibility:
> 
>     Fix compatibility with C23 / gcc16
> 
>   Bugfixes:
> 
>     Fix multiple memory leaks, null checks, and error checks
>     Validate peer public key in DH key exchange
>     Avoid remote window overflow
>     Avoid off-by-one overflow during kbdint authentication
>     Avoid logging uninitialized sequence numbers
>     Avoid double conversion of SFTP version number
>     Send correct SFTP server version number
>     Avoid handling repeated SFTP INIT messages
>     Harmonize return values from SFTP server callbacks

