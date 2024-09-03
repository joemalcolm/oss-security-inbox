Received: (qmail 23767 invoked by uid 550); 3 Sep 2024 19:08:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 31945 invoked from network); 3 Sep 2024 17:06:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <48b22647-65c0-2c49-dd78-e5cef87eafe6@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 03 Sep 2024 17:05:47 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45507: Apache OFBiz: Prevent use of URLs in files when
 loading them from Java or Groovy, leading to a RCE 

Severity: important

Affected versions:

- Apache OFBiz before 18.12.16

Description:

Server-Side Request Forgery (SSRF), Improper Control of Generation of Code =
('Code Injection') vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 18.12.16.

Users are recommended to upgrade to version 18.12.16, which fixes the issue.

Credit:

=E5=AD=99=E7=9B=B8 (Sun Xiang) (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-13132
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-45507

