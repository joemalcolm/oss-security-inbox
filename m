Received: (qmail 6051 invoked by uid 550); 16 Jan 2023 11:56:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5386 invoked from network); 16 Jan 2023 09:14:48 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <7e07bfc9-ed8b-0b92-6f04-724638701e40@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jan 2023 09:14:35 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43718: Apache Superset: Cross-Site Scripting
 vulnerability on upload forms 

Description:

Upload data forms do not correctly render user input leading to possible XS=
S attack vectors that can be performed by authenticated users with database=
 connection update permissions.=C2=A0This issue affects Apache Superset ver=
sion 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-43718

