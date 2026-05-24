Received: (qmail 30133 invoked by uid 550); 24 May 2026 21:22:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 15543 invoked from network); 24 May 2026 20:13:10 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jens Scheffler <jscheffl@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ec3d4210-b550-dd83-c79d-90594bcfcbf4@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 20:12:05 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-45361: Apache Airflow Google provider: SSH host key
 verification disabled in ComputeEngineSSHHook (paramiko AutoAddPolicy
 default) 

Severity: low=20

Affected versions:

- Apache Airflow Google provider (apache-airflow-providers-google) before 2=
2.0.0

Description:

Apache Airflow providers-google's `ComputeEngineSSHHook` disables SSH host-=
key verification by default, exposing SSH traffic between an Airflow worker=
 and a Compute Engine VM to in-path network attackers who can intercept or =
modify the session. Users are advised to upgrade to `apache-airflow-provide=
rs-google` 22.0.0 or later.

Credit:

Michael Winser (Mythos scan =E2=80=94 internal partner; no credit-form ques=
tion needed) (finder)
Jarek Potiuk (remediation developer)

References:

https://github.com/apache/airflow/pull/66746
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-45361

