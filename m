Received: (qmail 26034 invoked by uid 550); 3 Oct 2024 16:07:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22348 invoked from network); 3 Oct 2024 11:26:32 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: "Gary D. Gregory" <ggregory@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3385d93e-0362-5bd9-9051-c8a08d418389@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 03 Oct 2024 11:26:22 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-47554: Apache Commons IO: Possible denial of service
 attack on untrusted input to XmlStreamReader 

Severity: low

Affected versions:

- Apache Commons IO 2.0 before 2.14.0

Description:

Uncontrolled Resource Consumption vulnerability in Apache Commons IO.

The org.apache.commons.io.input.XmlStreamReader class may excessively consu=
me CPU resources when processing maliciously crafted input.


This issue affects Apache Commons IO: from 2.0 before 2.14.0.

Users are recommended to upgrade to version 2.14.0 or later, which fixes th=
e issue.

Credit:

CodeQL (tool)

References:

https://commons.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-47554

