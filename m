Received: (qmail 15862 invoked by uid 550); 24 Mar 2025 17:33:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7430 invoked from network); 24 Mar 2025 17:25:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Josh Thompson <jfthomps@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <ba02432d-f966-8f3c-13d6-46448d84a9f9@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Mon, 24 Mar 2025 17:24:08 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-53679: Apache VCL: XSS vulnerability in User Lookup
 impacting user privileges 

Affected versions:

- Apache VCL 2.1 through 2.5.1

Description:

Improper Neutralization of Input During Web Page Generation ('Cross-site Sc=
ripting') vulnerability in Apache VCL in the User Lookup form. A user with =
sufficient rights to be able to view this part of the site can craft a URL =
or be tricked in to clicking a URL that will give a specified user elevated=
 rights.



This issue affects all versions of Apache VCL through 2.5.1.



Users are recommended to upgrade to version 2.5.2, which fixes the issue.

Credit:

Chiencp and Nothing from TeamTonTac (finder)

References:

https://vcl.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-53679

