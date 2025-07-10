Received: (qmail 24471 invoked by uid 550); 10 Jul 2025 20:03:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32495 invoked from network); 10 Jul 2025 19:09:43 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <6445965b-c854-412e-932f-68f4153c67a6@apache.org>
Date: Thu, 10 Jul 2025 20:06:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2025-52520: Apache Tomcat: DoS via integer overflow in multipart
 file upload

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.8
- Apache Tomcat 10.1.0-M1 through 10.1.42
- Apache Tomcat 9.0.0.M1 through 9.0.106

Description:

For some unlikely configurations of multipart upload, an Integer 
Overflow vulnerability in Apache Tomcat could lead to a DoS via 
bypassing of size limits.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.8, from 
10.1.0-M1 through 10.1.42, from 9.0.0.M1 through 9.0.106.

Users are recommended to upgrade to version 11.0.9, 10.1.43 or 9.0.107, 
which fix the issue.

Credit:

Saravana Kumar (finder)

References:

https://lists.apache.org/thread/trqq01bbxw6c92zx69kx2mw2qgmfy0o5
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2025-52520
