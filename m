Received: (qmail 19804 invoked by uid 550); 17 Jul 2024 14:57:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15432 invoked from network); 17 Jul 2024 14:54:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Huajie Wang <benjobs@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b410dcbd-f5f2-77fa-ff31-e615a59a8eec@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jul 2024 14:54:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-29120: Apache StreamPark: Information leakage
 vulnerability 

Severity: important

Affected versions:

- Apache StreamPark 2.0.0 before 2.1.4

Description:

In Streampark (version < 2.1.4), when a user logged in successfully, the Ba=
ckend service would return "Authorization" as the front-end authentication =
credential.  User can use this credential to request other users' informati=
on, including the administrator's username, password, salt value, etc.=C2=A0

Mitigation:

all users should upgrade to 2.1.4

Credit:

L0ne1y (reporter)

References:

https://streampark.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-29120

