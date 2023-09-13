Received: (qmail 20122 invoked by uid 550); 13 Sep 2023 09:38:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15650 invoked from network); 13 Sep 2023 09:32:20 -0000
Authentication-Results: apache.org; auth=none
Message-ID: <64f0e35f-4579-c9a6-5820-693c1b5f8395@apache.org>
Date: Wed, 13 Sep 2023 10:31:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
From: Mark Thomas <markt@apache.org>
To: oss-security@lists.openwall.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [SECURITY] CVE-2023-41081 Apache Tomcat Connectors (mod_jk)
 Information Disclosure

CVE-2023-41081 Apache Tomcat Connectors (mod_jk) Information Disclosure

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected:
- Apache Tomcat Connectors mod_jk Connector 1.2.0 to 1.2.48

Description:
In some circumstances, such as when a configuration included
"JkOptions +ForwardDirectories" but the configuration did not provide 
explicit mounts for all possible proxied requests, mod_jk would use an 
implicit mapping and map the request to the first defined worker. Such 
an implicit mapping could result in the unintended exposure of the 
status worker and/or bypass security constraints configured in httpd. As 
of JK 1.2.49, the implicit mapping functionality has been removed and 
all mappings must now be via explicit configuration.
Only mod_jk is affected by this issue. The ISAPI redirector is not affected.

Mitigation:
Users of affected versions should apply one of the following mitigations:
- Upgrade to Apache Tomcat Connector (mod_jk) 1.2.49 or later.
- Ensure explicit mounts are configured for all possible proxied
   requests

Credit:
This vulnerability was reported responsibly to the Tomcat security team 
by Karl von Randow.

References:
[1] http://tomcat.apache.org/security-jk.html
