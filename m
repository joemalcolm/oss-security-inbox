Received: (qmail 32446 invoked by uid 550); 13 Oct 2023 15:21:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26099 invoked from network); 13 Oct 2023 15:14:14 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <121d245e-3c3a-3933-3831-63894a9caeff@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 13 Oct 2023 15:14:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-45348: Apache Airflow: Configuration information leakage
 vulnerability 

Severity: important

Affected versions:

- Apache Airflow 2.7.0 before 2.7.2

Description:

Apache Airflow, versions 2.7.0 and 2.7.1, is affected by a vulnerability th=
at allows an authenticated user to retrieve sensitive configuration informa=
tion when the "expose_config" option is set to "non-sensitive-only". The `e=
xpose_config` option is False by default.
It is recommended to upgrade to a version that is not affected.

Credit:

L3yx of Syclover Security Team (finder)
Hussein Awala (remediation developer)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-45348

