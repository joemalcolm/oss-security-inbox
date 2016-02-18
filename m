X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2209" "Thursday" "18" "February" "2016" "19:02:14" "+0100" "Manuel Mancera" "sinkmanu@gmail.com" "<56C60726.8080802@gmail.com>" "48" "[oss-security] Re: CVE Request: graphite-web: open redirect" nil nil nil "2" "2016021818:02:14" "[oss-security] Re: CVE Request: graphite-web: open redirect" (number mark "U       sinkmanu@gma Feb 18   48/2209  " thread-indent "\"[oss-security] Re: CVE Request: graphite-web: open redirect\"\n") "<20160218002253.DAAF452E03D@smtpvbsrv1.mitre.org>" ("<20160218002253.DAAF452E03D@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9241 invoked by uid 550); 18 Feb 2016 19:00:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24227 invoked from network); 18 Feb 2016 18:02:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-type;
        bh=yDRSwmyNDVF3wmZ1RZ2Badvo2rwLccH6McCFpELtpjI=;
        b=Od0JO1rpMCFzLh9SUoY2mtRxfdCWIZ1J4TH0g9CjmHIZ3fhBKNjDIHearRHucJlA3f
         X+R+G6TgJqG0VneIthfC5U5HJydxsJLGF5Jl/xrsrKUBFdFIfbO2c+vFfQubaVhky99S
         bUPw+ePK/WC4S8uQGnXDQ8p3+07yvIiMqg84z4J+V8BEgf3ULyWG1MfMltOhyO+M1sOK
         v16fKSK4wfqRtrEO1Hz+3egANA0KkH602mlUaroWvCWKY/OzId6y8XUaOSglfLzTa2Mw
         JQvYWy6Opxqi7CNBQUixo75c/OSM9hGkiTQnPbkghElbfYX2VsdUVTQf8+z7sxrHnY7x
         MWfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type;
        bh=yDRSwmyNDVF3wmZ1RZ2Badvo2rwLccH6McCFpELtpjI=;
        b=IDgrFujXzxfRLjYGZqbXjX+fPtfplCeliaD+jGjXytno7ENZADduJF8lGoPieeYuIY
         z5aSnBsVygVEoD+ONbkV+7Ny98Patblsc58QZdlP4r8He77zUPLNoXNo9+SEpHam2R0D
         7tPN3FWxBthL7YQysR7HuM8V9OGLYGCUwHou+E7GjookfUzEm/CuUI/Orsvs5h9w3oI0
         d9zybd50Y0XK04GRdQ5bC82fDZJZmo8jXiz2k7yLtc0euFVcWEzpUtfLrKfpzZEyPdzQ
         UiASyRifjVemh2iTa33L7stAeDtcKad6c/hacQkZhU5AVA84kXIsgqx0aJg4UFOGGwbX
         S4eA==
X-Gm-Message-State: AG10YORBEGGbja4P+hWESskTvVPmhrXwoOkQeJ/ifSGWfutMxQBaF6S4tfgukfxA1pQgRA==
X-Received: by 10.28.127.150 with SMTP id a144mr4463469wmd.25.1455818536317;
        Thu, 18 Feb 2016 10:02:16 -0800 (PST)
To: cve-assign@mitre.org
References: <20160218002253.DAAF452E03D@smtpvbsrv1.mitre.org>
Cc: oss-security@lists.openwall.com, security@debian.org
From: Manuel Mancera <sinkmanu@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56C60726.8080802@gmail.com>
Date: Thu, 18 Feb 2016 19:02:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <20160218002253.DAAF452E03D@smtpvbsrv1.mitre.org>
Content-Type: multipart/alternative;
 boundary="------------010701050900040600030501"
Subject: [oss-security] Re: CVE Request: graphite-web: open redirect

--------------010701050900040600030501
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


> > https://github.com/graphite-project/graphite-web/issues/1441 > > > two =
OpenRedirects in /webapp/graphite/account/views.py > > >
Proof of Concept: > > >=20=20=20=20
http://graphiteSite/account/logout?nextPage=3Dhttps://www.google.com > >
Is there a response from the author of the code indicating that this >
is a vulnerability? Open redirects to http/https are not universally >
considered vulnerabilities for all vendors and products, e.g., > >=20=20
https://sites.google.com/site/bughunteruniversity/nonvuln/open-redirect
> > is probably the most well-known counterargument. >

The authors did not answer.

> > >     http://graphiteSite/account/update > >         POST:
nextPage=3Dhttps://www.google.com > > What is the threat model for this
open redirect issue that requires a > POST request? Often, an attacker's
ability to make a client submit a > POST request with an
attacker-controlled parameter means that the > client is executing
JavaScript code from an attacker-controlled site, > and in that case the
JavaScript can send the browser to an arbitrary > http/https URL without
any realistic ability of the client user to > predict that that might
occur. Is there a way in which the existence > of
http://graphiteSite/account/update helps the attacker to accomplish >
the redirect? >

Yes, exist multiple XSS vulnerabilities described in the CVE-2013-5943
[1]. Some XSS were fixed but other not (I found a persistent XSS [2]).
Any user identified in the application could inject javascript code that
could be executed in the victim. Is not possible get the cookie in
javascript because has the "HTTPOnly" flag.

> > Also, inside the logout and update functions, the session should be che=
cked. > > What vulnerability are you reporting here? Are /account/logout and
> /account/update vulnerable to CSRF? >

Yes, both are vulnerable to CSRF (and all the edit graphs are vulnerable
too, deleted included).


[1] https://www.cvedetails.com/cve/CVE-2013-5943/
[2] https://github.com/graphite-project/graphite-web/pull/1470


--------------010701050900040600030501--
