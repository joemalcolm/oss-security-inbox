Received: (qmail 9501 invoked by uid 550); 29 May 2025 20:09:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 16077 invoked from network); 29 May 2025 19:08:22 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <adbef26e-d2d9-4c67-af49-c8d6c50f2994@apache.org>
Date: Thu, 29 May 2025 20:06:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-46701: Apache Tomcat: Security constraint bypass for CGI
 scripts

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.6
- Apache Tomcat 10.1.0-M1 through 10.1.40
- Apache Tomcat 9.0.0.M1 through 9.0.104

Description:

Improper Handling of Case Sensitivity vulnerability in Apache Tomcat's 
GCI servlet allows security constraint bypass of security constraints 
that apply to the pathInfo component of a URI mapped to the CGI servlet.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.6, from 
10.1.0-M1 through 10.1.40, from 9.0.0.M1 through 9.0.104.

Users are recommended to upgrade to version 11.0.7, 10.1.41 or 9.0.105, 
which fixes the issue.

Credit:

Greg K (https://github.com/gregk4sec) (finder)

References:

https://lists.apache.org/thread/xhqqk9w5q45srcdqhogdk04lhdscv30j
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-46701
