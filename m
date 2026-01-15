Received: (qmail 15703 invoked by uid 550); 15 Jan 2026 21:37:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3852 invoked from network); 15 Jan 2026 20:24:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <bd6d78f8-5458-d3f0-9fe1-806b534dcf93@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 15 Jan 2026 20:23:55 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-68675: Apache Airflow: proxy credentials for various
 providers might leak in task logs 

Severity: low=20

Affected versions:

- Apache Airflow (apache-airflow) before 3.1.6

Description:

In Apache Airflow versions before 3.1.6, the proxies and proxy fields withi=
n a Connection may include proxy URLs containing embedded authentication in=
formation. These fields were not treated as sensitive by default and theref=
ore were not automatically masked in log output. As a result, when such con=
nections are rendered or printed to logs, proxy credentials embedded in the=
se fields could be exposed.

Users are recommended to upgrade to 3.1.6 or later, which fixes this issue

Credit:

lwlkr https://github.com/kwkr (finder)
Ankit Chaurasia (remediation developer)

References:

https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-68675

