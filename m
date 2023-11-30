Received: (qmail 15968 invoked by uid 550); 30 Nov 2023 11:04:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24149 invoked from network); 30 Nov 2023 03:03:20 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <72789292-eb17-d220-4364-db1051ef6ad1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Nov 2023 03:02:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49620: Apache DolphinScheduler: Authenticated users could
 delete UDFs in resouece center they were not authorized 

Severity: moderate

Affected versions:

- Apache DolphinScheduler 2.0.0 before 3.1.0

Description:

Before DolphinScheduler version 3.1.0, the login user could delete UDF func=
tion in the resource center unauthorized(which almost used in sql task), wi=
th=C2=A0unauthorized=C2=A0access vulnerability(IDOR), but after version 3.1=
.0 we fixed this issue. We mark this cve as moderate level because it still=
 requires user login to operate, please upgrade to version 3.1.0 to avoid t=
his=C2=A0vulnerability

Credit:

Yuanheng Lab of zhongfu (finder)

References:

https://github.com/apache/dolphinscheduler/pull/10307
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49620

