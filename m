Received: (qmail 11707 invoked by uid 550); 2 Aug 2024 14:01:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11835 invoked from network); 2 Aug 2024 03:48:08 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <807216e0-677e-c550-8e53-3aa3a0a28b16@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 02 Aug 2024 03:47:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-27181: Apache Linkis Basic management services: Privilege
 Escalation Attack vulnerability 

Severity: important

Affected versions:

- Apache Linkis Basic management services 1.3.2 before 1.6.0

Description:

In Apache Linkis <=3D 1.5.0,

Privilege Escalation in Basic management services where the attacking user =
is=20

a trusted account

 allows access to Linkis's Token information. Users are advised to upgrade =
to version 1.6.0, which fixes this issue.

Credit:

superx (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-27181

