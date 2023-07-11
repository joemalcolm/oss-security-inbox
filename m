Received: (qmail 12190 invoked by uid 550); 11 Jul 2023 15:31:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30033 invoked from network); 11 Jul 2023 15:21:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6eff6ca4-f60c-7624-562b-6d4835eb7f0d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 11 Jul 2023 15:20:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-36543: Apache Airflow: ReDoS via dags function 

Severity: low

Affected versions:

- Apache Airflow before 2.6.3

Description:

Apache Airflow, versions before 2.6.3, has a vulnerability where an authent=
icated user can use crafted input to make the current request hang.=C2=A0It=
 is recommended to upgrade to a version that is not affected

Credit:

National Cyber Security VietNam (NCS VietNam) (finder)
hungtd (finder)

References:

https://github.com/apache/airflow/pull/32060
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-36543

