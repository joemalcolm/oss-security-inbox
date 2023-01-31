Received: (qmail 3638 invoked by uid 550); 31 Jan 2023 07:36:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32138 invoked from network); 31 Jan 2023 07:31:53 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a973ae81-dcc2-d506-50e2-a62d46321a32@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 31 Jan 2023 07:31:21 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-44645: Apache Linkis (incubating): The DatasourceManager
 module has a serialization attack vulnerability 

Severity: important

Description:

In Apache Linkis <=3D1.3.0 when used with the MySQL Connector/J, a deserial=
ization vulnerability with possible remote code execution impact exists whe=
n an attacker has write access to a database and configures new datasource =
with a MySQL data source and malicious parameters. Therefore, the parameter=
s in the jdbc url should be blacklisted. Versions of Apache Linkis <=3D 1.3=
.0 will be affected.

We recommend users to upgrade the version of Linkis to version 1.3.1.

Credit:

Tian Xin WU (Bearcat) , Vulnerability Researcher at Numen Cyber =E2=80=8B=
=E2=80=8B=E2=80=8B=E2=80=8BLabs, Singapore. (reporter)
Department of Cyber Security Research (Jumbo, Unc1e) (remediation developer)
s3gundo of Hundsun Tech  (remediation developer)

References:

https://linkis.incubator.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2022-44645

