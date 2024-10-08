Received: (qmail 31801 invoked by uid 550); 8 Oct 2024 13:49:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25871 invoked from network); 8 Oct 2024 08:57:58 -0000
Authentication-Results: apache.org; auth=none
Date: Tue, 8 Oct 2024 10:54:30 +0200
From: Stefan Sperling <stsp@apache.org>
To: announce@subversion.apache.org, users@subversion.apache.org,
	dev@subversion.apache.org
Cc: security@apache.org, oss-security@lists.openwall.com
Message-ID: <ZwTzRh7YIBhzbLok@benson.stsp.name>
Mail-Followup-To: announce@subversion.apache.org,
	users@subversion.apache.org, dev@subversion.apache.org,
	security@apache.org, oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] CVE-2024-45720: Apache Subversion: Command line argument injection on Windows platforms

I am happy to announce the release of Apache Subversion 1.14.4.

This is a stable bugfix and security release of the Apache Subversion
open source version control system.

Among regular bug fixes, this release fixes CVE-2024-45720:

   Subversion command line argument injection on Windows platforms

   On Windows platforms, a "best fit" character encoding conversion of
   command line arguments to Subversion's executables (e.g., svn.exe,
   etc.) may lead to unexpected command line argument interpretation,
   including argument injection and execution of other programs, if a
   specially crafted command line argument string is processed.

   UNIX-like platforms are not affected.

   Reported by:
   Orange Tsai and splitline from DEVCORE Research Team

   Full advisory:
   https://subversion.apache.org/security/CVE-2024-45720-advisory.txt
   https://subversion.apache.org/security/CVE-2024-45720-advisory.txt.asc

To obtain this release, please choose the mirror closest to you by visiting:

    https://subversion.apache.org/download.cgi#recommended-release

SHA-512 checksums are available at:

    https://www.apache.org/dist/subversion/subversion-1.14.4.tar.bz2.sha512
    https://www.apache.org/dist/subversion/subversion-1.14.4.tar.gz.sha512
    https://www.apache.org/dist/subversion/subversion-1.14.4.zip.sha512

PGP Signatures are available at:

    https://www.apache.org/dist/subversion/subversion-1.14.4.tar.bz2.asc
    https://www.apache.org/dist/subversion/subversion-1.14.4.tar.gz.asc
    https://www.apache.org/dist/subversion/subversion-1.14.4.zip.asc

For this release, the following people have provided PGP signatures:

   Stefan Sperling [rsa2048/4F7DBAA99A59B973] with fingerprint:
    8BC4 DAE0 C5A4 D65F 4044  0107 4F7D BAA9 9A59 B973
   Nathan Hartman (CODE SIGNING KEY) [rsa4096/583F00ADF981C39F] with fingerprint:
    3F8E 467C B336 6E30 13E1  120D 583F 00AD F981 C39F
   Johan Corveleyn [rsa4096/B59CE6D6010C8AAD] with fingerprint:
    8AA2 C10E EAAD 44F9 6972  7AEA B59C E6D6 010C 8AAD
   Evgeny Kotkov [rsa4096/B64FFF1209F9FA74] with fingerprint:
    E7B2 A7F4 EC28 BE9F F8B3  8BA4 B64F FF12 09F9 FA74
   Timofei Zhakov with fingerprint:
    B593 8A45 4FEA DBD4 3565  E85F 2A56 BB63 2286 4335

These public keys are available at:

    https://www.apache.org/dist/subversion/subversion-1.14.4.KEYS

Release notes for the 1.14.x release series may be found at:

    https://subversion.apache.org/docs/release-notes/1.14.html

You can find the list of changes between 1.14.4 and earlier versions at:

    https://svn.apache.org/repos/asf/subversion/tags/1.14.4/CHANGES

Questions, comments, and bug reports to users@subversion.apache.org.

Thanks,
- The Subversion Team

--
To unsubscribe, please see:

    https://subversion.apache.org/mailing-lists.html#unsubscribing
