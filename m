Received: (qmail 17786 invoked by uid 550); 28 Feb 2024 15:03:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9319 invoked from network); 28 Feb 2024 14:50:46 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <c7fa7619-3dea-f582-8779-a88e1105af65@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 14:52:32 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-25065: Apache OFBiz: Path traversal allowing
 authentication bypass. 

Severity: critical

Affected versions:

- Apache OFBiz before 18.12.12

Description:

Possible path traversal in Apache OFBiz allowing authentication bypass.
Users are recommended to upgrade to version 18.12.12, that fixes the issue.

Credit:

YunPeng - =E9=83=AD =E8=BF=90=E9=B9=8F <puata123@outlook.com> (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-18.12.12.html
https://issues.apache.org/jira/browse/OFBIZ-12887
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2024-25065

