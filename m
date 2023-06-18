Received: (qmail 11693 invoked by uid 550); 18 Jun 2023 13:53:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7982 invoked from network); 18 Jun 2023 13:48:51 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Elad Kalif <eladkal@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <9d0fbd7b-9a2c-ea9c-7c19-66f696291519@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 18 Jun 2023 13:48:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-35005: Apache Airflow: Information disclosure on
 configuration view 

Severity: low

Affected versions:

- Apache Airflow 2.5.0 before 2.6.2

Description:

In Apache Airflow, some potentially sensitive values were being shown to th=
e user in certain situations.








This vulnerability is mitigated by the fact configuration is not shown in t=
he UI by default (only if `[webserver] expose_config` is set to `non-sensit=
ive-only`), and not all uncensored values are actually sentitive.





This issue affects Apache Airflow: from 2.5.0 before 2.6.2.

Credit:

Piotr Chomiak from Astro product security team (finder)

References:

https://github.com/apache/airflow/pull/31788
https://github.com/apache/airflow/pull/31820
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-35005

