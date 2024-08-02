Received: (qmail 15883 invoked by uid 550); 2 Aug 2024 14:01:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15962 invoked from network); 2 Aug 2024 03:50:19 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b563279c-e81e-ed68-7ac6-0afcfb225709@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 Aug 2024 03:50:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27182: Apache Linkis  Basic management services: Engine
 material management Arbitrary file deletion vulnerability 

Severity: important

Affected versions:

- Apache Linkis  Basic management services 1.3.2 before 1.6.0

Description:

In Apache Linkis <=3D 1.5.0,

Arbitrary file deletion in Basic management services on=20

A user with an administrator account could delete any file accessible by th=
e Linkis system user

=2E
Users are recommended to upgrade to version 1.6.0, which fixes this issue.

Credit:

superx (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-27182

