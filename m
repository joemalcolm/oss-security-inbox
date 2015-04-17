X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["391" "Friday" "17" "April" "2015" "05:06:32" "-0400" "Marc Deslauriers" "marc.deslauriers@canonical.com" "<5530CD18.4000008@canonical.com>" "17" "[oss-security] CVE Request: PHP potential remote code execution with apache 2.4 apache2handler" nil nil nil "4" "2015041709:06:32" "[oss-security] CVE Request: PHP potential remote code execution with apache 2.4 apache2handler" (number mark "        marc.deslaur Apr 17   17/391   " thread-indent "\"[oss-security] CVE Request: PHP potential remote code execution with apache 2.4 apache2handler\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27720 invoked by uid 550); 17 Apr 2015 09:06:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27696 invoked from network); 17 Apr 2015 09:06:47 -0000
Message-ID: <5530CD18.4000008@canonical.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
CC: cve-assign@mitre.org, security@php.net
Date: Fri, 17 Apr 2015 05:06:32 -0400
From: Marc Deslauriers <marc.deslauriers@canonical.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PHP potential remote code execution with apache 2.4
 apache2handler
To: oss-security@lists.openwall.com

Hello,

PHP 5.4.40, 5.5.24 and 5.6.8 fixed a potential remote code execution
vulnerability when used with the Apache 2.4 apache2handler.

https://bugs.php.net/bug.php?id=69218
https://bugs.php.net/bug.php?id=68486 (still private)

Fixed by:

http://git.php.net/?p=php-src.git;a=commit;h=809610f5ea38a83b284e1125d1fff129bdd615e7

Could a CVE please be assigned to this issue?

Thanks,

Marc.
