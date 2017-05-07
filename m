X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4241" "Sunday" "7" "May" "2017" "17:32:38" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzstpKUwZ89poth5XNbROcBnakBJ9+rnJ9zJrvfSdKe_q6Q@mail.gmail.com>" "105" "Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" "^Date:" nil nil "5" "2017050720:32:38" "[oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)" (number mark "        dawid@legalh May  7  105/4241  " thread-indent "\"Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun And RCE (ver 1.0)\"\n") "<73bb24ef-176d-0ea1-e0a3-5f4a9542ea50@tripleback.net>" ("<CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>" "<73bb24ef-176d-0ea1-e0a3-5f4a9542ea50@tripleback.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32749 invoked by uid 550); 7 May 2017 20:32:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32731 invoked from network); 7 May 2017 20:32:50 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=cvcLGd6u0YjzZeXnx1PjP23+Oj7KwvUzTK6CCro/Yh4=;
        b=t38mktWzeOj5Q4PKSmCQFqhDakrVvdnfHxfPB1jXa9pSziKbyi3XRcex5U43+FPO0U
         Y44vazKe7KD9oBS4PBYMoyqTSEzUGNLGb2E3ZY6UT+jsMD38lqcaCpgbEmnCtPH6f4Le
         CdRzowXbyWDS8nv/uyMPttzdX2HbPo6CHGltYcxI19210W9GNgnW94+U1bYjGB2GChSP
         Fahbd+9SUGkzuV1FrYkp0ZP317hyvIja3yr7BEb+8NTgCA+dQtYEQKFhw8C/D8bTCcvv
         MQaJKu6JsMIVe9oR0dFXDG/pCalEt4vquR136Zh80b0/7NPEQdCw4NKe1joadhta6HCV
         6Mqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=cvcLGd6u0YjzZeXnx1PjP23+Oj7KwvUzTK6CCro/Yh4=;
        b=DSYdmaB4LOIfqo7y0ss0T7pueEJlkSpBbx10y/9DEx3VdF09Md5P/OpfSW1EVNX/HY
         qnClAGpMikA03l9nbonXD4r8SghvjYRlZPwfkKW1PCADdLAzFWKM5JnLSYzn/WGyS06t
         37UMSrXQefY7vkdvrUVIhm9dC+uL+psxBEqOX07Ll2pGQE/ZO8IoHuo/AdL23L6BZh/4
         hQH07oopiVT9ilvidZthrJWtptFEFu8bCUj7IVR8//cycEzdnkWuFd0j5/h2QNBrzXUN
         shFID2ABwo9mvZ1LBmCjpBYHgDaky3HdNgtMp3l51jxWR/xkOb22gADYZsHlZA5/oMIt
         xsPA==
X-Gm-Message-State: AN3rC/5UNkDYo9XWkLS1el7DVBKlufNV4rOhdh0pEGAqKHkKQJcR5kSB
	1dUIrFxBpmHQLdhpGllXVJPkX3+F+XSw
X-Received: by 10.159.33.71 with SMTP id 65mr7780305uab.50.1494189158482; Sun,
 07 May 2017 13:32:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <73bb24ef-176d-0ea1-e0a3-5f4a9542ea50@tripleback.net>
References: <CADSYzstfctEZTo4GKGR-H2WXC3kZRSAj7sj7ZHCAu9C7Ff5BYw@mail.gmail.com>
 <73bb24ef-176d-0ea1-e0a3-5f4a9542ea50@tripleback.net>
Message-ID: <CADSYzstpKUwZ89poth5XNbROcBnakBJ9+rnJ9zJrvfSdKe_q6Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Sun, 7 May 2017 17:32:38 -0300
From: Dawid Golunski <dawid@legalhackers.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [white-paper] Pwning PHP mail() function For Fun
 And RCE (ver 1.0)
To: oss-security@lists.openwall.com

Hi Kash,

On Sun, May 7, 2017 at 1:12 PM, Kash Pande <kash@tripleback.net> wrote:
>
> On 03/05/17 04:32 PM, Dawid Golunski wrote:
>>
>> Here's a paper I wrote back in December.  It was originally meant to go
>> into Phrack but the team wanted a more general article on parameter
>> injection
>> as mail() was supposedly an outdated technique.
>> Meanwhile, the RCE-chain continues :) So I decided to post it as it is
>> without
>> changing it as mail() injection deserves a separate article imho.
>>
>> https://exploitbox.io/paper/Pwning-PHP-Mail-Function-For-Fun-And-RCE.html
>
>
> This article purposely uses a litany of poor programming practices to expose
> an alleged exploit in PHP mail().. I'd like to see the same exploit, without
> assuming the developer on the software had no idea what they're doing
> (passing non-sanitized variables to functions).

