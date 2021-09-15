X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["687" "Wednesday" "15" "September" "2021" "18:57:33" "+0100" "Mark Thomas" "markt@apache.org" nil "19" "[oss-security] CVE-2021-41079: Apache Tomcat DoS with unexpected TLS packet" nil nil nil "9" nil nil (number mark "U       markt@apache Sep 15   19/687   " thread-indent "\"[oss-security] CVE-2021-41079: Apache Tomcat DoS with unexpected TLS packet\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-41079: Apache Tomcat DoS with unexpected TLS packet" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13954 invoked by uid 550); 15 Sep 2021 18:03:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11716 invoked from network); 15 Sep 2021 17:57:49 -0000
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Message-ID: <a144491b-8efb-dff2-cda5-e0d5be744359@apache.org>
Date: Wed, 15 Sep 2021 18:57:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-41079: Apache Tomcat DoS with unexpected TLS packet

Severity: high

Description:

Apache Tomcat 8.5.0 to 8.5.63, 9.0.0-M1 to 9.0.43 and 10.0.0-M1 to 
10.0.2 did not properly validate incoming TLS packets. When Tomcat was 
configured to use NIO+OpenSSL or NIO2+OpenSSL for TLS, a specially 
crafted packet could be used to trigger an infinite loop resulting in a 
denial of service.

Credit:

The Apache Tomcat security team would like to thank Thomas Wozenilek for 
originally reporting this issue and David Frankson of Infinite Campus 
for also providing a test case that reproduced the issue.

References:

https://lists.apache.org/thread.html/rccdef0349fdf4fb73a4e4403095446d7fe6264e0a58e2df5c6799434%40%3Cannounce.tomcat.apache.org%3E
