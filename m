Received: (qmail 11536 invoked by uid 550); 11 Jul 2023 15:31:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 21794 invoked from network); 11 Jul 2023 15:16:01 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <16f05379-b48d-bdbe-ba77-367e6c01fa9e@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:15:49 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-35908: Apache Airflow: Access to DAGs without relevant
 permission 

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, is affected by a vulnerability that =
allows unauthorized read access to a DAG through the URL.=C2=A0It is recomm=
ended to upgrade to a version that is not affected

Credit:

Name : Karthikeyan Singaravelan  Employer : Visa (finder)

References:

https://github.com/apache/airflow/pull/32014
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-35908

