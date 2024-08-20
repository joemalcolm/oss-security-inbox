Received: (qmail 30545 invoked by uid 550); 20 Aug 2024 12:48:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1793 invoked from network); 20 Aug 2024 03:09:37 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: ShunFeng Cai <caishunfeng@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <235360eb-087e-31a0-24df-ec12b5be552e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Aug 2024 03:08:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-43202: Apache DolphinScheduler: Remote Code Execution
 Vulnerability 

Severity: important

Affected versions:

- Apache DolphinScheduler 3.0.0 before 3.2.2

Description:

Exposure of Remote Code Execution in Apache Dolphinscheduler.

This issue affects Apache DolphinScheduler: before 3.2.2.=20

We recommend users to upgrade Apache DolphinScheduler to version 3.2.2, whi=
ch fixes the issue.

Credit:

an4er (reporter)

References:

https://github.com/apache/dolphinscheduler/pull/15758
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-43202

