Received: (qmail 10029 invoked by uid 550); 25 May 2026 18:41:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32091 invoked from network); 25 May 2026 12:35:38 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: =?UTF-8?Q?Francesco_Chicchiricc=C3=B2?= <ilgrosso@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <df674701-89fc-ba25-a823-4a986435bb9a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 12:33:19 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-42797: Apache Syncope: JexlContextBuilder Information
 Disclosure 

Severity: moderate=20

Affected versions:

- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-api) 3.=
0 through 3.0.16
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-api) 4.=
0 through 4.0.5
- Apache Syncope (org.apache.syncope.core:syncope-core-provisioning-api) 4.=
1 through 4.1.0

Description:

Exposure of Sensitive Information Through Data Queries vulnerability in Apa=
che Syncope.

An administrator with adequate entitlements for Derived Schemas can create =
a malicious JEXL expression which allows any administrator with sufficient =
entitlements for User read to access User-related security-sensitive inform=
ation.

This issue affects Apache Syncope: 3.0 through 3.0.16, 4.0 through 4.0.5, 4=
.1.0.

Users are recommended to upgrade to version 4.0.6 / 4.1.1, which fix this i=
ssue by further restricting the JEXL expression definition.

Credit:

elin kai (finder)

References:

https://syncope.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-42797

