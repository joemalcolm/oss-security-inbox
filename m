Received: (qmail 24362 invoked by uid 550); 22 May 2023 11:00:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24241 invoked from network); 22 May 2023 10:10:54 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <39593cc9-e019-a735-c17f-1b5cb25e280c@apache.org>
Date: Mon, 22 May 2023 11:10:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2023-28709 Apache Tomcat - Fix for CVE-2023-24998 was
 incomplete

CVE-2023-28709 Apache Tomcat - Fix for CVE-2023-24998 was incomplete

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 11.0.0-M2 to 11.0.0-M4
Apache Tomcat 10.1.5 to 10.1.7
Apache Tomcat 9.0.71 to 9.0.73
Apache Tomcat 8.5.85 to 8.5.87

Description:
The fix for CVE-2023-24998 was incomplete. If non-default HTTP connector 
settings were used such that the maxParameterCount could be reached 
using query string parameters and a request was submitted that supplied 
exactly maxParameterCount parameters in the query string, the limit for 
uploaded request parts could be bypassed with the potential for a denial 
of service to occur.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Upgrade to Apache Tomcat 11.0.0-M5 or later
- Upgrade to Apache Tomcat 10.1.8 or later
- Upgrade to Apache Tomcat 9.0.74 or later
- Upgrade to Apache Tomcat 8.5.88 or later

Credit:
This issue was identified by Chenwei Jiang, Chenfeng Nie and Yue Yang 
from the Huawei Nebula Security Lab

History:
2023-05-22 Original advisory

References:
[1] https://tomcat.apache.org/security-11.html
[2] https://tomcat.apache.org/security-10.html
[3] https://tomcat.apache.org/security-9.html
[4] https://tomcat.apache.org/security-8.html
