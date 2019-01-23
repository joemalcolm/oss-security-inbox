X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1071" "Tuesday" "22" "January" "2019" "22:57:15" "-0500" "Troy Curtis" "troycurtisjr@apache.org" "<a508ca98-5954-b19a-0e7f-7319a4c94480@apache.org>" "28" "[oss-security] [CVE-2018-11803] Apache Subversion Denial of Service Vulnerability" nil nil nil "1" "2019012303:57:15" "[oss-security] [CVE-2018-11803] Apache Subversion Denial of Service Vulnerability" (number mark "U       troycurtisjr Jan 22   28/1071  " thread-indent "\"[oss-security] [CVE-2018-11803] Apache Subversion Denial of Service Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24314 invoked by uid 550); 23 Jan 2019 09:42:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19691 invoked from network); 23 Jan 2019 03:57:29 -0000
To: oss-security@lists.openwall.com
From: Troy Curtis <troycurtisjr@apache.org>
Message-ID: <a508ca98-5954-b19a-0e7f-7319a4c94480@apache.org>
Date: Tue, 22 Jan 2019 22:57:15 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: [oss-security] [CVE-2018-11803] Apache Subversion Denial of Service Vulnerability

This is a security notification for Apache Subversion HTTP Servers:

CVE-2018-11803
Severity: Medium
Affected Versions: Apache Subversion 1.11.0, 1.10.0 to 1.10.3

Subversion's mod_dav_svn Apache HTTPD module versions 1.11.0 and 1.10.0 
to 1.10.3 will crash after dereferencing an uninitialized pointer if the 
client omits the root path in a recursive directory listing operation. 
This issue can be triggered by any client on Subversion repositories 
configured for anonymous read access. If read access requires 
authentication, a denial of service attack can only be performed by an 
authenticated user.

The Subversion releases 1.10.4 and 1.11.1 contain the fixes for this 
vulnerability and are available immediately at:

https://dist.apache.org/repos/dist/release/subversion/?p=32084

Additional details, including patches for 1.10.3 and 1.11.0 can be found at:

https://subversion.apache.org/security/CVE-2018-11803-advisory.txt

We encourage users of Subversion to upgrade to the latest appropriate 
version as soon as reasonable.

Thanks,
- The Subversion Team
