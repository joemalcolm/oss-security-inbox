Received: (qmail 13661 invoked by uid 550); 24 Jul 2024 12:39:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1563 invoked from network); 24 Jul 2024 04:16:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: James Turton <dzamo@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c1198a43-4faf-304e-2c4c-feb1494caacb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jul 2024 04:13:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-48362: Apache Drill: XXE Vulnerability in XML Format
 Reader 

Severity: moderate

Affected versions:

- Apache Drill 1.19.0 before 1.21.2

Description:

XXE in the XML Format Plugin in Apache Drill version 1.19.0 and greater all=
ows a user to read any file on a remote file system or execute commands via=
 a malicious XML file.
Users are recommended to upgrade to version 1.21.2, which fixes this issue.

This issue is being tracked as DRILL-8461=20

Credit:

Yuzhe Huang (finder)

References:

https://drill.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-48362
https://issues.apache.org/jira/browse/DRILL-8461

