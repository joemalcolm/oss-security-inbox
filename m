Received: (qmail 11519 invoked by uid 550); 20 Feb 2024 12:08:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19551 invoked from network); 20 Feb 2024 05:50:18 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <64080ff9-5d83-6f7d-8e7a-082e28a20696@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 05:53:13 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51770: Apache DolphinScheduler: Arbitrary File Read
 Vulnerability 

Severity: important

Affected versions:

- Apache DolphinScheduler 1.2.0 before 3.2.1

Description:

Arbitrary File Read Vulnerability in Apache Dolphinscheduler.

This issue affects Apache DolphinScheduler: before 3.2.1.=20

We recommend users to upgrade Apache DolphinScheduler to version 3.2.1, whi=
ch fixes the issue.

Credit:

zhiwei (finder)
rg (finder)

References:

https://github.com/apache/dolphinscheduler/pull/15433
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-51770

