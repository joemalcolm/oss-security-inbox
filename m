Received: (qmail 20282 invoked by uid 550); 9 Aug 2024 12:43:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16356 invoked from network); 9 Aug 2024 12:43:22 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: ShunFeng Cai <caishunfeng@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <58f6c8a8-214e-a728-5137-199133d9dcb2@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 09 Aug 2024 12:43:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-30188: Apache DolphinScheduler: Resource File Read And
 Write Vulnerability 

Severity: important

Affected versions:

- Apache DolphinScheduler 3.1.0 before 3.2.2

Description:

File read and write vulnerability in Apache DolphinScheduler ,=C2=A0 authen=
ticated users can illegally access additional resource files.
This issue affects Apache DolphinScheduler: from 3.1.0 before 3.2.2.

Users are recommended to upgrade to version 3.2.2, which fixes the issue.

Credit:

L0ne1y (reporter)
drun1baby (reporter)
Zevi (reporter)
Xun Bai (reporter)

References:

https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-30188

