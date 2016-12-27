X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3413" "Tuesday" "27" "December" "2016" "13:08:52" "-0200" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzst2mG3vRMWdXnCiHd8GLMB2Ttw-MAua2e26G1CQS5ayPw@mail.gmail.com>" "99" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122715:08:52" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       dawid@legalh Dec 27   99/3413  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<20161227001009.GS20382@tracyreed.org>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "<20161227001009.GS20382@tracyreed.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5299 invoked by uid 550); 27 Dec 2016 15:47:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14335 invoked from network); 27 Dec 2016 15:09:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=YOTEuUovuoCD2j0diWqCnM6oQ5zArXkUVPrGn+xHPF8=;
        b=TKzMm3HjWJSrj9ERLPaGbn8k2mWUo76IlQGiLPxaPRLtLOyvjmZPbjJMsrOgKtTUnQ
         CvO+qLn2CCQPlSCNR7ebML7SiuNxm4AOmHhDFuv15aTh7eP0wdX79K+sJR7D3NkGJVWL
         cMr1DFnnNRFXWO/t3Nf64E2lgWvg05jD4ZvgcXJaW6Zjun3Z36kyMC8wmKZAVRROT8V+
         b34smyBvL3PatUchs1lAFz47m9H37CRIBNnnt+Ozm5lLPctPdrbEtaDvGGXkVj8tEGpf
         VpDiXLQ8UAFcajAOoNV3xmyVCdXaAeOyOmOv8SKEmslMYGdDMFFH3ArVPXb4vwjWRG/3
         tC9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=YOTEuUovuoCD2j0diWqCnM6oQ5zArXkUVPrGn+xHPF8=;
        b=mpSVmx7jJCjz2GsaWUlbI8WnJxmUmhceY9gGbZFmjxXA/HO4s10qTvo7oBaSi6zNJL
         GyFcyPBd1VusB+RplrqoFZCN1CGQkE5ctOyEnx90JNuyl4iTfdCVT5pg3niyaTNC5wRe
         si9RuFk5YhM6dK9IYYErnYUmEPn48xLrOEOmQsteCjK7vzP9g0QSL5/20W8tSdmx7x9E
         19UFqu4Ui1/RthMdnTTZOcgRN/A/adjlskaQUbQqBmw+LQlBNLo6n0gDNgc8bJsCb/ww
         wPLRYIai1iCaNaTYGcnFY0NOo4nHRd3oSyjAsrcEooJkjabL7zKY0ezeFvcHiZxZs1+/
         41eg==
X-Gm-Message-State: AIkVDXIKFaDyrsp+4GVht2RLczUrJoe/pfI/JJWv9Ew9xq4QGgeXp4kh70S8CiOj4WyZmNiMDzgMNo0IxOMVCg==
X-Received: by 10.176.75.25 with SMTP id h25mr21501226uaf.106.1482851332550;
 Tue, 27 Dec 2016 07:08:52 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20161227001009.GS20382@tracyreed.org>
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161227001009.GS20382@tracyreed.org>
From: Dawid Golunski <dawid@legalhackers.com>
Date: Tue, 27 Dec 2016 13:08:52 -0200
Message-ID: <CADSYzst2mG3vRMWdXnCiHd8GLMB2Ttw-MAua2e26G1CQS5ayPw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]

I attached an updated advisory in a new thread.

For anyone looking for it on this thread, the latest version is at:

http://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CVE-2016-10033-Vuln.html

On Mon, Dec 26, 2016 at 10:10 PM, Tracy Reed <treed@ultraviolet.org> wrote:
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



-- 
Regards,
Dawid Golunski
https://legalhackers.com
t: @dawid_golunski
