Received: (qmail 13848 invoked by uid 550); 11 Jul 2023 15:31:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7523 invoked from network); 11 Jul 2023 15:28:24 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8fdef484-31c0-fb48-0c7d-f318688b5e7d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:28:03 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22888: Apache Airflow: Scheduler remote DoS 

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, is affected by a vulnerability that =
allows an attacker to cause a service disruption by manipulating the run_id=
 parameter. This vulnerability is considered low since it requires an authe=
nticated user to exploit it. It is recommended to upgrade to a version that=
 is not affected

Credit:

Zhipeng Zhang (@timon8) (finder)

References:

https://github.com/apache/airflow/pull/32293
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22888

