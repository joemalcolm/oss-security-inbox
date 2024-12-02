Received: (qmail 1436 invoked by uid 550); 2 Dec 2024 16:23:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16105 invoked from network); 2 Dec 2024 15:57:57 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Ethan Rose <erose@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b6f98381-1069-fe31-7cde-fca6a50b0740@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 02 Dec 2024 15:57:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45106: Apache Ozone: Improper authentication when
 generating S3 secrets 

Severity: moderate

Affected versions:

- Apache Ozone 1.4.0

Description:

Improper authentication of an HTTP endpoint in the S3 Gateway of Apache Ozo=
ne 1.4.0 allows any authenticated Kerberos user to revoke and regenerate th=
e S3 secrets of any other user. This is only possible if:
  *  ozone.s3g.secret.http.enabled is set to true. The default value of thi=
s configuration is false.
  *  The user configured in ozone.s3g.kerberos.principal is also configured=
 in ozone.s3.administrators or ozone.administrators.


Users are recommended to upgrade to Apache Ozone version 1.4.1 which disabl=
es the affected endpoint.

This issue is being tracked as HDDS-9203=20

Credit:

Ethan Rose (reporter)
Ivan Zlenko (remediation developer)

References:

https://ozone.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2024-45106
https://issues.apache.org/jira/browse/HDDS-9203

