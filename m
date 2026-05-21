Received: (qmail 11648 invoked by uid 550); 21 May 2026 16:13:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 5956 invoked from network); 21 May 2026 10:49:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Pasquale Congiusti <pcongiusti@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e2ae24fe-2486-faf7-4af5-1f9dd84e3930@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 10:49:24 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45760: Apache Camel K: Camel K Cross-Namespace Build Deputy Attack

Severity: important=20

Affected versions:

- Apache Camel K (apache/camel-k) 2.0.0 before 2.8.1
- Apache Camel K (apache/camel-k) 2.9.0 before 2.9.2
- Apache Camel K (apache/camel-k) 2.10.0 before 2.10.1

Description:

(Externally Controlled Reference to a Resource in Another Sphere), (Authori=
zation Bypass Through User-Controlled Key) vulnerability in Apache Camel K.=
 Authorized users in a Kubernetes namespace can create a Build resource, co=
ntrolling the Pod generation in a namespace of their choice, including the =
operator namespace.

This issue affects Apache Camel K: from 2.0.0 before 2.8.1, from 2.9.0 befo=
re 2.9.2, from 2.10.0 before 2.10.1.

Users are recommended to upgrade to version 2.10.1 (or 2.8.1 or 2.9.2), whi=
ch fixes the issue.

Credit:

@j311yl0v3u (2439839508@qq.com) (finder)
@b0b0haha (603571786@qq.com) (finder)

References:

https://camel.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45760

