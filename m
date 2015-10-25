X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3483" "Sunday" "25" "October" "2015" "12:01:47" "-0600" "Mohamed A. Baset" "symbian2010@gmail.com" "<CAHu6=a7_KG+Sy5uFiX39J=93LnqoKs9f96gcLa83+w82AhnVCA@mail.gmail.com>" "110" "[oss-security] CVE Request regarding Firefox FindMyDevice Service Critical ClickJacking" nil nil nil "10" "2015102518:01:47" "[oss-security] CVE Request regarding Firefox FindMyDevice Service Critical ClickJacking" (number mark "        symbian2010@ Oct 25  110/3483  " thread-indent "\"[oss-security] CVE Request regarding Firefox FindMyDevice Service Critical ClickJacking\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30056 invoked by uid 550); 25 Oct 2015 20:12:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26575 invoked from network); 25 Oct 2015 18:02:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to:content-type;
        bh=QJCIp0qpb2N8BicX7v8Ysm9wCEqAFbP8TVA9BS2sJ04=;
        b=SpWhLuZRlGxUdQSQ902ktwgKTyJHD/2Kybn9ZugZTDWT2pjEmjiiY+gZC5Q9ZinYVd
         Vt/XQH7VyKghyomQ2+2xFtmfvzeExBj01goQhtdlaj5gcWJk41qbjUly5gryfJCN/l8K
         eampZBuw/JH3GYRaUuUkA7JmqWTGGx3Kn5YpTwdA3+ox4+zw8yhlapjVZr2ssdKyX8wX
         bea83CklEnhnynibgR+R9/86FzZZLGkdIiHVMa9lQglqmoLT4bdKl982fPM5qHjFwzdF
         KNF3vXtOS1/vwD9Du55uQ5DSEJstpsElNyd2+xNid2/ASdUQKn66UOqMVVwsTNZpX8nH
         +HaQ==
X-Received: by 10.107.12.142 with SMTP id 14mr28711601iom.78.1445796146546;
 Sun, 25 Oct 2015 11:02:26 -0700 (PDT)
MIME-Version: 1.0
Message-ID: <CAHu6=a7_KG+Sy5uFiX39J=93LnqoKs9f96gcLa83+w82AhnVCA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f9726bb8d9c0522f1a5f1
Date: Sun, 25 Oct 2015 12:01:47 -0600
From: "Mohamed A. Baset" <symbian2010@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request regarding Firefox FindMyDevice Service Critical ClickJacking
To: secalert@redhat.com, oss-security@lists.openwall.com

--001a113f9726bb8d9c0522f1a5f1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Vulnerability Title:
Firefox FindMyDevice Service Critical ClickJacking

Author Name
Mohamed Abdelbasset Elnouby Abouelwaffa

Contact Details:
https://twitter.com/SymbianSyMoh
https://mx.linkedin.com/in/SymbianSyMoh

Report Date:
2014-11-15 11:54:12 PST

Report Status:
Fixed / 2015-03-23 13:23:19 PDT

Vulnerability Type:
ClickJacking

Info:
https://www.owasp.org/index.php/Clickjacking

Affected URL(s):
https://find.firefox.com

PoC Screenshot:
Included as an attachment
For non email receptionist "https://goo.gl/FUkFVm"

In-depth analysis of the Vulnerability:
Regardless The security protection mechanism which is that that attacker
definitely can't guess or brute force the Device id
"8fcXXXXc40de04b3803945XXXXXXXXXX" which is a part of the URL to the
victim's profile to make a successful clickjacking attack iframe, in fact
this protection mechanism is too low coz all the attacker to do is just to
point the logged in user to his iframe source https://find.firefox.com and
Mozilla will care about the rest "redirect the victim to the correct logged
in active device id.

What attacker can do:
1-"Erase the victim's device data" With just only 3 clicks by the victim
himself if he tricked with "click here to win a 50 BTC for Example
2-"Lock The victim device or change his lock code" if it is the first time
to be set "4 clicks"
3-"Makes the Device ringing" 2 clicks"

Expected results:
Find My Device web interface mustn't be iframed Apply XFO or Frame Busting
techniques

More Details About clickjacking:
Because of No Frame Busting Techniques or X-Frame-Options header, the whole
website is vulnerable to Clickjacking attacks which could lead to a full
account takeover considering such scenario:
1. Attacker will iframe any sensitive the website page and adjust the
iframe size and add a "divs" as a layers on the unwanted-to-show parts of
the original web page to fool and trick the user.
2. User get tricked by the crafted page and followed the attacker's
instruction to do a specific clicks to the iframed page
3. Unwanted actions happened in the logged in user's session in result to
the attack's clicks.

Remedy:
1- Add an X-Frame-Options HTTP Header and set it's value to "Deny" or
"Sameorigin" as you can see it suitable to mitigate such attacks
2- Use iframe busting techmiques in JS code like this:

<script type=3D"text/javascript">
 if (self =3D=3D=3D top) {
 var antiClickjack =3D document.getElementById("antiClickjack");
 antiClickjack.parentNode.removeChild(antiClickjack);
 } else {
 top.location =3D 'Your_Website_URL_Here';
 }
</script>

or

<script type=3D"text/javascript">
 // Disable frame hijacking
 if (top !=3D self)
 top.location.href =3D location.href;
 </script>

Actual results:
Find My Device web interface is iframable which makes it vulnerable to
ClickJacking Attacks

References:
https://developer.mozilla.org/en-US/docs/Web/HTTP/X-Frame-Options
Original Report: https://bugzilla.mozilla.org/show_bug.cgi?id=3D1100004

Thanks=E2=80=8B


*Mohamed Abdelbaset Elnoby*Guru Programmer, Senior Information Security
Consultant & Web Application Penetration Tester at Seekurity Inc
<http://www.Seekurity.com>.

Contact me at:
LinkedIn
<https://www.linkedin.com/in/symbiansymoh>Facebook
<https://fb.com/symbiansymoh>Twitter <https://twitter.com/symbiansymoh>
<https://twitter.com/symbiansymoh>

--001a113f9726bb8d9c0522f1a5f1--
