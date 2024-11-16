Received: (qmail 1403 invoked by uid 550); 16 Nov 2024 14:05:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 10215 invoked from network); 16 Nov 2024 09:56:15 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Chao Gong <gongchao@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <fbe76177-5cbd-2347-2aee-68b8707f8b6f@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 Nov 2024 09:54:29 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45791: Apache HertzBeat: Exposure sensitive token via
 http GET method with query string 

Severity: low

Affected versions:

- Apache HertzBeat before 1.6.1

Description:

Exposure of Sensitive Information to an Unauthorized Actor vulnerability in=
 Apache HertzBeat.

This issue affects Apache HertzBeat: before 1.6.1.

Users are recommended to upgrade to version 1.6.1, which fixes the issue.

Credit:

=C3=8Dcaro Torres (finder)

References:

https://www.cve.org/CVERecord?id=3DCVE-2024-45791

