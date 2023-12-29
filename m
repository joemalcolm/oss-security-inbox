Received: (qmail 5803 invoked by uid 550); 29 Dec 2023 12:28:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1934 invoked from network); 29 Dec 2023 02:53:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c0001c7d-bee4-9512-e8c7-4c5e6a5cf61d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 Dec 2023 02:54:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49299: Apache DolphinScheduler: Arbitrary js execute as
 root for authenticated users 

Severity: important

Affected versions:

- Apache DolphinScheduler through 3.1.9

Description:

Improper Input Validation vulnerability in Apache DolphinScheduler. An=C2=
=A0authenticated user can cause arbitrary, unsandboxed javascript to be exe=
cuted on the server.This issue affects Apache DolphinScheduler: through 3.1=
.9.

Users are recommended to upgrade to version 3.1.9, which fixes the issue.

Credit:

Eluen Siebene (finder)

References:

https://github.com/apache/dolphinscheduler/pull/15228
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49299

