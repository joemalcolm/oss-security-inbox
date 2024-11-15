Received: (qmail 20351 invoked by uid 550); 15 Nov 2024 06:59:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 9829 invoked from network); 15 Nov 2024 06:56:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8011b6a8-aa8b-28d6-c866-b8e9020d7b87@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 Nov 2024 06:54:39 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45784: Apache Airflow: Sensitive configuration values are
 not masked in the logs by default 

Severity: moderate

Affected versions:

- Apache Airflow before 2.10.3

Description:

Apache Airflow versions before 2.10.3 contain a vulnerability that could ex=
pose sensitive configuration variables in task logs. This vulnerability all=
ows DAG authors to unintentionally or intentionally log sensitive configura=
tion variables. Unauthorized users could access these logs, potentially exp=
osing critical data that could be exploited to compromise the security of t=
he Airflow deployment. In version 2.10.3, secrets are now masked in task lo=
gs to prevent sensitive configuration variables from being exposed in the l=
ogging output. Users should upgrade to Airflow 2.10.3 or the latest version=
 to eliminate this vulnerability.=C2=A0If you suspect that DAG authors coul=
d have logged the secret values to the logs and that your logs are not addi=
tionally protected, it is also recommended that you update those secrets.

Credit:

Saurabh Banawar (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/43040
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45784

