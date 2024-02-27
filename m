Received: (qmail 21888 invoked by uid 550); 27 Feb 2024 07:33:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5651 invoked from network); 27 Feb 2024 03:11:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brahma Reddy Battula <brahma@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <613550e8-1916-8110-251a-d844e3ed07d3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 27 Feb 2024 03:14:44 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50379: Apache Ambari: authenticated users could perform
 command injection to perform RCE 

Severity: important

Affected versions:

- Apache Ambari 2.7.0 through 2.7.7

Description:

Malicious code injection in Apache Ambari in prior to 2.7.8.=C2=A0Users are=
 recommended to upgrade to version 2.7.8, which fixes this issue.

Impact:
A Cluster Operator can manipulate the request by adding a malicious code in=
jection and gain a root over the cluster main host.

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50379

