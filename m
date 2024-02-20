Received: (qmail 11758 invoked by uid 550); 20 Feb 2024 12:08:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19809 invoked from network); 20 Feb 2024 05:50:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jiajie Zhong <zhongjiajie@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cf0314a3-2234-a4a9-de98-f110f6f43ab4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 05:53:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50270: Apache DolphinScheduler: Session do not expire
 after password change 

Severity: important

Affected versions:

- Apache DolphinScheduler 1.3.8 through 3.2.0

Description:

Session Fixation Apache DolphinScheduler before version 3.2.0, which sessio=
n is still valid after the password change.

Users are recommended to upgrade to version 3.2.1, which fixes this issue.

Credit:

lujiefsi (finder)

References:

https://github.com/apache/dolphinscheduler/pull/15219
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-50270

