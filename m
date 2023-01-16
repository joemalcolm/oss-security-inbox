Received: (qmail 7819 invoked by uid 550); 16 Jan 2023 11:56:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13593 invoked from network); 16 Jan 2023 09:23:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <37033b5b-a44a-82f4-472e-4ecc6e3e29a4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jan 2023 09:23:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43720: Apache Superset: Improper rendering of user input 

Severity: low

Description:

An authenticated attacker with write CSS template permissions can create a =
record with specific HTML tags that will not get properly escaped by the to=
ast message displayed when a user deletes that specific CSS template record=
.=C2=A0This issue affects Apache Superset version 1.5.2 and prior versions =
and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-43720

