Received: (qmail 9861 invoked by uid 550); 18 Nov 2024 15:32:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23995 invoked from network); 18 Nov 2024 11:37:38 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <a669283f-bc2a-4f0c-9b9d-1e2c0598772a@apache.org>
Date: Mon, 18 Nov 2024 11:37:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-52317: Apache Tomcat: Request/response mix-up with HTTP/2

Severity: important

Affected versions:

- Apache Tomcat 11.0.0-M23 through 11.0.0-M26
- Apache Tomcat 10.1.27 through 10.1.30
- Apache Tomcat 9.0.92 through 9.0.95

Description:

Incorrect object re-cycling and re-use vulnerability in Apache Tomcat. 
Incorrect recycling of the request and response used by HTTP/2 requests
could lead to request and/or response mix-up between users.

This issue affects Apache Tomcat: from 11.0.0-M23 through 11.0.0-M26, 
from 10.1.27 through 10.1.30, from 9.0.92 through 9.0.95.

Users are recommended to upgrade to version 11.0.0, 10.1.31 or 9.0.96, 
which fixes the issue.

References:

https://lists.apache.org/thread/ty376mrxy1mmxtw3ogo53nc9l3co3dfs
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-52317
