Received: (qmail 21710 invoked by uid 550); 17 Dec 2024 15:55:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19850 invoked from network); 17 Dec 2024 12:46:50 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <9130b415-d545-4dba-8d0f-69d098f56095@apache.org>
Date: Tue, 17 Dec 2024 12:46:14 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-50379: Apache Tomcat: RCE due to TOCTOU issue in JSP
 compilation

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.1
- Apache Tomcat 10.1.0-M1 through 10.1.33
- Apache Tomcat 9.0.0.M1 through 9.0.97

Description:

Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability during 
JSP compilation in Apache Tomcat permits an RCE on case insensitive file 
systems when the default servlet is enabled for write (non-default 
configuration).

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.1, from 
10.1.0-M1 through 10.1.33, from 9.0.0.M1 through 9.0.97.

Users are recommended to upgrade to version 11.0.2, 10.1.34 or 9.0.08, 
which fixes the issue.

Credit:

Nacl, WHOAMI, Yemoli and Ruozhi (finder)

References:

https://lists.apache.org/thread/y6lj6q1xnp822g6ro70tn19sgtjmr80r
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-50379
