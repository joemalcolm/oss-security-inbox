Received: (qmail 3800 invoked by uid 550); 10 Oct 2023 19:37:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15666 invoked from network); 10 Oct 2023 17:43:15 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <bce9569b-9775-4d0f-a691-8e22078b191b@apache.org>
Date: Tue, 10 Oct 2023 14:42:59 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-42795: Apache Tomcat: Failure during request clean-up leads
 to sensitive data leaking to subsequent requests

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.0-M11
- Apache Tomcat 10.1.0-M1 through 10.1.13
- Apache Tomcat 9.0.0-M1 through 9.0.80
- Apache Tomcat 8.5.0 through 8.5.93

Description:

Incomplete Cleanup vulnerability in Apache Tomcat.When recycling various 
internal objects in Apache Tomcat from 11.0.0-M1 through 11.0.0-M11, 
from 10.1.0-M1 through 10.1.13, from 9.0.0-M1 through 9.0.80 and from 
8.5.0 through 8.5.93, an error could cause Tomcat to skip some parts of 
the recycling process leading to information leaking from the current 
request/response to the next.

Users are recommended to upgrade to version 11.0.0-M12 onwards, 10.1.14 
onwards, 9.0.81 onwards or 8.5.94 onwards, which fixes the issue.

References:

https://lists.apache.org/thread/065jfyo583490r9j2v73nhpyxdob56lw
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2023-42795
