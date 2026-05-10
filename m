Received: (qmail 15913 invoked by uid 550); 10 May 2026 19:40:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29764 invoked from network); 10 May 2026 19:34:40 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Shahar Epstein <shahar@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f2c0fa1d-d4ec-2bf9-f73d-67c19f54fb56@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 10 May 2026 19:34:26 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-41018: Apache Airflow Providers Elasticsearch:
 Elasticsearch task-log handlers leak credentials embedded in the host URL 

Severity: low=20

Affected versions:

- Apache Airflow Providers Elasticsearch (apache-airflow-providers-elastics=
earch) before 6.5.3

Description:

The Elasticsearch logging provider, when configured with a `host` URL that =
embeds credentials (for example ` https://user:password@server.example.com:=
9200` ), wrote the full host URL =E2=80=94 including the embedded credentia=
ls =E2=80=94 into task logs. Any user with task-log read permission could h=
arvest the backend credentials. The two providers are forks of the same cod=
ebase and shared the same bug. Users are advised to upgrade to a fixed vers=
ion of `apache-airflow-providers-elasticsearch` and, as a defense-in-depth =
measure, configure the backend credentials via a secret backend rather than=
 embedding them in the `[elasticsearch]` URL.

Credit:

Aleksandr Sozinov (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65349
https://github.com/apache/airflow/pull/65509
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-41018

