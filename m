Received: (qmail 11762 invoked by uid 550); 11 Jul 2023 15:31:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25876 invoked from network); 11 Jul 2023 15:18:35 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <74f238d9-5533-2bc4-0597-1c662235b0a1@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:18:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-22887: Apache Airflow path traversal by authenticated
 user 

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, is affected by a vulnerability that =
allows an attacker to perform unauthorized file access outside the intended=
 directory structure by manipulating the run_id parameter. This vulnerabili=
ty is considered low since it requires an authenticated user to exploit it.=
 It is recommended to upgrade to a version that is not affected

Credit:

Zhipeng Zhang (@Timon8) (finder)

References:

https://github.com/apache/airflow/pull/32293
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-22887

