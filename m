Received: (qmail 13733 invoked by uid 550); 17 Apr 2026 15:54:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18279 invoked from network); 17 Apr 2026 10:29:07 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b67b94b2-7f13-6c8a-70c6-c7ee6cbddd8f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 10:28:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-30898: Apache Airflow: Bad example of BashOperator shell
 injection via dag_run.conf 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.0

Description:

An example of BashOperator in Airflow documentation suggested a way of pass=
ing dag_run.conf in the way that could cause unsanitized user input to be u=
sed to escalate privileges of UI user to allow execute code on worker. User=
s should review if any of their own DAGs have adopted this incorrect advice.

Credit:

Peyton Kennedy (p80n-sec) from Endor Labs (finder)
Kevin Yang (remediation developer)

References:

https://github.com/apache/airflow/pull/64129
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-30898

