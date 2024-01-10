Received: (qmail 23682 invoked by uid 550); 10 Jan 2024 13:29:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20373 invoked from network); 10 Jan 2024 03:42:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Enxin Xie <linkinstar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <defb6632-f093-dd84-c732-0940afc58391@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jan 2024 03:43:06 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-49619: Apache Answer: Repeated submissions using scripts
 resulted in an abnormal number of collections for questions. 

Severity: moderate

Affected versions:

- Apache Answer through 1.2.0

Description:

Concurrent Execution using Shared Resource with Improper Synchronization ('=
Race Condition') vulnerability in Apache Answer.

This issue affects Apache Answer: through 1.2.0.

Under normal circumstances, a user can only bookmark a question once, and w=
ill only increase the number of questions bookmarked once. However, repeat =
submissions through the script can increase the number of collection of the=
 question many times.

Users are recommended to upgrade to version [1.2.1], which fixes the issue.

Credit:

ek1ng (reporter)

References:

https://answer.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-49619

