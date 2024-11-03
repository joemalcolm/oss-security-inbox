Received: (qmail 12207 invoked by uid 550); 3 Nov 2024 19:04:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9793 invoked from network); 3 Nov 2024 05:46:54 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Li Yang <liyang@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0e79b056-3a53-eb55-ceb4-e72da183f5a4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 03 Nov 2024 05:46:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-23590: Apache Kylin: Session fixation in web interface 

Severity: low

Affected versions:

- Apache Kylin 2.0.0 before 5.0.0

Description:

Session Fixation vulnerability in Apache Kylin.

This issue affects Apache Kylin: from 2.0.0 through 4.x.

Users are recommended to upgrade to version 5.0.0 or above, which fixes the=
 issue.

Credit:

XJB Security Team (reporter)

References:

https://kylin.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-23590

