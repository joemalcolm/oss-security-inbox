X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2656" "Monday" "18" "May" "2015" "10:18:27" "+0200" "Andrea Palazzo" "andrea.palazzo@truel.it" "<5559A053.6090004@truel.it>" "70" "[oss-security] CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" nil nil nil "5" "2015051808:18:27" "[oss-security] CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption" (number mark "        andrea.palaz May 18   70/2656  " thread-indent "\"[oss-security] CVE Request + Advisory: PHP str_repeat() sign mismatch based memory corruption\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17931 invoked by uid 550); 18 May 2015 08:18:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17913 invoked from network); 18 May 2015 08:18:40 -0000
Message-ID: <5559A053.6090004@truel.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - srv-hp9.netsons.net
X-AntiAbuse: Original Domain - lists.openwall.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - truel.it
X-Get-Message-Sender-Via: srv-hp9.netsons.net: authenticated_id: info@truel.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
CC: oss-security@lists.openwall.com, security@php.net
Date: Mon, 18 May 2015 10:18:27 +0200
From: Andrea Palazzo <andrea.palazzo@truel.it>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request + Advisory: PHP str_repeat() sign mismatch based memory
 corruption
To: cve-assign@mitre.org

Hi everyone,
this is intended as CVE Request and advisory for 
https://bugs.php.net/bug.php?id=69403.

## Info
#
#  Title: PHP str_repeat() sign mismatch based memory corruption
#  Author: Andrea Palazzo
#                  <andrea [dot] palazzo [at] truel [dot] it>
#                    http://www.truel.it
#  Product: PHP
#                     <= 5.4.40 / 5.5.24 / 5.6.8
#                     http://www.php.net
#     Patch: 
http://git.php.net/?p=php-src.git;a=commit;h=c591f022f8abb4c0c2e60a037a0c0c5c5a125957
# 
http://git.php.net/?p=php-src.git;a=commit;h=0a96aa600d1028eda505270366df28e4085a1941
#  CVE:     Not assigned yet
#
## Summary

str_repeat() suffers from a sign mismatch based integer overflow that 
results in creation of corrupted ZVALs; this condition, depending on the 
context, can be abused to bypass PHP-level checks or trigger any kind of 
memory error: a successful exploitation of this issue is likely to 
produce both local and remote code execution vectors.

## Details

str_repeat() takes mult as second argument, which represents the number 
of desired repetitions for the string passed as first argument. Once 
retrieved, this value is multiplied by input_len and stored into result_len

     /* Initialize the result string */
4907    result_len = input_len * mult;

which then, on line 4930 is passed as argument for RETURN_STRINGL() macro.
It should be noticed that while RETURN_STRINGL() ends up calling 
ZVAL_STRINGL(), which expects the length argument to be a signed int, 
result_len is defined as size_t, producing an implicit cast of the 
actual value.
In situations in which huge memory allocations are possible (most likely 
64-bit systems), it is possible to take advantage of this situation 
overflowing ZVAL_STRINGL's length into a negative value, in order to get 
a corrupted string-typed ZVAL.

(gdb) r -r 'var_dump(str_repeat("a", 4294967294+1));'

Breakpoint 1, php_var_dump (struc=0x7ffff7f8a188, level=level@entry=1)
     at /build/buildd/php5-5.6.7+dfsg/ext/standard/var.c:88
88    /build/buildd/php5-5.6.7+dfsg/ext/standard/var.c: No such file or 
directory.
(gdb) p **struc
$7 = {value = {lval = 140732723359792, dval = 6,9531203857753119e-310, 
str = {
       val = 0x7ffee3fbf030 'a' <repeats 200 times>..., len = -1},
     ht = 0x7ffee3fbf030, obj = {handle = 3824939056,
       handlers = 0x7fffffffffff}, ast = 0x7ffee3fbf030}, refcount__gc = 1,
   type = 6 '\006', is_ref__gc = 0 '\000'}

## Solution

Update to PHP 5.4.41 / 5.5.25 / 5.6.9
http://php.net/downloads.php

## Timeline

2015-04-09 - Privately submitted through PHP Bug tracking system
2015-05-10 - Assigned
2015-05-12 - Patch issued
