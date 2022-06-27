Received: (qmail 11569 invoked by uid 550); 27 Jun 2022 20:31:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11545 invoked from network); 27 Jun 2022 20:31:11 -0000
Content-Type: text/plain; charset=utf-8
From: Tim Allison <tallison@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <98a8ea54-34b2-8826-b198-19d5a1acbbf6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 27 Jun 2022 20:30:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-33879: Apache Tika: Incomplete fix and new regex DoS in
 StandardsExtractingContentHandler 

Severity: low

Description:

The initial fixes in CVE-2022-30126 and CVE-2022-30973 for regexes in the S=
tandardsExtractingContentHandler were insufficient, and we found a separate=
, new regex DoS in a different regex in the StandardsExtractingContentHandl=
er. These are now fixed in 1.28.4 and 2.4.1.

Credit:

This incomplete fix was discovered and reported by the CodeQL team member [=
@atorralba (Tony Torralba)](https://github.com/atorralba) and [@jarlob (Jar=
oslav Loba=C4=8Devski)](https://github.com/jarlob) from Github Security Lab=
.  The new ReDos was discovered by the Apache Tika team.

