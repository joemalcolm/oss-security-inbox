Received: (qmail 24333 invoked by uid 550); 24 Jan 2024 12:50:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26238 invoked from network); 24 Jan 2024 11:04:39 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c3e431d2-61c6-ec2a-89e2-830e0eb9c84c@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jan 2024 11:06:36 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-50943: Apache Airflow: Potential pickle deserialization
 vulnerability in XComs 

Severity: low

Affected versions:

- Apache Airflow before 2.8.1

Description:

Apache Airflow, versions before 2.8.1, have a vulnerability that allows a p=
otential attacker to poison the XCom data by bypassing the protection of "e=
nable_xcom_pickling=3DFalse" configuration setting resulting in poisoned da=
ta after XCom deserialization. This vulnerability is considered low since i=
t requires a DAG author to exploit it. Users are recommended to upgrade to =
version 2.8.1 or later, which fixes this issue.

Credit:

Peng Zhou (zpbrent@gmail.com) (finder)
Hussein Awala (remediation developer)

References:

https://github.com/apache/airflow/pull/36255
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-50943

