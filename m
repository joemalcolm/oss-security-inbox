Received: (qmail 23832 invoked by uid 550); 24 Jan 2024 12:50:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26145 invoked from network); 24 Jan 2024 11:04:34 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <47c1e8f8-cd39-813f-13b4-54988cb1c6ae@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jan 2024 11:06:28 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51702: Apache Airflow CNCF Kubernetes provider, Apache
 Airflow: Kubernetes configuration file saved without encryption in the
 Metadata and logged as plain text in the Triggerer service 

Severity: moderate

Affected versions:

- Apache Airflow CNCF Kubernetes provider 5.2.0 before 7.0.0
- Apache Airflow 2.3.0 before 2.6.1

Description:

Since version 5.2.0, when using deferrable mode with the path of a Kubernet=
es configuration file for authentication, the Airflow worker serializes thi=
s configuration file as a dictionary and sends it to the triggerer by stori=
ng it in metadata without any encryption. Additionally, if used with an Air=
flow version between 2.3.0 and 2.6.0, the configuration dictionary will be =
logged as plain text in the triggerer service without masking. This allows =
anyone with access to the metadata or triggerer log to obtain the configura=
tion file and use it to access the Kubernetes cluster.

This behavior was changed in version 7.0.0, which stopped serializing the f=
ile contents and started providing the file path instead to read the conten=
ts into the trigger. Users are recommended to upgrade to version 7.0.0, whi=
ch fixes this issue.

Credit:

Hussein Awala (finder)
Hussein Awala (remediation developer)

References:

https://github.com/apache/airflow/pull/29498
https://github.com/apache/airflow/pull/30110
https://github.com/apache/airflow/pull/36492
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-51702

