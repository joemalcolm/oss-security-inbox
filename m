Received: (qmail 27742 invoked by uid 550); 4 Nov 2022 13:00:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7757 invoked from network); 4 Nov 2022 11:10:14 -0000
Authentication-Results: apache.org; auth=none
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
Date: Fri, 04 Nov 2022 12:09:52 +0100
Message-ID: <87wn8bm0vz.fsf@v45346.1blu.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2022-37866: Apache Ivy: Ivy Path traversal

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Severity: medium

Description:

When Apache Ivy downloads artifacts from a repository it stores them in
the local file system based on a user-supplied "pattern" that may
include placeholders for artifacts coordinates like the organisation,
module or version.

If said coordinates contain "../" sequences - which are valid characters
for Ivy coordinates in general - it is possible the artifacts are stored
outside of Ivy's local cache or repository or can overwrite different
artifacts inside of the local cache.

In order to exploit this vulnerability an attacker needs collaboration
by the remote repository as Ivy will issue http requests containing ".."
sequences and a "normal" repository will not interpret them as part of
the artifact coordinates.

Mitigation:

Users of Apache Ivy 2.0.0 to 2.5.1 should upgrade to Ivy 2.5.1.

Credit:

This issue was discovered by Kostya Kortchinsky of the Databricks Security Team.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmNk8wAACgkQohFa4V9ri3IUCgCeNrT2fqxtV4aAJf/RhpmQLeDK
VkAAoLmKEXe0H6Oe6cgWiyxvOM7HpZYd
=mSlx
-----END PGP SIGNATURE-----
