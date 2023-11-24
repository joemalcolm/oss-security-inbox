Received: (qmail 23901 invoked by uid 550); 24 Nov 2023 13:02:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14150 invoked from network); 24 Nov 2023 05:29:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Zihao Xiang <zihaoxiang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9a5af39c-4833-7369-6f78-6bcc3f1d9687@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 24 Nov 2023 05:29:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49068: Apache DolphinScheduler: Information Leakage
 Vulnerability 

Severity: important

Affected versions:

- Apache DolphinScheduler before 3.2.1

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache DolphinScheduler.This issue affects Apache DolphinScheduler: 3.2.1.

Users are recommended to upgrade to version [FIXED_VERSION], which fixes th=
e issue.

References:

https://github.com/apache/dolphinscheduler/pull/15192
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49068

