Received: (qmail 22183 invoked by uid 550); 3 Sep 2024 19:08:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30120 invoked from network); 3 Sep 2024 17:05:52 -0000
Authentication-Results: apache.org; auth=none
Content-Type: text/plain; charset=utf-8
From: Jacques Le Roux <jleroux@apache.org>
To: oss-security@lists.openwall.com
Message-ID: <17467868-fa5b-3cc5-e411-585bacf9d187@apache.org>
Content-Transfer-Encoding: 7bit
Date: Tue, 03 Sep 2024 17:05:34 +0000
MIME-Version: 1.0
Subject: [oss-security] CVE-2024-45195: Apache OFBiz: Confused controller-view
 authorization logic (forced browsing) 

Severity: important

Affected versions:

- Apache OFBiz before 18.12.16

Description:

Direct Request ('Forced Browsing') vulnerability in Apache OFBiz.

This issue affects Apache OFBiz: before 18.12.16.

Users are recommended to upgrade to version 18.12.16, which fixes the issue.

Credit:

shin24 from National Cyber Security Vietnam (finder)
LuanPV from National Cyber Security Vietnam (finder)
Ryan Emmons, Lead Security Researcher at Rapid7 (finder)
Hasib Vhora, Senior Threat Researcher, SonicWall (finder)
Xenc from SGLAB of Legendsec at Qi'anxin Group (finder)

References:

https://ofbiz.apache.org/download.html
https://ofbiz.apache.org/security.html
https://issues.apache.org/jira/browse/OFBIZ-13130
https://ofbiz.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-45195

