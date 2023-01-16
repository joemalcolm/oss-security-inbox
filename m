Received: (qmail 8077 invoked by uid 550); 16 Jan 2023 11:56:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17692 invoked from network); 16 Jan 2023 09:27:05 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6c44abe1-2c71-b6c7-db9d-af0f00e8be09@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jan 2023 09:25:56 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-43721: Apache Superset: Open Redirect Vulnerability 

Severity: moderate

Description:

An authenticated attacker with update datasets permission could change a da=
taset link to an untrusted site, users could be redirected to this site whe=
n clicking on that specific dataset.=C2=A0This issue affects Apache Superse=
t version 1.5.2 and prior versions and version 2.0.0.

Credit:

Positive Technologies (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-43721

