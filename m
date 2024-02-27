Received: (qmail 30564 invoked by uid 550); 27 Feb 2024 17:17:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27913 invoked from network); 27 Feb 2024 16:40:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Brahma Reddy Battula <brahma@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0cc3cf0e-4b5c-287d-c157-f606d7f15cb2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 27 Feb 2024 16:42:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50380: Apache Ambari: authenticated users could perform
 XXE to read arbitrary files on the server 

Severity: important

Affected versions:

- Apache Ambari 2.7.0 through 2.7.7

Description:

XML External Entity injection in apache ambari versions <=3D 2.7.7,=C2=A0Us=
ers are recommended to upgrade to version 2.7.8, which fixes this issue.

More Details:

Oozie Workflow Scheduler had a vulnerability that allowed for root-level fi=
le reading and privilege escalation from low-privilege users. The vulnerabi=
lity was caused through lack of proper user input validation.

This vulnerability is known as an XML External Entity (XXE) injection attac=
k. Attackers can exploit XXE vulnerabilities to read arbitrary files on the=
 server, including sensitive system files. In theory, it might be possible =
to use this to escalate privileges.

References:

https://ambari.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50380

