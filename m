Received: (qmail 28403 invoked by uid 550); 21 Aug 2024 14:56:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5675 invoked from network); 21 Aug 2024 14:09:42 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <2c1e7d56-1dd3-5733-4b4c-5f792d6ac3cf@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 21 Aug 2024 14:08:00 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41937: Apache Airflow: Stored XSS Vulnerability on
 provider link 

Severity: low

Affected versions:

- Apache Airflow before 2.10.0

Description:

Apache Airflow, versions before 2.10.0, have a vulnerability that allows th=
e developer of a malicious provider to execute a cross-site scripting attac=
k when clicking on a provider documentation link. This would require the pr=
ovider to be installed on the web server and the=C2=A0user to click the pro=
vider link.
Users should upgrade to 2.10.0 or later, which fixes this vulnerability.

Credit:

sw0rd1ight (https://github.com/sw0rd1ight) (finder)
Amogh Desai (remediation developer)

References:

https://github.com/apache/airflow/pull/40933
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-41937

