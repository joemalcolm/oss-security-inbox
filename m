X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["378" "Thursday" "3" "December" "2015" "13:19:22" "+0100" "Jakub Wilk" "jwilk@jwilk.net" "<20151203121922.GB4471@jwilk.net>" "10" "Re: [oss-security] Re: Heap Overflow in PCRE" "^Cc:" nil nil "12" "2015120312:19:22" "[oss-security] Re: Heap Overflow in PCRE" (number mark "        jwilk@jwilk. Dec  3   10/378   " thread-indent "\"Re: [oss-security] Re: Heap Overflow in PCRE\"\n") "<20151202225938.BC7C36C0805@smtpvmsrv1.mitre.org>" ("<20151202175839.GA24979@eldamar.local>" "<20151202225938.BC7C36C0805@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7521 invoked by uid 550); 3 Dec 2015 12:19:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7499 invoked from network); 3 Dec 2015 12:19:48 -0000
Message-ID: <20151203121922.GB4471@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com, carnil@debian.org,
	cve-assign@mitre.org
References: <20151202175839.GA24979@eldamar.local>
 <20151202225938.BC7C36C0805@smtpvmsrv1.mitre.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20151202225938.BC7C36C0805@smtpvmsrv1.mitre.org>
User-Agent: Mutt/1.5.23.1 (2014-03-12)
Cc: carnil@debian.org, cve-assign@mitre.org
Date: Thu, 3 Dec 2015 13:19:22 +0100
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Heap Overflow in PCRE
To: oss-security@lists.openwall.com

>3. The pattern in question for CVE-2015-3210, i.e., the 
>/^(?P=B)((?P=B)(?J:(?P<B>c)(?P<B>a(?P=B)))>WGXCREDITS)/ pattern, 
>doesn't have any instances of something like \1 or \g that are commonly 
>used for a back reference.

(?P=foo) is the Python syntax for backreference, which is supported by 
PCRE: http://pcre.org/current/doc/html/pcre2syntax.html#SEC20

-- 
Jakub Wilk
