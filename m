Received: (qmail 15476 invoked by uid 550); 24 Mar 2025 17:33:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1736 invoked from network); 24 Mar 2025 17:24:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Josh Thompson <jfthomps@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <3d9ec56c-8dd4-f87f-da34-d07e5934771a@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Mar 2025 17:23:50 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-53678: Apache VCL: SQL injection vulnerability in New
 Block Allocation form 

Affected versions:

- Apache VCL 2.2 through 2.5.1

Description:

Improper Neutralization of Special Elements used in an SQL Command ('SQL In=
jection') vulnerability in Apache VCL. Users can modify form data submitted=
 when requesting a new Block Allocation such that a SELECT SQL statement is=
 modified. The data returned by the SELECT statement is not viewable by the=
 attacker.

This issue affects all versions of Apache VCL from 2.2 through 2.5.1.

Users are recommended to upgrade to version 2.5.2, which fixes the issue.

Credit:

Chiencp and Nothing from TeamTonTac (finder)

References:

https://vcl.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-53678

