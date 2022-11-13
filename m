Received: (qmail 6041 invoked by uid 550); 14 Nov 2022 09:25:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26550 invoked from network); 13 Nov 2022 22:49:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e300bb4d-e2ce-79e2-42fc-7ddcd4602a42@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 13 Nov 2022 22:48:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-40127: RCE in Apache Airflow <2.4.0 bash example 

Severity: low

Description:

A vulnerability in Example Dags of Apache Airflow allows an attacker with U=
I access who can trigger DAGs, to execute arbitrary commands via manually p=
rovided run_id parameter.  This issue affects Apache Airflow Apache Airflow=
 versions prior to 2.4.0.

Mitigation:

Do not enable example dags on systems that should not allow UI user to exec=
ute an arbitrary command.

Credit:

Apache Airflow PMC would like to thank L3yx of Syclover Security Team.

References:

https://github.com/apache/airflow/pull/25960

