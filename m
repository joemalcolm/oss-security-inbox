X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1305" "Wednesday" "29" "July" "2015" "16:53:41" "+0200" "oss-security-list@demlak.de" "oss-security-list@demlak.de" "<55B8E8F5.5010003@demlak.de>" "45" "[oss-security] CVE request: Froxlor - information leak" nil nil nil "7" "2015072914:53:41" "[oss-security] CVE request: Froxlor - information leak" (number mark "        oss-security Jul 29   45/1305  " thread-indent "\"[oss-security] CVE request: Froxlor - information leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21780 invoked by uid 550); 29 Jul 2015 15:57:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26269 invoked from network); 29 Jul 2015 14:53:57 -0000
Message-ID: <55B8E8F5.5010003@demlak.de>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.0.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 29 Jul 2015 16:53:41 +0200
From: oss-security-list@demlak.de
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Froxlor - information leak
To: oss-security@lists.openwall.com

Hello,
Please assign a CVE-ID for the following 'Information Leak':

Affects
=====
- Froxlor 0.9.33.1 and earlier

Fixed
====
- Froxlor 0.9.33.2

Summary
========
An unauthenticated remote attacker is able to get the database password 
via webaccess due to wrong file permissions of the /logs/ folder in 
froxlor version 0.9.33.1 and earlier. The plain SQL password and 
username may be stored in the /logs/sql-error.log file. This directory 
is publicly reachable under the default configuration/setup.

Notes
=====
Some default URLs are:
http://website.tld/froxlor/logs/sql-error.log
http://cp.website.tld/logs/sql-error.log
http://froxlor.website.tld/logs/sql-error.log

The certain section looks like this:

/var/www/froxlor/lib/classes/database/class.Database.php(279): 
PDO->__construct('mysql:host=127....', 'DATABASE_USER', 
'PLAIN_DATABASE_PW', Array)

Please note that the password in the logfile is truncated to 15 chars, 
therefore passwords longer than 15 chars are not fully visible to an 
attacker.


Patches
======
- log db errors to syslog instead of /logs/sql-error.log file:
 
https://github.com/Froxlor/Froxlor/commit/4ec376b29671593a50556630551e04e34bc83c1c
- replace passwords even before logging:
 
https://github.com/Froxlor/Froxlor/commit/8558533a9148a2a0302c9c177abff8e4e4075b92
