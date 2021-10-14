X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["554" "Thursday" "14" "October" "2021" "15:27:04" "+0100" "Mark Thomas" "markt@apache.org" nil "10" "[oss-security] CVE-2021-42340: Apache Tomcat: DoS via memory leak with WebSocket connections" nil nil nil "10" nil nil (number mark "U       markt@apache Oct 14   10/554   " thread-indent "\"[oss-security] CVE-2021-42340: Apache Tomcat: DoS via memory leak with WebSocket connections\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-42340: Apache Tomcat: DoS via memory leak with WebSocket connections" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5658 invoked by uid 550); 14 Oct 2021 14:45:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28353 invoked from network); 14 Oct 2021 14:27:34 -0000
To: oss-security@lists.openwall.com
From: Mark Thomas <markt@apache.org>
Message-ID: <45b1d9ce-3088-112e-132e-bba47ad22054@apache.org>
Date: Thu, 14 Oct 2021 15:27:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE-2021-42340: Apache Tomcat: DoS via memory leak with WebSocket
 connections

The fix for bug 63362 present in Apache Tomcat 10.1.0-M1 to 10.1.0-M5, 
10.0.0-M1 to 10.0.11, 9.0.40 to 9.0.53 and 8.5.60 to 8.5.71 introduced a 
memory leak. The object introduced to collect metrics for HTTP upgrade 
connections was not released for WebSocket connections once the 
connection was closed. This created a memory leak that, over time, could 
lead to a denial of service via an OutOfMemoryError.

References:

https://lists.apache.org/thread.html/r83a35be60f06aca2065f188ee542b9099695d57ced2e70e0885f905c%40%3Cannounce.tomcat.apache.org%3E
