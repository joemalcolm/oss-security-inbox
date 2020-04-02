X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3099" "Thursday" "2" "April" "2020" "11:19:11" "-0700" "Reed Black" "reed@unsafeword.org" nil "60" nil "^Cc:" nil nil "4" nil nil (number mark "        reed@unsafew Apr  2   60/3099  " thread-indent "\"Re: [oss-security] Deficient engineering processes\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] Deficient engineering processes" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21529 invoked by uid 550); 2 Apr 2020 18:56:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19693 invoked from network); 2 Apr 2020 18:52:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=unsafeword.org; s=google;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=EV/C59O3eya7zyP1Tc4ejt5Xvn/cMAK6eo0xgCzwLJ0=;
        b=K+QV9oODlAwfFQY+8+e2apN+D/zDP3LD4TuXCcPHfU6HXp72dXhPim549IHZkD91/9
         xQ1YiW10skQfqPmf7XGEBwAzAGVgQafsVvz5iqjYi8y92q0bq4xZilkFHSGuLNspDfFk
         cW8fx1PGVrJIl23/SInmE3pfnHQz2R6U/mvUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=EV/C59O3eya7zyP1Tc4ejt5Xvn/cMAK6eo0xgCzwLJ0=;
        b=Iz+bH9mS7dT15x2b6+HGvuzLWlpp3/TUR1A49ypDeTiepmJnETTIW6MFeQEZjdTCAY
         tdE3UHzR3p99XP0BeHAS0MCAjyUBdDxRkZ2hWowZksxJ+fxcCIV3Qy5JKFNQh02aEZux
         gHoFfOQyyyclYi3RdFxajrkr54EfWkPg1D3FY9RwBCpq/SkRudPO/YTha2STI++iLPgf
         pNM9EG65TqbGqUEqhEzlURRGa0FCv7X3NHmO6C8apQR2IzL42Ld2SBSsefmtlJYMMyUW
         VZOsHybitX0Pg2xGBuHwZSNQPq3vgITud05LIEfMKoDRLjqv88jfpydxuRTs7zmOlmzc
         7P2g==
X-Gm-Message-State: AGi0PuZqzbbGX+joKTPMdt5aM+4ZwFod6/xUHSXd6BmghTkzV58/sMAg
	XKVTXxErzPlM1CRmtfYOSfFplf5OCwFDyw==
X-Google-Smtp-Source: APiQypJyjziJQILK1XWuBcqvjkrmBBWzCW25UQwnLkCz+JRVKWpUse6dgEwOH+XieUhVqod82FPe3g==
X-Received: by 2002:a63:3583:: with SMTP id c125mr4667636pga.325.1585851554649;
        Thu, 02 Apr 2020 11:19:14 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
In-Reply-To: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <EFD7F82B-BA85-43E6-BF5D-60A2EC54560E@unsafeword.org>
References: <CAH8yC8=P-5i_0WT-AWSJ65JeY1C3BrB7p9e+4SCtH938H5ZqVA@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.14)
Cc: Reed Black <reed@unsafeword.org>
Date: Thu, 2 Apr 2020 11:19:11 -0700
From: Reed Black <reed@unsafeword.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Deficient engineering processes
To: oss-security@lists.openwall.com



> On Apr 1, 2020, at 4:42 PM, Jeffrey Walton <noloader@gmail.com> wrote:
>=20
> [...]
>=20
> My question is, how to convince someone that following standard
> project management procedures is a good thing? How do we get them
> onboard with improving their engineering processes? Especially the
> evaluation phase, and leveraging a continuous integration pipeline to
> detect errors before they are released to users?

The answer will vary depending on the context - business vs hobbyist open s=
ource project, etc.


In business, one of the most common failings of a security program is in no=
t making security defects visible at the executive level. Exec teams unders=
tand the liability of accruing security debt. Or if they don't, you need to=
 demonstrate the business case by showing what happened to other companies =
where security failed.

You want to keep it high level. Make sure the exec team has a nice simple g=
raph that shows any negative trends in open security issues over time. Pers=
onally, I like to make sure they see that once a quarter, the managerial te=
ams see it at least monthly, and the engineering team sees the chart and a =
list of top or aging issues every week or two.

Once the exec team is on board and asking questions when things trend in th=
e wrong direction, security issues become a liability for the managerial te=
am, and therefore for the developers. As a liability, there should also be =
supporting resources approved from the exec team on down. If the security t=
eam is approachable and capable of providing guidance, the managerial and d=
eveloper teams will begin asking for help in keeping the issue count low. T=
his beats the security team having to fight for opportunities to insert its=
elf.

Likewise, where you see risky development practices, you want to document t=
hese risks and make sure they are part of a risk assessment which the exec =
team sees once or twice each year. If you can articulate how deficient deve=
lopment practices create a business risk then again, the exec team should h=
elp create a demand for your assistance.

Outside of a business environment, the project leader will have to stand in=
 for the exec team for any large open source project, whether it's a single=
 leader or a small board. In order to avoid heroics and having to keep your=
 fingers in everything, support needs to come from the top down.


Another common failing is in not creating a culture of security awareness. =
You probably read a fair bit of security news. Look for other projects whic=
h failed in a way which you could see your own project having failed. Drop =
links in chat or email and point to how a control your team has enacted wou=
ld have prevented the incident. Or when you think it wouldn't have been pre=
vented, ask "Is there anything we're doing that would have saved us from th=
e same fate?" Anything that drags security away from the abstract and towar=
d real world examples will help teams begin to understand the importance of=
 good security practices. Ideally you create an appetite for correct soluti=
ons.

