Received: (qmail 7971 invoked by uid 550); 31 May 2026 11:44:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1895 invoked from network); 31 May 2026 11:36:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rahul Vats <rahulvats@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <261e4259-b301-044a-b35f-0d21722a43c1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 31 May 2026 11:35:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40861: Apache Airflow: Arbitrary File Read via Log
 Symlink following in FileTaskHandler 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.2.2

Description:

A Dag author could either (a) create a symlink under their task's log direc=
tory pointing to an arbitrary file readable by the API server process (read=
-path attack =E2=80=94 e.g. `/etc/passwd` or `airflow.cfg`) or (b) supply a=
 `task_id` containing `..` sequences accepted by the Task SDK's `KEY_REGEX`=
 (write-path attack), and in both cases the FileTaskHandler resolves the lo=
g path outside the configured `base_log_folder`, leaking or overwriting arb=
itrary files. Only affects deployments where the worker log folder is share=
d with the API server. Users are advised to upgrade to `apache-airflow` 3.2=
.2 or later. As a defense-in-depth mitigation, deploy the worker and API se=
rver with separate log volumes so that worker-controlled paths cannot reach=
 the API server's filesystem.

Credit:

Silas Boch (finder)
Lakshmikanthan K (letchupkt) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/65325
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40861

