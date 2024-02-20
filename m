Received: (qmail 12018 invoked by uid 550); 20 Feb 2024 12:08:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20340 invoked from network); 20 Feb 2024 05:52:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <18b78b1e-4d7f-48d6-0746-d27140257b67@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 05:55:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49109: Remote Code Execution in Apache Dolphinscheduler 

Severity: important

Affected versions:

- Apache DolphinScheduler 3.0.0 before 3.2.1

Description:

Exposure of Remote Code Execution in Apache Dolphinscheduler.

This issue affects Apache DolphinScheduler: before 3.2.1.=20

We recommend users to upgrade Apache DolphinScheduler to version 3.2.1, whi=
ch fixes the issue.

Credit:

Y4tacker and 4ra1n from Y4secTeam (finder)

References:

https://github.com/apache/dolphinscheduler/pull/14991
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49109

