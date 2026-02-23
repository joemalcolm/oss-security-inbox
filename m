Received: (qmail 12201 invoked by uid 550); 23 Feb 2026 23:34:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28266 invoked from network); 23 Feb 2026 23:29:25 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <57f4e0bd-c1f2-f44f-7051-788101c62acc@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 23 Feb 2026 23:28:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-56373: Apache Airflow: SSTI to Code Execution in Airflow
 through Shared DB Information 

Severity: medium=20

Affected versions:

- Apache Airflow (apache-airflow) before 2.11.1

Description:

DAG Author (who already has quite a lot of permissions) could manipulate da=
tabase of Airflow 2 in the way to execute arbitrary code in the web-server =
context, which they should normally not be able to do, leading to potential=
ly remote code execution in the context of web-server (server-side) as a re=
sult of a user viewing historical task information.

The functionality responsible for that (log template history) has been disa=
bled by default in 2.11.1 and users should upgrade to Airflow 3 if they wan=
t to continue to use log template history. They can also manually modify hi=
storical log file names if they want to see historical logs that were gener=
ated before the last log template change.

Credit:

Seokchan Yoon. (finder)

References:

https://github.com/apache/airflow/pull/61880
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-56373

