Received: (qmail 29923 invoked by uid 550); 26 Dec 2023 13:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 4038 invoked from network); 26 Dec 2023 12:01:30 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Deepak Dixit <deepak@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <983f05b5-33be-d71b-6798-41a39faa971b@apache.org>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 Dec 2023 12:02:12 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2023-51467: Apache OFBiz: Pre-authentication Remote Code
 Execution (RCE) vulnerability 

Severity: critical

Affected versions:

- Apache OFBiz before 18.12.11

Description:

The vulnerability allows attackers to bypass authentication to achieve a si=
mple Server-Side Request Forgery (SSRF)

This issue is being tracked as OFBIZ-12873=20

Credit:

Hasib Vhora, Senior Threat Researcher, SonicWall  (finder)
Gao Tian (finder)
L0ne1y (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://ofbiz.apache.org/release-notes-18.12.11.html
https://issues.apache.org/jira/browse/OFBIZ-12873
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=3DCVE-2023-51467
https://issues.apache.org/jira/browse/OFBIZ-12873

