X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["663" "Monday" "12" "December" "2016" "10:40:16" "-0600" "Sam Whited" "sam@samwhited.com" "<CAHbk4RL5S3VMX375NbqUUMmfWaUUM4wP1vNnYTvO4w2QMGE9qQ@mail.gmail.com>" "28" "Re: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" "^Cc:" nil nil "12" "2016121216:40:16" "[oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza" (number mark "        sam@samwhite Dec 12   28/663   " thread-indent "\"Re: [oss-security] Re: CVE Request: MCabber: remote attackers can modify the roster and intercept messages via a crafted roster-push IQ stanza\"\n") "<CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>" ("<20161209201906.ltauap7fydkc62f6@eldamar.local>" "<7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG>" "<CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 14046 invoked by uid 550); 12 Dec 2016 16:42:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13814 invoked from network); 12 Dec 2016 16:41:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=samwhited.com; s=swgoo;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Uku/suJIB62zCPBzuVNVRDma4UbG2McKcAByhZsw2Zw=;
        b=rx+Zq1Yv02H9Wv+J0HtMrBQ3e06m4edzJO/F8oBUZwcb0dzDfq9Liu72o/hDV4CKNR
         7gSVUFNCS1dp00ClSTwl/GzOCiX7+kc4bVPbspXVYJlZCrRfO0xowsg+hMQmVa+5InhW
         ld+W+4NxSeykzZeOC/75dL4QUp7bprb1ukYF8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Uku/suJIB62zCPBzuVNVRDma4UbG2McKcAByhZsw2Zw=;
        b=RCxbKTuhLkU1yGbjTVn5aJpxfS+i5VT38vLr5Lau+mSliBMEAhutR/JbZeaTgRSJ7Y
         2pqrSLu0rzxDiHMUKnGLi56wlnOIsSsDp3bEVb0Sz6kk4M9W1vt+ace1eNWg2IaUWOM+
         lJ0E7G7qQQGCa5mFb6oqT2xwRZf/dBFjliADrNCHYwjF5rB4Z+yMml1I0wKyDF4q/uor
         289MaFLcjohEwhgcFqAZ1edLNe/bMhrEmu88sWZ02yd3fPlbFb0tlIh0t6qofVg9/VK2
         7mjzAcUJlOU0ceqACNKEjrPwWC0oLV6AvtjhjLziQmRB3kkGDFYWMGpOeaVZZJDndGw6
         420g==
X-Gm-Message-State: AKaTC0071rO1GtyfCrhhLNqrP+zGySs416ZP4snc/v1Cdm542XDSsV/Y/aLlcjkR0pJ99eywzopgl9dfgeykeQ==
X-Received: by 10.55.120.195 with SMTP id t186mr79149175qkc.218.1481560857188;
 Mon, 12 Dec 2016 08:40:57 -0800 (PST)
MIME-Version: 1.0
X-Originating-IP: [12.26.56.243]
In-Reply-To: <CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>
References: <20161209201906.ltauap7fydkc62f6@eldamar.local>
 <7b789ec9b990495db739639f907b2366@imshyb02.MITRE.ORG> <CAHbk4RJo3pRnwE=X--b+c=wvp6gPL1AUJm7UacoE+z7TPEXUfQ@mail.gmail.com>
Message-ID: <CAHbk4RL5S3VMX375NbqUUMmfWaUUM4wP1vNnYTvO4w2QMGE9qQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Cc: Salvatore Bonaccorso <carnil@debian.org>, cve-assign@mitre.org
Date: Mon, 12 Dec 2016 10:40:16 -0600
From: Sam Whited <sam@samwhited.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request: MCabber: remote attackers can
 modify the roster and intercept messages via a crafted roster-push IQ stanza
To: oss-security@lists.openwall.com

Oops, I got the autoreply about not using this list to request CVEs
after sending that message; now I'm a bit more confused about the
current procedure; please advise.

=E2=80=94Sam

On Mon, Dec 12, 2016 at 10:36 AM, Sam Whited <sam@samwhited.com> wrote:
> On Sun, Dec 11, 2016 at 4:29 PM,  <cve-assign@mitre.org> wrote:
>> Use CVE-2016-9928.
>
> Thanks;
>
> For my edification: would it be better to send something to this list
> for CVEs in open source software in the future? I've tried the Google
> Docs form linked from the website a few times and never gotten a
> response.
>
> Best,
> Sam
>
> --
> Sam Whited



--=20
Sam Whited
pub 4096R/54083AE104EA7AD3
