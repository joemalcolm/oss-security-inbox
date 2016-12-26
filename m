X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4117" "Monday" "26" "December" "2016" "13:05:49" "-0500" "Yannick Warnier" "ywarnier@chamilo.org" "<e6d59700-2d39-c973-c6b2-c4eaa637ed8f@chamilo.org>" "122" "[oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" nil nil nil "12" "2016122618:05:49" "[oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]" (number mark "U       ywarnier@cha Dec 26  122/4117  " thread-indent "\"[oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code Execution [CVE-2016-10033]\"\n") "<CANNt_rZQ9ZbmeB3kNGgBafny=TYoGbm7xMJPrzD2KNUt60Ld=Q@mail.gmail.com>" ("<CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>" "<20161226154650.4b40cca8@pc1>" "<20161226145559.GU31189@scully.more-magic.net>" "<CANNt_rZQ9ZbmeB3kNGgBafny=TYoGbm7xMJPrzD2KNUt60Ld=Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
X-Quarantine-ID: <WZF1bPPojF74>
Received: (qmail 31786 invoked by uid 550); 26 Dec 2016 19:17:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28362 invoked from network); 26 Dec 2016 18:06:24 -0000
To: oss-security@lists.openwall.com
References: <CADSYzsubAm_GzSJ1S3uoskp1JNJe5Jemb0jtt8waA8QMdcbHOw@mail.gmail.com>
 <20161226154650.4b40cca8@pc1> <20161226145559.GU31189@scully.more-magic.net>
 <CANNt_rZQ9ZbmeB3kNGgBafny=TYoGbm7xMJPrzD2KNUt60Ld=Q@mail.gmail.com>
Cc: security@chamilo.org, security@drupal.org, peter@more-magic.net
From: Yannick Warnier <ywarnier@chamilo.org>
Organization: Chamilo Association
Message-ID: <e6d59700-2d39-c973-c6b2-c4eaa637ed8f@chamilo.org>
Date: Mon, 26 Dec 2016 13:05:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CANNt_rZQ9ZbmeB3kNGgBafny=TYoGbm7xMJPrzD2KNUt60Ld=Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam_score: -2.9
X-Spam_score_int: -28
X-Spam_bar: --
X-Spam_report: Spam detection software, running on the system "pouet.beeznest.net",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi Peter, The Chamilo team will be analyzing this in the next
    2 days and likely provide a patch to our community. Although PHPMailer is
    indeed not used anymore in recent versions, we still have a large number
   of portals around using the previous version. [...] 
 Content analysis details:   (-2.9 points, 5.0 required)
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.0 ALL_TRUSTED            Passed through trusted hosts only via SMTP
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
X-SA-Exim-Connect-IP: 127.0.0.1
X-SA-Exim-Mail-From: ywarnier@chamilo.org
X-SA-Exim-Scanned: No (on pouet.beeznest.net); SAEximRunCond expanded to false
Subject: [oss-security] Re: [security] [oss-security] PHPMailer < 5.2.18 Remote Code
 Execution [CVE-2016-10033]

Hi Peter,

The Chamilo team will be analyzing this in the next 2 days and likely 
provide a patch to our community. Although PHPMailer is indeed not used 
anymore in recent versions, we still have a large number of portals 
around using the previous version.

Thanks Drupal team for the PSA text, we'll probably use part of it as 
inspiration (unless that's not OK - just let me know).

Thank you for your great effort in looking out for us and letting us 
know. Most appreciated.

-- 

Yannick Warnier
Project leader
Chamilo


Le 26/12/16 à 12:57, Michael Hess a écrit :
> The Drupal Security team is going to release a PSA on this topic, we
> don't normally do it, but given the holiday we will issue PSA-004, in
> about 30 min.
>
> The text is below.
>
> Thanks,
> Michael on behalf of the Drupal Security Team.
>
>
>
> Posted by Drupal Security Team on December 26, 2016 at 12:50pm
>
> Advisory ID: DRUPAL-SA-PSA-2016-004
> Project: PHPMailer (third-party library)
> Version: 7.x, 8.x
> Date: 2016-December-26
> Security risk: 23/25 (Highly Critical)
> AC:None/A:User/CI:All/II:All/E:Exploit/TD:All
> Vulnerability: Arbitrary PHP code execution
>
> Description
>
> The PHPMailer and SMTP modules (and maybe others) add support for
> sending e-mails using the 3rd party PHPMailer library.
>
> In general the Drupal project does not create advisories for 3rd party
> libraries. Drupal site maintainers should pay attention to the
> notifications provided by those 3rd party libraries as outlined in
> PSA-2011-002 - External libraries and plugins. However, given the
> extreme criticality of this issue and the timing of its release we are
> issuing a Public Service Announcement to alert potentially affected
> Drupal site maintainers.
>
> CVE identifier(s) issued
>
> CVE-2016-10033
>
> Versions affected
>
> All versions of the external PHPMailer library < 5.2.18.
>
> Drupal core is not affected. If you do not use the contributed
> PHPMailer third party library, there is nothing you need to do.
>
> Solution
>
> Upgrade to the newest version of the phpmailler library.
> https://github.com/PHPMailer/PHPMailer
>
> Reported by
>
> Dawid Golunski
>
> Contact and More Information
>
> The Drupal security team can be reached at security at drupal.org or
> via the contact form at https://www.drupal.org/contact.
>
> Learn more about the Drupal Security team and their policies, writing
> secure code for Drupal, andsecuring your site.
>
> Follow the Drupal Security Team on Twitter at https://twitter.com/drupalsecurity
>
>
>
> On Mon, Dec 26, 2016 at 9:55 AM, Peter Bex <peter@more-magic.net> wrote:
>> On Mon, Dec 26, 2016 at 03:46:50PM +0100, Hanno Böck wrote:
>>> Hi,
>>>
>>> Given I had plenty of time on the train to 33c3 I did a quick
>>> lookaround on what contains PHPMailer. As the details of the vuln
>>> aren't clear yet this doesn't necessarily mean they're vulnerable, just
>>> that they ship the affected code.
>>
>> It looks like the vulnerability is due to a missing escaping of shell
>> arguments in the sender's e-mail address.  This commit seems to be
>> the one that fixes the bug:
>> https://github.com/PHPMailer/PHPMailer/commit/4835657cd639fbd09afd33307cef164edf807cdc#diff-ace81e501931d8763b49f2410cf3094dR1449
>>
>> So it depends on whether a web form allows one to control the "from"
>> mail address or not.
>>
>>> Drupal doesn't contain PHPMailer, although mentioned in the advisory.
>>> But there are probably plugins and extensions using it. I also saw it
>>> used in some wordpress themes.
>>
>> I noticed this Drupal module: https://www.drupal.org/project/phpmailer
>> which has some sort of integration with the widely used mimemail module.
>> The linked module http://drupal.org/project/smtp also uses PHPMailer.
>> There are undoubtedly more modules that do.
>>
>> The LCMS system Chamilo also uses PHPMailer for sending mails internally.
>>
>> Cheers,
>> Peter Bex
>>
>> --
>> [ Security | https://lists.drupal.org/mailman/listinfo/security ]
>> [Security team mailing list management and scheduling is documented here | https://security.drupal.org/handling-list-emails]
>
