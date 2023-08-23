Received: (qmail 28386 invoked by uid 550); 23 Aug 2023 17:29:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3473 invoked from network); 23 Aug 2023 10:33:33 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ephraim Anierobi <ephraimanierobi@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <0227aa7c-d06f-93d7-34f2-931d922c0c53@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 23 Aug 2023 10:33:16 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-39441: Apache Airflow SMTP Provider, Apache Airflow IMAP
 Provider, Apache Airflow: SMTP/IMAP client components allowed MITM due to
 missing Certificate Validation 

Severity: moderate

Affected versions:

- Apache Airflow SMTP Provider before 1.30
- Apache Airflow IMAP Provider before 3.3.0
- Apache Airflow before 2.7.0

Description:

Apache Airflow SMTP Provider before 1.3.0, Apache Airflow IMAP Provider bef=
ore 3.3.0, and=C2=A0Apache Airflow before 2.7.0 are affected by the=C2=A0Va=
lidation of OpenSSL Certificate vulnerability.

The default SSL context with SSL library did not check a server's X.509=C2=
=A0certificate.=C2=A0 Instead, the code accepted any certificate, which cou=
ld=C2=A0result in the disclosure of mail server credentials or mail content=
s=C2=A0when the client connects to an attacker in a MITM position.

Users are strongly advised to upgrade to Apache Airflow version 2.7.0 or ne=
wer, Apache Airflow IMAP Provider version 3.3.0 or newer, and Apache Airflo=
w SMTP Provider version 1.3.0 or newer to mitigate the risk associated with=
 this vulnerability

Credit:

Martin Schobert, Pentagrid AG (finder)

References:

https://github.com/apache/airflow/pull/33075
https://github.com/apache/airflow/pull/33108
https://github.com/apache/airflow/pull/33070
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-39441

