Received: (qmail 32509 invoked by uid 550); 6 May 2026 00:44:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17520 invoked from network); 5 May 2026 23:14:09 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Pedro Henrique Oliveira dos Santos <pedro@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <b92e194b-2f1c-fd2b-2536-6557960e12d5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 05 May 2026 23:13:57 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2026-40010: Apache Wicket: possible session fixation using
 AuthenticatedWebSession 

Severity: critical=20

Affected versions:

- Apache Wicket 10.0.0 through 10.8.0
- Apache Wicket 8.0.0 through 8.17.0
- Apache Wicket 9.0.0 through 9.22.0

Description:

Missing invocation of Servlet http web request method changeSessionId after=
 session binding can be exploited for a=C2=A0session fixation attack in Apa=
che Wicket.

This issue affects Apache Wicket: from 8.0.0 through 8.17.0, 9.0.0, from 10=
.0.0 through 10.8.0.

Users are recommended to upgrade to version 10.9.0, which fixes the issue.

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2026-40010

