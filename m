Received: (qmail 13902 invoked by uid 550); 12 Sep 2023 09:14:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1364 invoked from network); 12 Sep 2023 09:01:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <1e0d6c23-49ff-d833-ed26-bbdbeae93fd5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 Sep 2023 09:01:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-40611: Apache Airflow Dag Runs Broken Access Control
 Vulnerability 

Severity: low

Affected versions:

- Apache Airflow before 2.7.1

Description:

Apache Airflow, versions before 2.7.1, is affected by a vulnerability that =
allows=C2=A0authenticated and DAG-view authorized Users to modify some DAG =
run detail values when submitting notes. This could have them alter details=
 such as configuration parameters, start date, etc.

Users should upgrade to version 2.7.1 or later which has removed the vulner=
ability.

Credit:

happyhacking (finder)

References:

https://github.com/apache/airflow/pull/33413
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-40611

