Received: (qmail 17936 invoked by uid 550); 10 Apr 2023 08:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17668 invoked from network); 10 Apr 2023 06:15:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Heping Wang <peacewong@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0967fa7d-85a0-9519-67b7-9a5741de4a04@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 10 Apr 2023 06:15:02 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-29216: Apache Linkis DatasourceManager module has a
 deserialization command execution 

Severity: important

Description:

In Apache Linkis <=3D1.3.1, because the parameters are not
effectively filtered, the attacker uses the MySQL data source and malicious=
 parameters to
configure a new data source to trigger a deserialization vulnerability, eve=
ntually leading to
remote code execution.
 Versions of Apache Linkis <=3D 1.3.0 will be affected.
We recommend users upgrade the version of Linkis to version 1.3.2.

Credit:

sw0rd1ight (reporter)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2023-29216

