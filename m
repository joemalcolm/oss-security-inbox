Received: (qmail 32107 invoked by uid 550); 22 Jan 2025 23:13:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19567 invoked from network); 22 Jan 2025 22:43:16 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Pedro Henrique Oliveira dos Santos <pedro@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <e408bcff-007b-ff57-b7d0-da67b6370a15@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 22 Jan 2025 22:43:04 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-53299: Apache Wicket: An attacker can intentionally
 trigger a memory leak 

Severity: critical

Affected versions:

- Apache Wicket 7.0.0 through 7.18.*
- Apache Wicket 8.0.0-M1 through 8.16.*
- Apache Wicket 9.0.0-M1 through 9.18.*
- Apache Wicket 10.0.0-M1 through 10.2.*

Description:

The request handling in the core in Apache Wicket 7.0.0 on any platform all=
ows an attacker to create a DOS via multiple requests to server resources.
Users are recommended to upgrade to versions 9.19.0 or 10.3.0, which fixes =
this issue.

Credit:

Pedro Santos (finder)

References:

https://wicket.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-53299

