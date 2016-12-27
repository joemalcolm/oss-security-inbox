X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3188" "Monday" "26" "December" "2016" "20:32:57" "-0500" "Michael Hess" "mlhess@umich.edu" "<CANNt_rYFXozkdBu9Euph5ER_b8fEnnGhoT9Z95fod4=rRLRG_Q@mail.gmail.com>" "91" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122701:32:57" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       mlhess@umich Dec 26   91/3188  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<20161227001009.GS20382@tracyreed.org>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "<20161227001009.GS20382@tracyreed.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5235 invoked by uid 550); 27 Dec 2016 14:03:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13930 invoked from network); 27 Dec 2016 01:33:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=BZ9MPafSOvfNm3cZSJU9bINtMQ+B8N+DWlwcwuo/Wnc=;
        b=a/i65u+ZUuRcFC622bcRvYC+7LDvNB7ziod8jSAblynyn607cqqkTu89uGe096mRJf
         s+4XKXDn60x2o+ABZCSuOcgHRdogl9+SweFwCooncqIiH8i3UM+1AQoDEMs5bsQDVcdK
         3ol5AZ5Lw4aVjsKcUYQunCDD2g9y1/q0CYntzXRIyzfvKORGrHpkygJeqkJrcX00u9fX
         vU9fpx9DnlrlMQmrkGLjZ6ZFtj7E5BOVXJJtjxxzWG/Nm1+udGzuMmADNI0ZLIJxFT2u
         QUpgKlfjorYT3ibcYGYiFETYYx/ILbsMlUv/0hyIDsclT0vac8dk3h6b8IEsIxoy1R4b
         eP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=BZ9MPafSOvfNm3cZSJU9bINtMQ+B8N+DWlwcwuo/Wnc=;
        b=IbYY/yfzv5AYl1Pf2CuVC8DIUvJHqrQApQp9a6mbMh9daENbcWCQEgqdpq/Mso0TYn
         wWdOfo5SFpy6i5x7IEz2P8WRBgVOBFXNqDZahgwCRJEaL/8t/mIcuHHJ+hdKOlbKVAhF
         +bf/KJ/Nx+vWs3Hc+MO2ziQPsgQlUJ1PrEHwTQSmhAThUlWESFtN9YCBQWDpfALS/99b
         hxQsdn5aq2t7vZqz7V2gg3huTUuY3+vj4WGBa+Bjq5J3AdM4zYo0Ye7LAMopZdh4CGhS
         PES+MjsqCCJl5G7/Oh6JNnggsjFNRNumCUxF4YKTsB+q454m1TUo0EhZ4uy+Uy/PIgph
         kpjA==
X-Gm-Message-State: AIkVDXIsFibqDHJC0NxpfYllQKVqNbOARvng2VSV636Yz2YLfkqWr2r5paqRqoZMqdSu+VCYTfySpgV4eAeF2A==
X-Received: by 10.202.105.66 with SMTP id e63mr14571614oic.34.1482802418406;
 Mon, 26 Dec 2016 17:33:38 -0800 (PST)
MIME-Version: 1.0
Sender: michaellevinehess@gmail.com
In-Reply-To: <20161227001009.GS20382@tracyreed.org>
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161227001009.GS20382@tracyreed.org>
From: Michael Hess <mlhess@umich.edu>
Date: Mon, 26 Dec 2016 20:32:57 -0500
X-Google-Sender-Auth: zcl11BgMc4mgjDH2P5zCQnSuDBU
Message-ID: <CANNt_rYFXozkdBu9Euph5ER_b8fEnnGhoT9Z95fod4=rRLRG_Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]

https://github.com/opsxcq/exploit-CVE-2016-10033

FYI,

Michael

On Mon, Dec 26, 2016 at 7:10 PM, Tracy Reed <treed@ultraviolet.org> wrote:
> Note that confining the http process using SELinux or similar MAC system
> can go a long way to constraining and limiting the damage of inevitable
> vulnerabilities such as this. Particularly since this is command
> injection which is precisely what SELinux is good at limiting (as
> opposed to SQL injection).
>
> My shop has a policy that SELinux will be enabled on all web
> applications and it has already saved us a few times despite being very
> good at getting things patched up promptly.
>
> On Sun, Dec 25, 2016 at 06:21:07PM PST, Dawid Golunski spake thusly:
>> PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]
>>
>> Severity: CRITICAL
>>
>> Discovered by:
>> Dawid Golunski (@dawid_golunski)
>> https://legalhackers.com
>>
>>
>> PHPMailer
>> "Probably the world's most popular code for sending email from PHP!
>> Used by many open-source projects: WordPress, Drupal, 1CRM, SugarCRM, Yii,
>> Joomla! and many more"
>>
>> Desc:
>> An independent research uncovered a critical vulnerability in PHPMailer that
>> could potentially be used by (unauthenticated) remote attackers to achieve
>> remote arbitrary code execution in the context of the web server user and
>> remotely compromise the target web application.
>> To exploit the vulnerability an attacker could target common website
>> components such as contact/feedback forms, registration forms, password
>> email resets and others that send out emails with the help of a vulnerable
>> version of the PHPMailer class.
>>
>>
>> Patching:
>> Responsibly disclosed to PHPMailer team.
>> They've released a critical security release.
>> If you are using an affected release update to the 5.2.18 security
>> release as advised at:
>> https://github.com/PHPMailer/PHPMailer/blob/master/changelog.md
>>
>> Notes:
>> I know this is a bad timing and a short notice (for everyone probably ;)
>> I've spent most of my Christmas break working on this issue with
>> affected vendors.
>> This has been quite a rush as one of the vendors leaked excessive
>> information on this vulnerability at one point which could aid
>> potential attackers.
>>
>> I've released a limited advisory at the link below:
>>
>> https://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CVE-2016-10033-Vuln.html
>>
>> This is to give people a chance to immediately patch or at least be
>> aware of the issue before we get closer to a working day/end of
>> holiday for affected users to act on this issue.
>>
>> I'm planning to release the full advisory and a PoC exploit shortly so
>> that everyone is on the same page.
>>
>> Upcoming video PoC:
>>
>> https://legalhackers.com/videos/PHPMailer-Exploit-Remote-Code-Exec-Vuln-CVE-2016-10033-PoC.html
>>
>>
>> For updates follow:
>>
>> https://twitter.com/dawid_golunski
>>
>> I'll also send another email to the list once it is published.
>>
>> For now,
>> Patch it now before someone else patches it for you (through a reverse shell ;)
>>
>> --
>> Regards,
>> Dawid Golunski
>> https://legalhackers.com
>> t: @dawid_golunski
>
> --
> Tracy Reed
