Received: (qmail 17551 invoked by uid 550); 6 Jan 2023 07:39:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30455 invoked from network); 6 Jan 2023 07:32:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Benoit Tellier <btellier@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <8b2cec3e-824b-4cba-6c4e-87bf6862fa5b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 06 Jan 2023 07:32:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2022-45935: Apache James server: Temporary File Information
 Disclosure 

Description:

Usage of temporary files with insecure permissions by the Apache James serv=
er allows an attacker with local access to access private user data in tran=
sit.=20

Vulnerable components includes the SMTP stack and IMAP APPEND command.

This issue affects Apache James server version 3.7.2 and prior versions.

Credit:

Benoit Tellier (reporter)

References:

https://james.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2022-45935

