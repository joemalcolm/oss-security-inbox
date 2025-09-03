Received: (qmail 11893 invoked by uid 550); 3 Sep 2025 07:13:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 24009 invoked from network); 3 Sep 2025 05:05:49 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Lidong Dai <lidongdai@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e6cf0269-c893-5daf-55cd-b1b31df462e1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Sep 2025 05:05:37 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-43115: Apache DolphinScheduler: Alert Script Attack 

Severity: low=20

Affected versions:

- Apache DolphinScheduler before 3.2.2

Description:

Improper Input Validation vulnerability in Apache DolphinScheduler. An auth=
enticated user can execute any shell script server by alert script.


This issue affects Apache DolphinScheduler: before 3.2.2.

Users are recommended to upgrade to version 3.3.1, which fixes the issue.

Credit:

L0ne1y (reporter)

References:

https://lists.apache.org/thread/lh42ktbbg87wrr6854rd7kho83wxc6f9
https://dolphinscheduler.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-43115

