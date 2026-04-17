Received: (qmail 17708 invoked by uid 550); 17 Apr 2026 15:54:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 4049 invoked from network); 17 Apr 2026 10:34:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c7bd19a3-9560-12fb-0625-3ec6e19f1d71@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 17 Apr 2026 10:34:42 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-25917: Apache Airflow: API extra-links triggers XCom
 deserialization/class instantiation (Airflow 3.1.5) 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.0

Description:

Dag Authors, who normally should not be able to execute code in the webserv=
er context could craft XCom payload causing the webserver to execute arbitr=
ary code. Since Dag Authors are already highly trusted, severity of this is=
sue is Low.

Users are recommended to upgrade to Apache Airflow 3.2.0, which fixes the i=
ssue.

Credit:

Mahammad Huseynkhanli (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/61641
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-25917

