X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1473" "Wednesday" "25" "April" "2018" "10:57:55" "+0200" "=?UTF-8?B?S2Fyc3RlbiBLw7ZuaWc=?=" "mail@kkoenig.net" "<b38f682c-45db-111b-2741-27946d4fca6b@kkoenig.net>" "44" "Re: [oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5" nil nil nil "4" "2018042508:57:55" "[oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5" (number mark "U       mail@kkoenig Apr 25   44/1473  " thread-indent "\"Re: [oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5\"\n") "<b3a0e1f9-d0d8-5441-33b1-84d748347021@kkoenig.net>" ("<b3a0e1f9-d0d8-5441-33b1-84d748347021@kkoenig.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28264 invoked by uid 550); 25 Apr 2018 09:16:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11803 invoked from network); 25 Apr 2018 08:58:08 -0000
To: oss-security@lists.openwall.com
References: <b3a0e1f9-d0d8-5441-33b1-84d748347021@kkoenig.net>
From: =?UTF-8?Q?Karsten_K=c3=b6nig?= <mail@kkoenig.net>
Message-ID: <b38f682c-45db-111b-2741-27946d4fca6b@kkoenig.net>
Date: Wed, 25 Apr 2018 10:57:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <b3a0e1f9-d0d8-5441-33b1-84d748347021@kkoenig.net>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] Authorization bypass in PHPLiteAdmin since 1.9.5

Hello,

wbowling from GitHub found out that this bug is even more serious and
can be used to bypass the authorization for arbitary passwords. The bug
is in Line 40 of classes/Authorization.php[0]. The salt is generated
with every reload. You can create cookies again and again until you have
a salt which gives you a hash like '0e179250003459658275905707244744'.
Now you can login with that specific salt and '0' as the cookie.

Best,

Karsten

[0]
https://github.com/phpLiteAdmin/pla/blob/f3998704a846ddf71539092cd6fe84f2e9c35725/classes/Authorization.php#L40

On 23.04.2018 06:41, Karsten König wrote:
> Hello,
> 
> I found a small issue in PHPLiteAdmin. It's an authorization bypass
> which works since version 1.9.5 from 2014 (current is 1.9.7.1) because
> PLA uses '==' instead of '===' for the password comparison in
> 'attemptGrant' of the 'Authorization' class. If the password is set to
> one which correspondends to a number in scientific notation, one could
> easier bruteforce the password or bypass it completely, e.g.:
> 
> php > var_dump('200' == '2e2');
> bool(true)
> php > var_dump('0' == '0e2');
> bool(true)
> php > var_dump('0' == '0e2342');
> bool(true)
> 
> I opened an issue at GitHub for this[0] and have written about it[1]
> (section 2 is the interesting one for this issue).
> 
> Best,
> 
> Karsten
> 
> [0] https://github.com/phpLiteAdmin/pla/issues/11
> [1]
> http://k3research.outerhaven.de/posts/small-mistakes-lead-to-big-problems.html
> 
