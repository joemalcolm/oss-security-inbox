Received: (qmail 9248 invoked by uid 550); 16 Jan 2023 11:56:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21898 invoked from network); 16 Jan 2023 09:31:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Daniel Gaspar <dpgaspar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <79646e77-1de1-fc1e-ee4b-9937edb2b2b1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 16 Jan 2023 09:31:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45438: Apache Superset: Dashboard metadata information
 leak 

Description:

When explicitly enabling the feature flag DASHBOARD_CACHE (disabled by defa=
ult), the system allowed for an unauthenticated user to access dashboard co=
nfiguration metadata using a REST API Get endpoint.=C2=A0This issue affects=
 Apache Superset version 1.5.2 and prior versions and version 2.0.0.

Credit:

Sunny Alexli (finder)

References:

https://superset.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-45438

