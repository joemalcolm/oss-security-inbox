X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2027" "Monday" "10" "August" "2015" "00:14:38" "+0300" "Solar Designer" "solar@openwall.com" "<20150809211438.GA20681@openwall.com>" "38" "Re: [oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability" nil nil nil "8" "2015080921:14:38" "[oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability" (number mark "        solar@openwa Aug 10   38/2027  " thread-indent "\"Re: [oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability\"\n") "<55C7AEF2.1070908@gmail.com>" ("<55C7AEF2.1070908@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3712 invoked by uid 550); 9 Aug 2015 21:14:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3686 invoked from network); 9 Aug 2015 21:14:42 -0000
Message-ID: <20150809211438.GA20681@openwall.com>
References: <55C7AEF2.1070908@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55C7AEF2.1070908@gmail.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com,
	Olivier Bilodeau <olivier@bottomlesspit.org>
Date: Mon, 10 Aug 2015 00:14:38 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request - simple-php-captcha - captcha bypass vulnerability
To: Fran??ois Labr??che <f.labreche@gmail.com>

On Sun, Aug 09, 2015 at 03:50:10PM -0400, Fran??ois Labr??che wrote:
> We found a captcha bypass vulnerability in an open source captcha 
> software, made by Cory LaViska for A Beautiful Site. Here is the github 
> repository: https://github.com/claviska/simple-php-captcha.
> 
> We opened an issue on github 
> <https://github.com/claviska/simple-php-captcha/issues/16>, and the 
> vulnerability has been fixed. They never did any release so we don't 
> think the fix will be released in any form. Simply advising users to 
> update to git master's should suffice.
> 
> The simple-php-captcha.php file had a vulnerability enabling a client to 
> generate the captcha response automatically, effectively bypassing the 
> captcha.
> 
> Since the microtime() function was used both in the initial seed for the 
> captcha and in the captcha url path sent to the client, it was possible 
> to generate the captcha result automatically by running the same code 
> client-side.

And you think removing the srand(microtime() * 100) fixes this?  Well,
it does appear to fix the most straightforward and easiest attack, and
captchas are bypassable in general, but does this raise the bar high
enough for the "fixed" version not to be CVE-worthy?  Or are you going
to be requesting a second CVE ID for it then?

The "fixed" code relies on PHP's automatic seeding for rand() (which is
typically dependent on system time anyway, adding only a process id to
the mix), and, what's probably worse, it uses rand() so many times that
it leaks its tiny internal state via properties of the captcha that are
easy for a computer to analyze.  While figuring out the captcha text
might require OCR, figuring out the text length, font size, x and y
position, and colors is easier.  OCR isn't rocket science, but it's the
intended level of "security" of this captcha, while being able to infer
the text through even easier analysis of "metadata" is a captcha bypass,
somewhat similar to (but moderately trickier than) your initial finding.

Alexander