In my article some of the early examples are simplified to demonstrate
the general concept in an easy way.
Try digging a bit deeper and maybe do some research too...
Note the paragraph:
"It presents several new exploitation vectors and bypass techniques
on the PHP mail() function that were discovered and recently released by the
author of this white-paper in the course of finding multiple critical
vulnerabilities in major PHP e-mail sending libraries (PHPMailer, Zend
Framework / Zend-mail, SwiftMailer) that are used by millions of web
applications/projects (e.g Wordpress, Drupal, Joomla etc.)  and PHP
programming frameworks (Zend, Yii2, Symphony, Laravel etc.)"

These are all real-world examples of vulns that I discovered and that
you can read-up on here:

https://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CVE-2016-10033-Vuln.html
https://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CVE-2016-10045-Vuln-Patch-Bypass.html
https://legalhackers.com/advisories/SwiftMailer-Exploit-Remote-Code-Exec-CVE-2016-10074-Vuln.html
https://legalhackers.com/advisories/ZendFramework-Exploit-ZendMail-Remote-Code-Exec-CVE-2016-10034-Vuln.html
https://legalhackers.com/advisories/SquirrelMail-Exploit-Remote-Code-Exec-CVE-2017-7692-Vuln.html

These are pretty good examples I think. If creators of major email
sending libraries / email client software have made the mistakes that
have stayed hidden for years,  there is a chance others have made
it/will make it too.

Contrary to what you seem to assume here, mail() function parameters
are quite tricky to use properly.
Note my CVE-2016-10045 exploit which was a bypass of the
CVE-2016-10033 patch applied to phpmailer library.

There is also a whole write-up on the subject/problem by a developer
that emerged after the phpmailer vulnerability I disclosed:

https://gist.github.com/Zenexer/40d02da5e07f151adeaeeaa11af9ab36


> As well, you noted in your
> own article that this 'discovery' was first published in 2011 by someone
> else.

Yes, as explained, with only 2 Sendmail techniques (file write with -X
parameter / and file read -C parameter) known back then which are not
really applicable these days as Sendmail is pretty much extinct/not
shipped with any distro by default, and -X required a writable upload
directory / known path etc.

http://www.securityspace.com/s_survey/data/man.201703/mxsurvey.html


>>
>> I reveal some exim code-execution vectors in there that should change
>> the whole game slightly :)
>
>
> Not really, because it still relies on unfiltered input.
>

Yes, you have to have a vulnerability to exploit it ;)
It's like saying 'ret2libc is useless technique because it still
relies on a buffer overflow, format string, X... vulnerability' :)

The exim vector I presented in the article will help a lot in the
exploitation of these kind of vulns as exim is widely used, and the
vector doesn't require you to know file paths, plus it is good for
bypassing filters.

A good example of the exim vector is my recently disclosed Wordpress
RCE expoit (which would likely not be possible if it wasn't for the
exim vector):

https://exploitbox.io/vuln/WordPress-Exploit-4-6-RCE-CODE-EXEC-CVE-2016-10033.html


Hope this helps / explains some things better and happy hacking.



Regards,
Dawid Golunski
https://legalhackers.com
https://ExploitBox.io
t: @dawid_golunski
