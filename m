Received: (qmail 4066 invoked by uid 550); 17 Mar 2026 11:55:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1790 invoked from network); 17 Mar 2026 06:22:12 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <eae25612-84de-4f9b-e0d0-892d5cc76b47@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 17 Mar 2026 06:21:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-30911: Apache Airflow: Execution API HITL Endpoints
 Missing Per-Task Authorization 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) 3.1.0 before 3.1.8

Description:

Apache Airflow versions 3.1.0 through 3.1.7 missing authorization vulnerabi=
lity in the Execution API's Human-in-the-Loop (HITL) endpoints that allows =
any authenticated task instance to read, approve, or reject HITL workflows =
belonging to any other task instance.


Users are recommended to upgrade to Apache Airflow 3.1.8 or later, which re=
solves this issue.

Credit:

Kai Aizen (finder)
Aritra Basu (remediation developer)

References:

https://github.com/apache/airflow/pull/62886
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-30911

