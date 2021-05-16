X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1728" "Sunday" "16" "May" "2021" "12:29:32" "-0700" "Ivan Novikov" "in@wallarm.com" nil "54" "Re: [oss-security] Open Source WAF testing tools" nil nil nil "5" nil nil (number mark "U       in@wallarm.c May 16   54/1728  " thread-indent "\"Re: [oss-security] Open Source WAF testing tools\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Open Source WAF testing tools" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22128 invoked by uid 550); 16 May 2021 19:38:17 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19532 invoked from network); 16 May 2021 19:29:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wallarm.com; s=g;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=rDyrfuVipTnk+qaPb1W5hA6OfGb++f41/j/j3GCUlxs=;
        b=KQ6Ch2YsXszgwP/DD4MWaoZMsjreae7TBK0Co4l+oPS8RBD3ruCd+D8GYSpkRjp1Oa
         d8NSFCS0DlujfVyCa2V9Q7H2eEknjhHzTPRDt5v9T1cRW0DEGs8sSvGjSKevrr+P0PSb
         BLrsVBNHCrBXZwoAnekgl3SFpCJ/ZZE52+otCJOQ4/a0a8aCchXO4EnLGP/jY3a+QMTC
         sPG76E7C5i8dX4f0eAl0DJWjuY1LK+V67qrUm4jBoZS/XA6X8NJvx/QkV/QdFFHV355V
         LQ1Rxx7SwVRazZ34zWW27y4yfTfJUyxaWDQOeX6uLCF1yb3Dk+OM3+Z1ocxkg6Enj0tm
         ZiSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=rDyrfuVipTnk+qaPb1W5hA6OfGb++f41/j/j3GCUlxs=;
        b=DnfTnGX/3+PhkAazJsAxq/S9gSw/v1l5qsFC8mG505Uk4cpYrBYzDWcuBgZFrW2tf/
         8WM7pIOIabA91uKg17o/t7g4a5RzglMKdBw9koKXBJzqPqsAHTh/ZoFj1gMOaoTTzOJx
         yvNWnsePgRbEQADpEnct3jtyrk7Rziw7OJQNwbgbulnMot1kjidkg1pQ2GcnUZVRg/oA
         +niP7cCoz9PpHJPl/umlQPBZiS7chUKjiAW8cZGe0RlANeKue5v2L5Ac01GyggkqEklS
         axCdoJ+SMjr0prA41a6hYB3VRfeo8bnDl4NzuOqupsXMEncpP1jt3kQHAsZmTik0Z/Pg
         NAkw==
X-Gm-Message-State: AOAM533E2UMZ1V0rOo4arbnrn3eYIOklrK4TLFj/XbgNdSaVbH08Jwqv
	Ady/eteCS+mce/STWIQ/8ix4TIU4gZVuWFuduvLRWZ1sE3nW7A==
X-Google-Smtp-Source: ABdhPJxAxTEIDdmJ3rkpCOGMre3+oPzYQyxxbB00rBu05nQFt0v7508yd6XxdO0v0nDpR0WNcerfshGdy9JwYFvwatY=
X-Received: by 2002:a2e:5345:: with SMTP id t5mr47487546ljd.259.1621193383685;
 Sun, 16 May 2021 12:29:43 -0700 (PDT)
MIME-Version: 1.0
References: <CANnFHybun4hjZqFqOsLOhdPfPX-Q3tGpxzyxjqbepZ+nK2VJQQ@mail.gmail.com>
In-Reply-To: <CANnFHybun4hjZqFqOsLOhdPfPX-Q3tGpxzyxjqbepZ+nK2VJQQ@mail.gmail.com>
From: Ivan Novikov <in@wallarm.com>
Date: Sun, 16 May 2021 12:29:32 -0700
Message-ID: <CAEK7nyk2LssfkKk46u177Fd63CqUHzJXv9xFOcE0GX1cvqQjMA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000bf42a505c2777f1b"
Subject: Re: [oss-security] Open Source WAF testing tools

--000000000000bf42a505c2777f1b
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

We made GoTestWAF with no any vendor-specific things. It's mainly cover
OWASP Top-10 and API data encodings such as REST/JSON, SOAP/XML, GraphQL,
and WebSockets since the latest versions. You can add your payloads as easy
as making Yaml files.

At the end of the last year, it was significantly improved by community
detects
https://github.com/wallarm/gotestwaf/pull/29 , thanks Vulners team and
a https://github.com/waf-bypass-maker/waf-community-bypasses project.

We are actively working on the project and any advice or suggestions in a
form of GitHub issue or pull-requests will be highly appreciated.

Have a great weekend everyone!

On Sun, May 16, 2021 at 12:07 PM Martin O'Neil <martinoneil.cyber@gmail.com>
wrote:

> Hi, list,
>
> Does anybody know an open-source tool for testing Web Application
> Firewalls?
>
> In an ideal case, with an out-of-the-box-ready CLI/UI, PDF reports, and a
> configurable set of payloads to test. I need it to check if my WAF
> deployment and rules work well.
>
> I found at least 5 projects, all made by WAF vendors.
>
> 1. https://github.com/wallarm/gotestwaf byWallarm
> 2. https://github.com/signalsciences/waf-testing-framework by Signal
> Sciences
> 3. https://github.com/fastly/ftw by Fastly
> 4. https://microsoft.github.io/WAFBench/ by Microsoft Azure WAF team
> 5. https://github.com/f5devcentral/f5-waf-tester by F5
>
> The GoTestWAF project looks more active and supported by the community.
> Does anybody recommend some other GitHub repositories, preferably made by
> 3rd party folks?
>
> Thanks
> Martin.
>
-- 
Ivan Novikov
Wallarm, CEO
+1.650.454.9339

--000000000000bf42a505c2777f1b--
