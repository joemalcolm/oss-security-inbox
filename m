Received: (qmail 20254 invoked by uid 550); 3 Jun 2025 15:38:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 29800 invoked from network); 3 Jun 2025 11:38:02 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Arnout Engelen <engelen@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <f6ce2529-e353-e7ec-afca-61d1e96ebfb3@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 03 Jun 2025 11:36:54 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-46548: Apache Pekko Management, Apache Pekko Management,
 Apache Pekko Management: management API basic authentication is not
 effective 

Severity: moderate=20

Affected versions:

- Apache Pekko Management (org.apache.pekko:pekko-management_2.12) 1.0.0 be=
fore 1.1.1
- Apache Pekko Management (org.apache.pekko:pekko-management_2.13) 1.0.0 be=
fore 1.1.1
- Apache Pekko Management (org.apache.pekko:pekko-management_3) 1.0.0 befor=
e 1.1.1

Description:

If you enable Basic Authentication in Pekko Management using the Java DSL, =
the authenticator may not be properly applied.


Users that rely on authentication instead of making sure the Management API=
 ports are only available to trusted users are recommended to upgrade to ve=
rsion 1.1.1, which fixes this issue.

Credit:

Per-Ivar Bakke of GE Vernova (finder)

References:

https://github.com/apache/pekko-management/pull/418
https://github.com/akka/akka-management/pull/1385
https://pekko.apache.org
https://www.cve.org/CVERecord?id=3DCVE-2025-46548

