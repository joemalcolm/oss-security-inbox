Received: (qmail 3508 invoked by uid 550); 19 Sep 2025 15:54:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23835 invoked from network); 19 Sep 2025 05:26:26 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chen Xia <casion@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0a7e9f92-c130-8bdb-93c5-a45bceb38a60@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Sep 2025 05:26:14 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-59355: Apache Linkis: Password Exposure 

Severity: low=20

Affected versions:

- Apache Linkis 1.0.0 through 1.7.0

Description:

A vulnerability.

When org.apache.linkis.metadata.util.HiveUtils.decode() fails to perform Ba=
se64 decoding, it records the complete input parameter string in the log vi=
a logger.error(str + "decode failed", e). If the input parameter contains s=
ensitive information such as Hive Metastore keys, plaintext passwords will =
be left in the log files when decoding fails, resulting in information leak=
age.


Affected Scope
Component: Sensitive fields in hive-site.xml (e.g., javax.jdo.option.Connec=
tionPassword) or other fields encoded in Base64.
Version: Apache Linkis 1.0.0 =E2=80=93 1.7.0


Trigger Conditions
The value of the configuration item is an invalid Base64 string.
Log files are readable by users other than hive-site.xml administrators.


Severity: Low
The probability of Base64 decoding failure is low.
The leakage is only triggered when logs at the Error level are exposed.

Remediation
Apache Linkis 1.8.0 and later versions have replaced the log with desensiti=
zed content.
logger.error("URL decode failed: {}", e.getMessage());   // =E4=B8=8D=E5=86=
=8D=E8=BE=93=E5=87=BA str


Users are recommended to upgrade to version 1.8.0, which fixes the issue.

Credit:

Kyler (finder)
kinghao (analyst)
Le1a (remediation developer)
kinghao (remediation reviewer)

References:

https://linkis.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-59355

