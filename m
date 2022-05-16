Received: (qmail 14273 invoked by uid 550); 16 May 2022 16:45:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14255 invoked from network); 16 May 2022 16:45:27 -0000
Content-Type: text/plain; charset=utf-8
From: Tim Allison <tallison@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <072956cd-6dcf-5053-b666-e1254a85a20d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 May 2022 16:45:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-30126: Apache Tika Regular Expression Denial of Service
 in Standards Extractor 

Severity: low

Description:

A regular expression in our StandardsText class, used by the StandardsExtra=
ctingContentHandler could lead to a denial of service caused by backtrackin=
g on a specially crafted file. This only affects users who are running the =
StandardsExtractingContentHandler, which is a non-standard handler.  This i=
s fixed in 1.28.2 and 2.4.0

Mitigation:

Upgrade to 1.28.2 or 2.4.0

Credit:

This issue was discovered and reported by the CodeQL team members [@atorral=
ba (Tony Torralba)](https://github.com/atorralba) and [@joefarebrother (Jos=
eph Farebrother)](https://github.com/joefarebrother).

