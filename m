Received: (qmail 9287 invoked by uid 550); 18 Nov 2024 15:32:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7862 invoked from network); 18 Nov 2024 11:34:04 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <ca1fd0a3-dff5-4ca2-96d7-6551933d0b12@apache.org>
Date: Mon, 18 Nov 2024 11:33:17 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2024-52316: Apache Tomcat: Authentication bypass when using
 Jakarta Authentication API

Severity: low

Affected versions:

- Apache Tomcat 11.0.0-M1 through 11.0.0-M26
- Apache Tomcat 10.1.0-M1 through 10.1.30
- Apache Tomcat 9.0.0-M1 through 9.0.95

Description:

Unchecked Error Condition vulnerability in Apache Tomcat. If Tomcat is 
configured to use a custom Jakarta Authentication (formerly JASPIC) 
ServerAuthContext component which may throw an exception during the 
authentication process without explicitly setting an HTTP status to 
indicate failure, the authentication may not fail, allowing the user to 
bypass the authentication process. There are no known Jakarta 
Authentication components that behave in this way.

This issue affects Apache Tomcat: from 11.0.0-M1 through 11.0.0-M26, 
from 10.1.0-M1 through 10.1.30, from 9.0.0-M1 through 9.0.95.

Users are recommended to upgrade to version 11.0.0, 10.1.31 or 9.0.96, 
which fix the issue.

References:

https://lists.apache.org/thread/lopzlqh91jj9n334g02om08sbysdb928
https://tomcat.apache.org/
https://www.cve.org/CVERecord?id=CVE-2024-52316
