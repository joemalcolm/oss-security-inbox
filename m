Received: (qmail 24486 invoked by uid 550); 4 Nov 2022 12:59:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3965 invoked from network); 4 Nov 2022 11:07:11 -0000
Authentication-Results: apache.org; auth=none
From: Stefan Bodewig <bodewig@apache.org>
To: oss-security@lists.openwall.com
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/25.3 (gnu/linux)
Date: Fri, 04 Nov 2022 12:06:48 +0100
Message-ID: <87a657nflj.fsf@v45346.1blu.de>
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] CVE-2022-37865: Apache Ivy allow create/overwrite any file on the system

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Severity: medium

Description:

With Apache Ivy 2.4.0 an optional packaging attribute has been
introduced that allows artifacts to be unpacked on the fly if they used
pack200 or zip packaging.

For artifacts using the "zip", "jar" or "war" packaging Ivy prior to
2.5.1 doesn't verify the target path when extracting the archive. An
archive containing absolute paths or paths that try to traverse
"upwards" using ".." sequences can then write files to any location on
the local fie system that the user executing Ivy has write access to.

Mitigation:

Ivy users of version 2.4.0 to 2.5.0 should upgrade to Ivy 2.5.1.

Credit:

This issue was discovered by Kostya Kortchinsky of the Databricks Security Team.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmNk8kgACgkQohFa4V9ri3IqkQCfQujcSRYhjtUmvl7GuyYn46cc
f9MAn2ZSD7dzeAn9kPK+QqYH6gbH4F0e
=jVS7
-----END PGP SIGNATURE-----
