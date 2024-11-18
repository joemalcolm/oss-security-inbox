Received: (qmail 10150 invoked by uid 550); 18 Nov 2024 15:32:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7332 invoked from network); 18 Nov 2024 12:24:13 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <da6cc054-2a49-461f-8806-27c0d857f297@apache.org>
Date: Mon, 18 Nov 2024 12:22:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-52318: Apache Tomcat: Incorrect JSP tag recycling leads to
 XSS

Severity: important

Affected versions:

- Apache Tomcat 11.0.0
- Apache Tomcat 10.1.31
- Apache Tomcat 9.0.96

Description:

Incorrect object recycling and reuse vulnerability in Apache Tomcat.

This issue affects Apache Tomcat: 11.0.0, 10.1.31, 9.0.96.

Users are recommended to upgrade to version 11.0.1, 10.1.33 or 9.0.97, 
which fixes the issue.
Note: 10.1.32 includes the fix but was not released

References:

https://lists.apache.org/thread/co243cw1nlh6p521c5265cm839wkqdp9
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-52318
