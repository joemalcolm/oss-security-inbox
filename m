Received: (qmail 1268 invoked by uid 550); 12 Jul 2024 13:10:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31746 invoked from network); 12 Jul 2024 12:13:29 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Martin Tzvetanov Grigorov <mgrigorov@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <6ccac9f8-f0f8-680b-0c95-054a0602b128@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jul 2024 12:12:11 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-36522: Apache Wicket: Remote code execution via XSLT
 injection 

Severity: moderate

Affected versions:

- Apache Wicket 10.0.0-M1 through 10.0.0
- Apache Wicket 9.0.0 through 9.17.0
- Apache Wicket 8.0.0 through 8.15.0

Description:

The default configuration of XSLTResourceStream.java is vulnerable to remot=
e code execution via XSLT injection when processing input from an untrusted=
 source without validation.
Users are recommended to upgrade to versions 10.1.0, 9.18.0 or 8.16.0, whic=
h fix this issue.

Credit:

cigar (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-36522

