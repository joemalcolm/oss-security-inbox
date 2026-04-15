Received: (qmail 19972 invoked by uid 550); 15 Apr 2026 15:29:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 27910 invoked from network); 15 Apr 2026 11:34:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jarek Potiuk <potiuk@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <549bceab-4877-3595-128c-d488f68f86bb@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Apr 2026 11:31:58 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-25219: Apache Airlfow: Sensitive Azure Service Bus
 connection string (and possibly other providers) exposed to users with
 view access 

Severity: low=20

Affected versions:

- Apache Airlfow (apache-airflow) before 3.2.0

Description:

The `access_key` and `connection_string` connection properties were not mar=
ked as sensitive names in secrets masker. This means that user with read pe=
rmission could see the values in Connection UI, as well as when Connection =
was accidently logged to logs, those values could be seen in the logs. Azur=
e Service Bus used those properties to store sensitive values. Possibly oth=
er providers could be also affected if they used the same fields to store s=
ensitive data.

If you used Azure Service Bus connection with those values set or if you ha=
ve other connections with those values storing senesitve values, you should=
 upgrade Airflow to 3.2.0.

Credit:

Saurabh Banawar (finder)

References:

https://github.com/apache/airflow/pull/61580
https://github.com/apache/airflow/pull/61582
https://airflow.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-25219

