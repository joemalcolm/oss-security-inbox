Received: (qmail 1048 invoked by uid 550); 7 Jul 2022 13:41:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32049 invoked from network); 7 Jul 2022 13:38:57 -0000
Content-Type: text/plain; charset=utf-8
From: Abhishek Agarwal <abhishek@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <780f3eb8-92fe-12c3-9e4f-d385ff6dd10d@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Thu, 07 Jul 2022 13:38:43 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2021-44791: Apache Druid: Reflected XSS on certain HTTP
 endpoints 

Severity: low

Description:

In Apache Druid 0.22.1 and earlier, certain specially-crafted links result =
in unescaped URL parameters being sent back in HTML responses. This makes i=
t possible to execute reflected XSS attacks.

Mitigation:

Upgrade to Druid 0.23.0 or later.

Credit:

This issue was discovered by DangKhai from Viettel Cyber Security

