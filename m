Received: (qmail 12173 invoked by uid 550); 28 Apr 2025 19:40:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 18166 invoked from network); 28 Apr 2025 19:17:50 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <c78613d1-b199-41ea-b230-64ff88632a48@apache.org>
Date: Mon, 28 Apr 2025 20:15:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-31650: Apache Tomcat: DoS via malformed HTTP/2
 PRIORITY_UPDATE frame

Severity: important

Affected versions:

- Apache Tomcat 9.0.76 through 9.0.102
- Apache Tomcat 10.1.10 through 10.1.39
- Apache Tomcat 11.0.0-M2 through 11.0.5

Description:

Improper Input Validation vulnerability in Apache Tomcat. Incorrect 
error handling for some invalid HTTP priority headers resulted in 
incomplete clean-up of the failed request which created a memory leak. A 
large number of such requests could trigger an OutOfMemoryException 
resulting in a denial of service.

This issue affects Apache Tomcat: from 9.0.76 through 9.0.102, from 
10.1.10 through 10.1.39, from 11.0.0-M2 through 11.0.5.

Users are recommended to upgrade to version 9.0.104, 10.1.40 or 11.0.6 
which fix the issue.

References:

https://lists.apache.org/thread/j6zzk0y3yym9pzfzkq5vcyxzz0yzh826
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-31650
