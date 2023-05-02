X-Quarantine-ID: <6sKwjBqRzzVc>
Received: (qmail 19896 invoked by uid 550); 2 May 2023 13:22:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14073 invoked from network); 2 May 2023 08:36:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ce735930-fed4-b1b2-b4a0-6bdc027ca190@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 May 2023 08:36:01 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-32007: Apache Spark: Shell command injection via Spark UI

Severity: important

Affected versions:

- Apache Spark 3.1.1 before 3.2.2

Description:

** UNSUPPORTED WHEN ASSIGNED ** The Apache Spark UI offers the possibility =
to enable ACLs via the configuration option spark.acls.enable. With an auth=
entication filter, this checks whether a user has access permissions to vie=
w or modify the application. If ACLs are enabled, a code path in HttpSecuri=
tyFilter can allow someone to perform impersonation by providing an arbitra=
ry user name. A malicious user might then be able to reach a permission che=
ck function that will ultimately build a Unix shell command based on their =
input, and execute it. This will result in arbitrary shell command executio=
n as the user Spark is currently running as. This issue was disclosed earli=
er as CVE-2022-33891, but incorrectly claimed version 3.1.3 (which has sinc=
e gone EOL) would not be affected.

NOTE: This vulnerability only affects products that are no longer supported=
 by the maintainer.

Users are recommended to upgrade to a supported version of Apache Spark, su=
ch as version 3.4.0.

Credit:

Sven Krewitt, Flashpoint (reporter)

References:

https://www.cve.org/CVERecord?id=3DCVE-2022-33891
https://spark.apache.org/security.html
https://spark.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-32007

