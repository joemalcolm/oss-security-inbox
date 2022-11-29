Received: (qmail 15563 invoked by uid 550); 29 Nov 2022 15:38:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5406 invoked from network); 29 Nov 2022 14:22:17 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e3f656ef-0bb1-edf0-57f8-d62352a6675a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 29 Nov 2022 14:21:52 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-44635: Apache Fineract allowed an authenticated user to
 perform remote code execution due to path traversal 

Severity: important

Description:

Apache Fineract allowed an authenticated user to perform remote code execut=
ion due to a path traversal vulnerability in a file upload component of Apa=
che Fineract, allowing an attacker to run remote code.  This issue affects =
Apache Fineract version 1.8.0 and prior versions. We recommend users to upg=
rade to 1.8.1.

Credit:

We would like to thank  Aman Sapra, co-captain of the Super Guesser CTF tea=
m & Security researcher at CRED, for reporting this issue, and the Apache S=
ecurity team for their assistance.  We give kudos and karma to @Aleksandar =
Vidakovic for resolving this CVE.=20

