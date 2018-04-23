X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["813" "Monday" "23" "April" "2018" "06:41:09" "+0200" "=?UTF-8?B?S2Fyc3RlbiBLw7ZuaWc=?=" "mail@kkoenig.net" "<b3a0e1f9-d0d8-5441-33b1-84d748347021@kkoenig.net>" "26" "[oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5" nil nil nil "4" "2018042304:41:09" "[oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5" (number mark "U       mail@kkoenig Apr 23   26/813   " thread-indent "\"[oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15413 invoked by uid 550); 23 Apr 2018 09:05:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24572 invoked from network); 23 Apr 2018 04:41:22 -0000
To: oss-security@lists.openwall.com, fulldisclosure@seclists.org
From: =?UTF-8?Q?Karsten_K=c3=b6nig?= <mail@kkoenig.net>
Message-ID: <b3a0e1f9-d0d8-5441-33b1-84d748347021@kkoenig.net>
Date: Mon, 23 Apr 2018 06:41:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5

Hello,

I found a small issue in PHPLiteAdmin. It's an authorization bypass
which works since version 1.9.5 from 2014 (current is 1.9.7.1) because
PLA uses '==' instead of '===' for the password comparison in
'attemptGrant' of the 'Authorization' class. If the password is set to
one which correspondends to a number in scientific notation, one could
easier bruteforce the password or bypass it completely, e.g.:

php > var_dump('200' == '2e2');
bool(true)
php > var_dump('0' == '0e2');
bool(true)
php > var_dump('0' == '0e2342');
bool(true)

I opened an issue at GitHub for this[0] and have written about it[1]
(section 2 is the interesting one for this issue).

Best,

Karsten

[0] https://github.com/phpLiteAdmin/pla/issues/11
[1]
http://k3research.outerhaven.de/posts/small-mistakes-lead-to-big-problems.html
