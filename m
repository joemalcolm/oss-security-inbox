X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["337" "Monday" "12" "December" "2016" "10:36:11" "-0600" "Sam Whited" "sam@samwhited.com" "<CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>" "15" "Re: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" "^Cc:" nil nil "12" "2016121216:36:11" "[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" (number mark "        sam@samwhite Dec 12   15/337   " thread-indent "\"Re: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza\"\n") "<7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>" ("<20161209201906.ltauap7fydkc62f6@eldamar.local>" "<7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11760 invoked by uid 550); 12 Dec 2016 17:22:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11932 invoked from network); 12 Dec 2016 16:37:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=samwhited.com; s=swgoo;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=XNklhCYu45AzqqRq32SCo2DQM+3vZcy0/KxEmNscb78=;
        b=UBnfBh8v5IqpFu9KCvI6Qn5tm++ZQeK3l+wFMSsCiwyWUH5TLqwEWvuqJjJIg++Wjr
         wrqHZYCzhSlUhpoKqsN238pNQIkV1AHNRGFTV3/fnGGqdDBlOFet9H3Js+/K08nDgYMf
         ybn9tE7i9R0+/ImxRQ5q063WwVKI5J0YH17z4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=XNklhCYu45AzqqRq32SCo2DQM+3vZcy0/KxEmNscb78=;
        b=PB0Iz4/kwhbs7Mjk/72nQ4XNvsHqy+pxiaWihiDh1GdJeHJO854H1qlG/SRct1i3Cd
         rYUxxcmjRv9+bcoWyquls/DYxKqOZzYShM6dI0t1DoUW1m5lTWAS1jZ85E08grwGOYM5
         cxzuXgNI4bNTtXZaehngV/KizirXonQxI5OTXnERpLK+0877Y4JYJf3S67qOJMda4z6A
         bUglnsDP2r0AhQC/sr7c0KYpLSXzEp0RgI9TUfp7ItjnMQv8IAFF6O6z2PGSNTDk6Yid
         1gdaVnoLZU8IYJsRSvNd7lUhLVqWZpHDaHkl9hq1JYvIdBGuldt1w0FXd1qSGsY8Kh46
         k2UQ==
X-Gm-Message-State: AKaTC039cHLJMelll+6OVvWcNGxo8aX/2FSYmuv8Hys06FTdCGHYp7AiwHJnnjFwWNeHYGcx3uKOFII2TMderQ==
X-Received: by 10.55.36.149 with SMTP id k21mr79696295qkk.252.1481560612223;
 Mon, 12 Dec 2016 08:36:52 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [12.26.56.243]
In-Reply-To: <7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>
References: <20161209201906.ltauap7fydkc62f6@eldamar.local> <7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>
Message-ID: <CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Salvatore Bonaccorso <carnil@debian.org>, cve-assign@mitre.org
Date: Mon, 12 Dec 2016 10:36:11 -0600
From: Sam Whited <sam@samwhited.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: MCabber: remote attackers can
 modify the roster and intercept messages via a crafted roster-push IQ stanza
To: oss-security@lists.openwall.com

On Sun, Dec 11, 2016 at 4:29 PM,  <cve-assign@mitre.org> wrote:
> Use CVE-2016-9928.

Thanks;

For my edification: would it be better to send something to this list
for CVEs in open source software in the future? I've tried the Google
Docs form linked from the website a few times and never gotten a
response.

Best,
Sam

-- 
Sam Whited
