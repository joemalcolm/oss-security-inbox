Received: (qmail 26574 invoked by uid 550); 16 Jul 2024 12:43:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29877 invoked from network); 16 Jul 2024 12:08:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <368e93a0-58c9-3809-8e07-60e84ee50eb6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jul 2024 12:06:38 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-39863: Apache Airflow: Potential XSS Vulnerability 

Severity: low

Affected versions:

- Apache Airflow before 2.9.3

Description:

Apache Airflow versions before 2.9.3 have a vulnerability that allows an au=
thenticated attacker to inject a malicious link when installing a provider.=
 Users are recommended to upgrade to version 2.9.3, which fixes this issue.

Credit:

Seokchan Yoon (https://github.com/ch4n3-yoon) (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/40475
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-39863

