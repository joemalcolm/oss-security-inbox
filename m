Received: (qmail 16354 invoked by uid 550); 22 Aug 2025 18:21:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 3699 invoked from network); 22 Aug 2025 18:19:27 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Piotr Karwasz <pkarwasz@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <aa65e537-1ba5-7e0b-617f-cd3afc9e2ef5@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Aug 2025 18:17:25 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-54813: Apache Log4cxx: Improper escaping with JSONLayout 

Severity: moderate=20

Affected versions:

- Apache Log4cxx 0.11.0 before 1.5.0

Description:

Improper Output Neutralization for Logs vulnerability in Apache Log4cxx.

When using JSONLayout, not all payload bytes are properly escaped. If an at=
tacker-supplied message contains certain non-printable characters, these wi=
ll be passed along in the message and written out as part of the JSON messa=
ge. This may prevent applications that consume these logs from correctly in=
terpreting the information within them.

This issue affects Apache Log4cxx: before 1.5.0.

Users are recommended to upgrade to version 1.5.0, which fixes the issue.

Credit:

Sovereign Tech Agency (sponsor)

References:

https://logging.apache.org/security.html#CVE-2025-54813
https://github.com/apache/logging-log4cxx/pull/512
https://logging.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-54813

