Received: (qmail 28053 invoked by uid 550); 16 Jul 2024 12:43:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32709 invoked from network); 16 Jul 2024 12:10:21 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <867990f8-9e5c-a0aa-d56c-3ece9e96192c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jul 2024 12:08:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-39877: Apache Airflow: DAG Author Code Execution
 possibility in airflow-scheduler 

Severity: important

Affected versions:

- Apache Airflow 2.4.0 before 2.9.3

Description:

Apache Airflow 2.4.0, and versions before 2.9.3, has a vulnerability that a=
llows authenticated DAG authors to craft a doc_md parameter in a way that c=
ould execute arbitrary code in the scheduler context, which should be forbi=
dden according to the Airflow Security model. Users should upgrade to versi=
on 2.9.3 or later which has removed the vulnerability.

Credit:

Seokchan Yoon (https://github.com/ch4n3-yoon) (finder)
Wei Lee (remediation developer)

References:

https://github.com/apache/airflow/pull/40522
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-39877

