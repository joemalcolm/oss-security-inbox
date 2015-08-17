X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["719" "Monday" "17" "August" "2015" "22:37:23" "+0300" "Solar Designer" "solar@openwall.com" "<20150817193723.GA2745@openwall.com>" "18" "Re: [oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability" nil nil nil "8" "2015081719:37:23" "[oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability" (number mark "        solar@openwa Aug 17   18/719   " thread-indent "\"Re: [oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability\"\n") "<20150817175548.8641052E00E@smtpvbsrv1.mitre.org>" ("<55C7AEF2.1070908@gmail.com>" "<20150817175548.8641052E00E@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15837 invoked by uid 550); 17 Aug 2015 19:37:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15812 invoked from network); 17 Aug 2015 19:37:28 -0000
Message-ID: <20150817193723.GA2745@openwall.com>
References: <55C7AEF2.1070908@gmail.com> <20150817175548.8641052E00E@smtpvbsrv1.mitre.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150817175548.8641052E00E@smtpvbsrv1.mitre.org>
User-Agent: Mutt/1.4.2.3i
Cc: olivier@bottomlesspit.org, f.labreche@gmail.com, cve-assign@mitre.org
Date: Mon, 17 Aug 2015 22:37:23 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability
To: oss-security@lists.openwall.com

On Mon, Aug 17, 2015 at 01:55:48PM -0400, cve-assign@mitre.org wrote:
> > https://github.com/claviska/simple-php-captcha/issues/16
> 
> Use CVE-2015-6250 for the original issue that the "srand(microtime() *
> 100)" call is counterproductive because, especially in cases of good
> time synchronization, the client is able to run the same srand call as
> the server.

FWIW, time synchronization was irrelevant.  The original report said:

"Since microtime() is used both in the initial seed for the captcha and
in the captcha url path sent to the client, [...]"

This is referring to:

$image_src = substr(__FILE__, strlen( realpath($_SERVER['DOCUMENT_ROOT']) )) . '?_CAPTCHA&amp;t=' . urlencode(microtime());

Alexander
