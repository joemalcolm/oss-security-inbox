X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/01/03/1
Message-ID: <beb3e734-8070-f32f-58df-97f85a5ac91f@gmail.com>
Date: Wed, 3 Jan 2018 11:37:45 -0200
From: Rafael Weingärtner <rafael@...che.org>
To: oss-security@...ts.openwall.com
Subject: [CVE-2013-4317] Apache CloudStack information disclosure vulnerability
Content-Type: text/plain; charset=utf-8

The Apache CloudStack’s security team turns public the CVE-2013-4317.

*Severity*: High
*Vendor*: The Apache Software Foundation
*Versions Affected*: Apache CloudStack 4.1.0, 4.1.1

*Description*: When calling the CloudStack API call listProjectAccounts 
as a regular, non-administrative user, the user is able to see 
information for accounts other than their own.
*Mitigation*: Upgrade to Apache CloudStack 4.2

*Credit*: This issue was identified by Ahmad Emneina of Citrix.

P.S. This issue has been fixed a long time ago. However, the 
announcement has been forgotten. We apologize for that.

-- 
Rafael Weingärtner


