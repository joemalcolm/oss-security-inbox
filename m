Received: (qmail 22389 invoked by uid 550); 17 Dec 2024 15:55:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 20159 invoked from network); 17 Dec 2024 12:47:18 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <c34c3b29-70af-458f-8757-88810ad44f43@apache.org>
Date: Tue, 17 Dec 2024 12:46:54 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-54677: Apache Tomcat: DoS in examples web application

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.1
- Apache Tomcat 10.1.0-M1 through 10.1.33
- Apache Tomcat 9.0.0.M1 through 9.9.97

Description:

Uncontrolled Resource Consumption vulnerability in the examples web 
application provided with Apache Tomcat leads to denial of service.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.1, from 
10.1.0-M1 through 10.1.33, from 9.0.0.M1 through 9.9.97.

Users are recommended to upgrade to version 11.0.2, 10.1.34 or 9.0.98, 
which fixes the issue.

References:

https://lists.apache.org/thread/tdtbbxpg5trdwc2wnopcth9ccvdftq2n
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-54677
