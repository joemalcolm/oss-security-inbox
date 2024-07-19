Received: (qmail 9804 invoked by uid 550); 19 Jul 2024 12:13:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32182 invoked from network); 19 Jul 2024 10:12:58 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Rohit Yadav <rohit@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <a2ad502e-1c23-e0af-6030-90a41b556079@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jul 2024 10:11:23 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-41107: Apache CloudStack: SAML Signature Exclusion 

Severity: important

Affected versions:

- Apache CloudStack 4.5.0 through 4.18.2.1
- Apache CloudStack 4.19.0.0 through 4.19.0.2

Description:

The CloudStack SAML authentication (disabled by default) does not enforce s=
ignature check. In CloudStack environments where SAML authentication is ena=
bled, an attacker that initiates CloudStack SAML single sign-on authenticat=
ion can bypass SAML authentication by submitting a spoofed SAML response wi=
th no signature and known or guessed username and other user details of a S=
AML-enabled CloudStack user-account.=C2=A0In such environments, this can re=
sult in a complete compromise of the resources owned and/or accessible by a=
 SAML enabled user-account.

Affected users are recommended to disable the SAML authentication plugin by=
 setting the=C2=A0"saml2.enabled" global setting to "false", or upgrade to =
version 4.18.2.2, 4.19.1.0 or later, which addresses this issue.

Credit:

Christian Gross of Netcloud AG (finder)
Damon Smith of Apple Services Engineering Security (finder)
Adam Pond of Apple Services Engineering Security (finder)
Terry Thibault of Apple Services Engineering Security (finder)

References:

https://lists.apache.org/thread/5q06g8zvmhcw6w3tjr6r5prqdw6zckg3
https://cloudstack.apache.org/blog/security-release-advisory-cve-2024-41107
https://github.com/apache/cloudstack/issues/4519
https://www.shapeblue.com/shapeblue-security-advisory-apache-cloudstack-cve=
-2024-41107
https://cloudstack.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-41107

