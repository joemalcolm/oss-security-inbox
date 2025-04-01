Received: (qmail 11970 invoked by uid 550); 1 Apr 2025 16:43:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 21859 invoked from network); 1 Apr 2025 14:37:00 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <954edf2b-b8b4-42d7-c81d-b7fb976d1141@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 01 Apr 2025 14:36:48 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2025-30676: Apache OFBiz: Stored XSS Vulnerability 

Severity: moderate

Affected versions:

- Apache OFBiz before 18.12.19

Description:

Improper Neutralization of Script-Related HTML Tags in a Web Page (Basic XS=
S) vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 18.12.19.

Users are recommended to upgrade to version 18.12.19, which fixes the issue.

Credit:

Khaled Nassar  (@mindpatch) (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-13219
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2025-30676

