Received: (qmail 28665 invoked by uid 550); 23 Feb 2024 17:10:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13369 invoked from network); 23 Feb 2024 16:31:44 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0bee983b-bcc5-4492-d723-4c61122b071e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 23 Feb 2024 16:33:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23320: Apache DolphinScheduler: Arbitrary js execution as
 root for authenticated users 

Severity: important

Affected versions:

- Apache DolphinScheduler before 3.2.1

Description:

Improper Input Validation vulnerability in Apache DolphinScheduler. An auth=
enticated user can cause arbitrary, unsandboxed javascript to be executed o=
n the server.

This issue is a legacy of CVE-2023-49299. We didn't fix it completely in CV=
E-2023-49299, and we added one more patch to fix it.

This issue affects Apache DolphinScheduler: until 3.2.1.

Users are recommended to upgrade to version 3.2.1, which fixes the issue.

Credit:

xuesong.zhou (finder)
Nbxiglk (finder)
Huang Atao (finder)

References:

https://github.com/apache/dolphinscheduler/pull/15487
https://lists.apache.org/thread/tnf99qoc6tlnwrny4t1zk6mfszgdsokm
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-23320

