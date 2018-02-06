X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["629" "Tuesday" "6" "February" "2018" "12:55:10" "-0500" "Dave Brondsema" "brondsem@apache.org" "<ecde8662-12c8-e921-f169-e7bd64967e31@apache.org>" "20" "[oss-security] [SECURITY] CVE-2018-1299 Apache Allura directory traversal vulnerability" nil nil nil "2" "2018020617:55:10" "[oss-security] [SECURITY] CVE-2018-1299 Apache Allura directory traversal vulnerability" (number mark "U       brondsem@apa Feb  6   20/629   " thread-indent "\"[oss-security] [SECURITY] CVE-2018-1299 Apache Allura directory traversal vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11732 invoked by uid 550); 6 Feb 2018 18:04:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24210 invoked from network); 6 Feb 2018 17:55:29 -0000
From: Dave Brondsema <brondsem@apache.org>
To: dev@allura.apache.org, users@allura.apache.org, announce@apache.org,
 oss-security@lists.openwall.com, security@apache.org
Message-ID: <ecde8662-12c8-e921-f169-e7bd64967e31@apache.org>
Date: Tue, 6 Feb 2018 12:55:10 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
 Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: [oss-security] [SECURITY] CVE-2018-1299 Apache Allura directory traversal
 vulnerability

CVE-2018-1299 Apache Allura directory traversal vulnerability

Severity: Important

Vendor: The Apache Software Foundation

Versions Affected: Apache Allura 1.7.0 and earlier

Description:
Unauthenticated attackers may retrieve arbitrary files through the Allura web
application.  Some webservers used with Allura, such as Nginx, Apache/mod_wsgi
or paster may prevent the attack from succeeding.  Others, such as gunicorn do
not prevent it and leave Allura vulnerable.

Mitigation:
Users of vulnerable webservers with Allura should upgrade to Allura 1.8.0
immediately.

Credit:
This issue was discovered by Everardo Padilla Saca
