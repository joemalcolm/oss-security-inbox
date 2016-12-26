X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3409" "Monday" "26" "December" "2016" "12:57:26" "-0500" "Michael Hess" "mlhess@umich.edu" "<CANNt_rZQ9ZbmeB3kNGgBafny=TYoGbm7xMJPrzD2KNUt60Ld=Q@mail.gmail.com>" "103" "[oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122617:57:26" "[oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       mlhess@umich Dec 26  103/3409  " thread-indent "\"[oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<20161226145559.GU31189@scully.more-magic.net>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "<20161226154650.4b40cca8@pc1>" "<20161226145559.GU31189@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30582 invoked by uid 550); 26 Dec 2016 19:16:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25794 invoked from network); 26 Dec 2016 17:58:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:content-transfer-encoding;
        bh=xMcwA70L8DGiML4ocpsaN/zomqsa1G7ZfKCLhgynFSc=;
        b=GZDplmIK57tETAbZiYDUDMn21qyS7jomyBoMPWmRqduHVA59r3F06/ua/j8zythDVf
         Zb0n/FB6k1PJpSDo8peL1+k6mI/dlooXEiwTS9LjCtAl6JSwP10xbSiebVfwTcKP9bqP
         SnyFuD4LfJqKB7t70Jok9AmfnnQrp966o2XbyqcjGuNXKc5ySR8YiOBIOw5WiiqIx7xk
         Nf1B1NfO3mw99y8g9aBiWDc+Q6V3JyJ/8CXsjevOqQbFVOSbCoa3YG9wUzgSiMKTf9w+
         OVzupIu6cYbzlUdDgHsxoP6zCV7giBk6zgl/azlVknInz02uR4qYxJD4S7E4OTaUssTe
         RRhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:content-transfer-encoding;
        bh=xMcwA70L8DGiML4ocpsaN/zomqsa1G7ZfKCLhgynFSc=;
        b=MVvbzBoSgPb0bmS424G8RpuLk2PnUZAaLUVB6oyH0GjapyRrjm3R74Tsk6PdLJG9AO
         +tcry1WpgAn0EjtqGH6WnRITnacyNsuBvHs2qHVsxXKr30EDiiGy0rykMeTAIt2ujzMS
         FXx1QKvvdMlsvIKar89YgTKGbYfMSWZlBJIl9gks8d5tWxDabOdipnbflpWJMcinGZBy
         4O2ODhvhFYnSyWvphsPkhh2Fxja66yn9LwDOAFe3NbHGhgm9n5FjfEe3QS5qdxUhK5mn
         1AMCliOO5EjqsVk5lOOanI7OT+VOS+NwIl/29JMDvWmWDUv9qhflJqfPRdr0DPm0luWL
         JK0A==
X-Gm-Message-State: AIkVDXIEo3HYz02cYnfjxXYCEQMY3S9piYeCAMkMUodtLIHjkyYv29WA0jMbb6GZLlWeIEXP0RSQmtqiscm6JA==
X-Received: by 10.202.252.8 with SMTP id a8mr13203504oii.159.1482775086741;
 Mon, 26 Dec 2016 09:58:06 -0800 (PST)
MIME-Version: 1.0
Sender: michaellevinehess@gmail.com
In-Reply-To: <20161226145559.GU31189@scully.more-magic.net>
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161226154650.4b40cca8@pc1> <20161226145559.GU31189@scully.more-magic.net>
From: Michael Hess <mlhess@umich.edu>
Date: Mon, 26 Dec 2016 12:57:26 -0500
X-Google-Sender-Auth: EIHcvCORDHozM2kYmigjMtswxew
Message-ID: <CANNt_rZQ9ZbmeB3kNGgBafny=TYoGbm7xMJPrzD2KNUt60Ld=Q@mail.gmail.com>
To: security@drupal.org, oss-security@lists.openwall.com, security@chamilo.org
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code
 Execution [CVE-2016-10033]

The Drupal Security team is going to release a PSA on this topic, we
don't normally do it, but given the holiday we will issue PSA-004, in
about 30 min.

The text is below.

Thanks,
Michael on behalf of the Drupal Security Team.



Posted by Drupal Security Team on December 26, 2016 at 12:50pm

Advisory ID: DRUPAL-SA-PSA-2016-004
Project: PHPMailer (third-party library)
Version: 7.x, 8.x
Date: 2016-December-26
Security risk: 23/25 (Highly Critical)
AC:None/A:User/CI:All/II:All/E:Exploit/TD:All
Vulnerability: Arbitrary PHP code execution

Description

The PHPMailer and SMTP modules (and maybe others) add support for
sending e-mails using the 3rd party PHPMailer library.

In general the Drupal project does not create advisories for 3rd party
libraries. Drupal site maintainers should pay attention to the
notifications provided by those 3rd party libraries as outlined in
PSA-2011-002 - External libraries and plugins. However, given the
extreme criticality of this issue and the timing of its release we are
issuing a Public Service Announcement to alert potentially affected
Drupal site maintainers.

CVE identifier(s) issued

CVE-2016-10033

Versions affected

All versions of the external PHPMailer library < 5.2.18.

Drupal core is not affected. If you do not use the contributed
PHPMailer third party library, there is nothing you need to do.

Solution

Upgrade to the newest version of the phpmailler library.
https://github.com/PHPMailer/PHPMailer

Reported by

Dawid Golunski

Contact and More Information

The Drupal security team can be reached at security at drupal.org or
via the contact form at https://www.drupal.org/contact.

Learn more about the Drupal Security team and their policies, writing
secure code for Drupal, andsecuring your site.

Follow the Drupal Security Team on Twitter at https://twitter.com/drupalsec=
urity



On Mon, Dec 26, 2016 at 9:55 AM, Peter Bex <peter@more-magic.net> wrote:
> On Mon, Dec 26, 2016 at 03:46:50PM +0100, Hanno B=C3=B6ck wrote:
>> Hi,
>>
>> Given I had plenty of time on the train to 33c3 I did a quick
>> lookaround on what contains PHPMailer. As the details of the vuln
>> aren't clear yet this doesn't necessarily mean they're vulnerable, just
>> that they ship the affected code.
>
> It looks like the vulnerability is due to a missing escaping of shell
> arguments in the sender's e-mail address.  This commit seems to be
> the one that fixes the bug:
> https://github.com/PHPMailer/PHPMailer/commit/4835657cd639fbd09afd33307ce=
f164edf807cdc#diff-ace81e501931d8763b49f2410cf3094dR1449
>
> So it depends on whether a web form allows one to control the "from"
> mail address or not.
>
>> Drupal doesn't contain PHPMailer, although mentioned in the advisory.
>> But there are probably plugins and extensions using it. I also saw it
>> used in some wordpress themes.
>
> I noticed this Drupal module: https://www.drupal.org/project/phpmailer
> which has some sort of integration with the widely used mimemail module.
> The linked module http://drupal.org/project/smtp also uses PHPMailer.
> There are undoubtedly more modules that do.
>
> The LCMS system Chamilo also uses PHPMailer for sending mails internally.
>
> Cheers,
> Peter Bex
>
> --
> [ Security | https://lists.drupal.org/mailman/listinfo/security ]
> [Security team mailing list management and scheduling is documented here =
| https://security.drupal.org/handling-list-emails]
