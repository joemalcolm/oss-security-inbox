X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["450" "Monday" "1" "March" "2021" "11:13:18" "+0000" "Mark Thomas" "markt@apache.org" nil "9" "[oss-security] CVE-2021-25122: Apache Tomcat h2c request mix-up" nil nil nil "3" nil nil (number mark "U       markt@apache Mar  1    9/450   " thread-indent "\"[oss-security] CVE-2021-25122: Apache Tomcat h2c request mix-up\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-25122: Apache Tomcat h2c request mix-up" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15718 invoked by uid 550); 1 Mar 2021 12:31:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16268 invoked from network); 1 Mar 2021 11:15:12 -0000
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Message-ID: <1b24ecb4-786e-33ba-0e7c-6724f787a5bc@apache.org>
Date: Mon, 1 Mar 2021 11:13:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-25122: Apache Tomcat h2c request mix-up

When responding to new h2c connection requests, Apache Tomcat versions 
10.0.0-M1 to 10.0.0, 9.0.0.M1 to 9.0.41 and 8.5.0 to 8.5.61 could 
duplicate request headers and a limited amount of request body from one 
request to another meaning user A and user B could both see the results 
of user A's request.

References:

https://lists.apache.org/thread.html/r7b95bc248603360501f18c8eb03bb6001ec0ee3296205b34b07105b7%40%3Cannounce.tomcat.apache.org%3E
