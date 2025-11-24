Received: (qmail 4041 invoked by uid 550); 24 Nov 2025 12:36:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 30127 invoked from network); 24 Nov 2025 12:26:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3f140d4d-8781-9a13-0b2e-a008c2513673@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Nov 2025 12:26:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-65998: Apache Syncope: Default AES key used for internal
 password encryption 

Severity: important=20

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 2.1 through =
2.1.14
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 3.0 through =
3.0.14
- Apache Syncope (org.apache.syncope.core:syncope-core-spring) 4.0 through =
4.0.2

Description:

Apache Syncope can be configured to store the user password values in the i=
nternal database with AES encryption, though this is not the default option.

When AES is configured, the default key value, hard-coded in the source cod=
e, is always used. This allows a malicious attacker, once obtained access t=
o the internal database content, to reconstruct the original cleartext pass=
word values.
This is not affecting encrypted plain attributes, whose values are also sto=
red using AES encryption.

Users are recommended to upgrade to version 3.0.15 / 4.0.3, which fix this =
issue.

Credit:

Clemens Bergmann (Technical University of Darmstadt) (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-65998

