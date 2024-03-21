Received: (qmail 16030 invoked by uid 550); 21 Mar 2024 14:17:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32344 invoked from network); 21 Mar 2024 08:46:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Mingyu Chen <morningman@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <cbd6f2f4-b014-b722-2e1f-98f00bdc5379@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Mar 2024 08:48:20 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-26307: Apache Doris: Possible race condition 

Severity: low

Affected versions:

- Apache Doris before 1.2.8
- Apache Doris before 2.0.4

Description:

Possible race condition vulnerability in Apache Doris.
Some of code using `chmod()` method. This method run the risk of someone re=
naming the file out from under user and chmodding the wrong file.
This could theoretically happen, but the impact would be minimal.
This issue affects Apache Doris: before 1.2.8, before 2.0.4.

Users are recommended to upgrade to version 2.0.4, which fixes the issue.

References:

https://doris.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-26307

