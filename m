Received: (qmail 28580 invoked by uid 550); 9 Apr 2026 15:37:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1158 invoked from network); 9 Apr 2026 11:08:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f6dc85c7-228e-01d8-1b1d-ba5f1cb063ff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Apr 2026 11:07:53 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-57735: Apache Airflow: Airflow Logout Not Invalidating
 JWT 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.0.0 before 3.2.0

Description:

When user logged out, the JWT token the user had authtenticated with was no=
t invalidated, which could lead to reuse of that token in case it was inter=
cepted. In Airflow 3.2 we implemented the mechanism that implements token i=
nvalidation at logout. Users who are concerned about the logout scenario an=
d possibility of intercepting the tokens, should upgrade to Airflow 3.2+



Users are recommended to upgrade to version 3.2.0, which fixes this issue.

Credit:

Saurabh Banawar (finder)
Anish Giri (remediation developer)
vincent beck (remediation developer)

References:

https://github.com/apache/airflow/pull/61339
https://github.com/apache/airflow/pull/56633
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-57735

