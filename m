Received: (qmail 23806 invoked by uid 550); 31 Oct 2022 17:03:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12183 invoked from network); 31 Oct 2022 16:53:50 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <188aef5b-4005-b370-6237-63f7be533ae1@apache.org>
Date: Mon, 31 Oct 2022 16:53:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2022-42252: Apache Tomcat - Request Smuggling

CVE-2022-42252 Apache Tomcat - Request Smuggling

Severity: Low

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 10.1.0-M1 to 10.1.0
Apache Tomcat 10.0.0-M1 to 10.0.26
Apache Tomcat 9.0.0-M1 to 9.0.67
Apache Tomcat 8.5.0 to 8.5.52

Description:
If Tomcat was configured to ignore invalid HTTP headers via setting
rejectIllegalHeader to false (the default for 8.5.x only), Tomcat did 
not reject a request containing an invalid Content-Length header making 
a request smuggling attack  possible if Tomcat was located behind a 
reverse proxy that also failed to reject the request with the invalid 
header.


Mitigation:
Users of the affected versions should apply one of the following
mitigations:
- Ensure rejectIllegalHeader is set to true
- Upgrade to Apache Tomcat 10.1.1 or later
- Upgrade to Apache Tomcat 10.0.27 or later
- Upgrade to Apache Tomcat 9.0.68 or later
- Upgrade to Apache Tomcat 8.5.83 or later

Credit:
Thanks to Sam Shahsavar who discovered this issue and reported it to the 
Apache Tomcat security team.

History:
2022-10-31 Original advisory

References:
[1] https://tomcat.apache.org/security-10.html
[2] https://tomcat.apache.org/security-9.html
[3] https://tomcat.apache.org/security-8.html
