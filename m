Received: (qmail 5823 invoked by uid 550); 16 Jan 2023 11:56:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31790 invoked from network); 16 Jan 2023 09:08:31 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ac40a15d-b99f-ab01-d219-2a6b455766e2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jan 2023 09:08:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43717: Apache Superset: Cross-Site Scripting on
 dashboards 

Description:

Dashboard rendering does not sufficiently sanitize the content of markdown =
components leading to possible XSS attack vectors that can be performed by =
authenticated users with create dashboard permissions.=C2=A0This issue affe=
cts Apache Superset version 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-43717

