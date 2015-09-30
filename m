X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["536" "Wednesday" "30" "September" "2015" "15:20:28" "+0200" "Eric Charles" "eric@apache.org" "<560BE19C.50901@apache.org>" "16" "[oss-security] Apache James Server 2.3.2 security vulnerability fixed" nil nil nil "9" "2015093013:20:28" "[oss-security] Apache James Server 2.3.2 security vulnerability fixed" (number mark "        eric@apache. Sep 30   16/536   " thread-indent "\"[oss-security] Apache James Server 2.3.2 security vulnerability fixed\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13705 invoked by uid 550); 30 Sep 2015 13:23:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11625 invoked from network); 30 Sep 2015 13:20:40 -0000
X-Belgacom-Dynamic: yes
X-Cloudmark-SP-Filtered: true
X-Cloudmark-SP-Result: v=1.1 cv=d6O4W030xngO5QkzyDOul/vmjwC4sFqcTOV5kZr+d1k= c=1 sm=2
 a=mV9VRH-2AAAA:8 a=Ia0LzWp9qr8-EzEyl5QA:9 a=QEXdDO2ut3YA:10
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2BpBQBo4AtW/z0TyFANUYN4aYMrukYBAYIFgkOFKw8BAQEBAQEBhVgPAQV2AgUhAhECTQwGAgEBiC8ItXtxlRaBIoVRiT+DO4FDAQSVOECFFod9UYFEmTs5AQEBhCtvAYkdAQEB
Message-ID: <560BE19C.50901@apache.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Date: Wed, 30 Sep 2015 15:20:28 +0200
From: Eric Charles <eric@apache.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Apache James Server 2.3.2 security vulnerability fixed
To: server-user@james.apache.org, Jakub.Palaczynski@ingservicespolska.pl, 
 server-dev@james.apache.org, security@apache.org, 
 oss-security@lists.openwall.com, bugtraq@securityfocus.com, 
 cert@cert.org

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: James Server 2.3.2

Description: Apache James Server 2.3.2 has security issue that can let a 
user execute arbitrary system command for servers configured with file 
based user repositories.

Mitigation: 2.3.2 users should upgrade to 2.3.2.1 to be downloaded from 
http://james.apache.org/download.cgi#Apache_James_Server

Credit: This issue was discovered by ﻿Palaczynski Jakub 
<Jakub.Palaczynski@ingservicespolska.pl> (recorded as VU#988628 by CERT)

