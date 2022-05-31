Received: (qmail 11688 invoked by uid 550); 31 May 2022 13:04:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11670 invoked from network); 31 May 2022 13:04:38 -0000
Content-Type: text/plain; charset=utf-8
From: Tim Allison <tallison@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ef0d3598-74a5-7981-af98-c05407457f68@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 May 2022 13:04:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-30973: Apache Tika: Missing fix for CVE-2022-30126 in
 1.28.2 

Description:

We failed to apply the fix for CVE-2022-30126 to the 1.x branch in the 1.28=
.2 release.  In Apache Tika, a regular expression in the StandardsText clas=
s, used by the StandardsExtractingContentHandler could lead to a denial of =
service caused by backtracking on a specially crafted file. This only affec=
ts users who are running the StandardsExtractingContentHandler, which is a =
non-standard handler.  This is fixed in 1.28.3.

Mitigation:

Avoid using the StandardsExtractingContentHandler or upgrade to Tika 1.28.3=
 or 2.4.0

Credit:

This issue was reported by Cathy Hu, SUSE Software Solutions Germany GmbH.

