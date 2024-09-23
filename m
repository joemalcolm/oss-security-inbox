Received: (qmail 11622 invoked by uid 550); 23 Sep 2024 15:10:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17818 invoked from network); 23 Sep 2024 10:52:08 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <7ec6aab8-7508-4bc7-80bb-80c14509f51c@apache.org>
Date: Mon, 23 Sep 2024 11:51:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-46544: Apache Tomcat Connectors: mod_jk: local users can
 view and modify configuration

Severity: moderate

Affected versions:
- Apache Tomcat Connectors 1.2.9-beta through 1.2.49

Description:

Incorrect Default Permissions vulnerability in Apache Tomcat Connectors 
allows local users to view and modify shared memory containing mod_jk 
configuration which may lead to information disclosure and/or denial of 
service.

This issue affects Apache Tomcat Connectors: from 1.2.9-beta through 
1.2.49. Only mod_jk on Unix like systems is affected. Neither the ISAPI 
redirector nor mod_jk on Windows is affected.

Users are recommended to upgrade to version 1.2.50, which fixes the issue.

References:

https://lists.apache.org/thread/q1gp7cc38hs1r8gj8gfnopwznd5fpr4d
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-46544
