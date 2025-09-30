Received: (qmail 3359 invoked by uid 550); 30 Sep 2025 15:50:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23745 invoked from network); 30 Sep 2025 15:29:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Li Yang <liyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <84860219-7e19-7cb5-a433-cb75b2066885@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Sep 2025 15:28:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-61733: Apache Kylin: Authentication bypass 

Severity: high=20

Affected versions:

- Apache Kylin 4.0.0 through 5.0.2

Description:

Authentication Bypass Using an Alternate Path or Channel vulnerability in A=
pache Kylin.

This issue affects Apache Kylin: from 4.0.0 through 5.0.2.

Users are recommended to upgrade to version 5.0.3, which fixes the issue.

This issue is being tracked as KYLIN-6081=20

Credit:

liuhuajin <liuhuajin1@huawei.com> (finder)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-61733
https://issues.apache.org/jira/browse/KYLIN-6081

