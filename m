X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["7552" "Wednesday" "28" "December" "2016" "03:10:01" "-0200" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzssw4B+uX4UUmKAMpZQkSifW+NBv_2h--Egyg_qXuS+zpQ@mail.gmail.com>" "182" "Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated advisory] [CVE-2016-10033]" nil nil nil "12" "2016122805:10:01" "[oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated advisory] [CVE-2016-10033]" (number mark "U       dawid@legalh Dec 28  182/7552  " thread-indent "\"Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated advisory] [CVE-2016-10033]\"\n") "<CADSYzstAHkEB7fegYo_VeDjL34kg032bZ2u6SjHn_AtMWqKSuQ@mail.gmail.com>" ("<CADSYzsun=xdfigzGDDjwJf8TKZ73jb8L+jnntP3yQoZRZ--SWA@mail.gmail.com>" "<20161228022414.GA9106@openwall.com>" "<CADSYzstAHkEB7fegYo_VeDjL34kg032bZ2u6SjHn_AtMWqKSuQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13796 invoked by uid 550); 28 Dec 2016 06:26:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23914 invoked from network); 28 Dec 2016 05:10:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=GZTvABttzo42vxKSJMmnG2SoOiXrwLyBljuMHmTzY78=;
        b=z4plNHHshYdzTiIZpGGhkVfOEWR/LULoRaX/P/9HZ6zTCaTF5MXy9tqI3kGD3i6pTD
         1JxfyJcY0SFbAG6wRw8oKuDBsl56AZgeopO5CpvbAHrFahgQ6qreZg88tTHDx4FNzhQ8
         6Yc+/HZorujXx1B2t/LJxf3ytgZzdkqPySCguZ7KpIO++l2hAt6cii7PQt3rBYq2YIiC
         IDUKwyb7SETi6aCHFv5vafLxZ2hs78bke43Cn2rnzQGpkdKw7df7gcBxVVaJ753lsLMj
         ks/F5M9kb/f3wi40IDLuDiLWnLKr9vF8ebkB+7/tYLSfRg5QKEDZ2LvItTBJ5ieuT7c/
         1BNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=GZTvABttzo42vxKSJMmnG2SoOiXrwLyBljuMHmTzY78=;
        b=FzDpeJXbtokwaNqvUcnb5FDiGHnrlBDVGKNPU5jdJTRXtmVsl792431hqvQsin+p4f
         hvauJP33fYfn/dwfD/NMrjNgDzhDQhTumArLQNzr2UWmVZANsajRz7sPdhEqMw6arRLL
         cQJ85At+b564vQyMYpG5tOzF3sOEj2hR2HyXeJ7mE+a3gCylJvbDGsIF0YXnAdfe+89A
         BX5g1BGha2/uK7hLKWI4N2mldq9ayFRAqvd+zAyv1jVBK+cTG8euW/Y690aBxwXA9H4o
         sWhMNEqVE8yjk3S05oxz9g8Z4BN3IOq8ZMLPgr3wqAVU9xMz7mIiBTepFspp3nUO5EZ2
         zPLA==
X-Gm-Message-State: AIkVDXKYA5z1NGKIjJtNyHDkAcgfU/3KdHktYtpof1HWYFPPIp63zOHj+93iUj7VYGvpgYhl/MCZpsNgymW7cg==
X-Received: by 10.176.74.156 with SMTP id s28mr9457520uae.65.1482901801340;
 Tue, 27 Dec 2016 21:10:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CADSYzstAHkEB7fegYo_VeDjL34kg032bZ2u6SjHn_AtMWqKSuQ@mail.gmail.com>
References: <CADSYzsun=xdfigzGDDjwJf8TKZ73jb8L+jnntP3yQoZRZ--SWA@mail.gmail.com>
 <20161228022414.GA9106@openwall.com> <CADSYzstAHkEB7fegYo_VeDjL34kg032bZ2u6SjHn_AtMWqKSuQ@mail.gmail.com>
From: Dawid Golunski <dawid@legalhackers.com>
Date: Wed, 28 Dec 2016 03:10:01 -0200
Message-ID: <CADSYzssw4B+uX4UUmKAMpZQkSifW+NBv_2h--Egyg_qXuS+zpQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Marcus Bointon <marcus@synchromedia.co.uk>
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] PHPMailer < 5.2.18 Remote Code Execution [updated
 advisory] [CVE-2016-10033]

I created a new thread with 0day bypass of the patch for CVE-2016-10033 vuln.

Quick update on here too.

The advisory of the bypass which was reported to the vendor and
assigned the CVE of CVE-2016-10045 on 26th December has been made
public and is available at:

https://legalhackers.com/advisories/PHPMailer-Exploit-Remote-Code-Exec-CVE-2016-10045-Vuln-Patch-Bypass.html



On Wed, Dec 28, 2016 at 12:58 AM, Dawid Golunski <dawid@legalhackers.com> wrote:
> Hi Alexander,
>
> Cheers.
> I've already reported this to Marcus. He's got some more improvements in place.
> There will be another revision of my advisory soon.
>
>
>
> On Wed, Dec 28, 2016 at 12:24 AM, Solar Designer <solar@openwall.com> wrote:
>> Dawid,
>>
>> That's another nice find of yours, thanks!
>>
>> Going forward, please just "reply" to the same thread whenever you want
>> to share an updated advisory.  As you realized, having a new thread
>> means that some people reading the old thread only won't find the new.
>>
>> Now, I think the fix might be incomplete:
>>
>> On Tue, Dec 27, 2016 at 09:45:48AM -0200, Dawid Golunski wrote:
>>> The parameters include the 5th parameter of $params which allows to pass extra
>>> parameters to sendmail binary installed on the system as per PHP documentation
>>> of mail() function:
>>>
>>> http://php.net/manual/en/function.mail.php
>>>
>>> As can we see from:
>>>
>>> $params = sprintf('-f%s', $this->Sender);
>>>
>>> PHPMailer uses the Sender variable to build the params string.
>> [...]
>>> The vulnerability was responsibly disclosed to PHPMailer vendor.
>>> The vendor released a critical security release of PHPMailer 5.2.18 to fix the
>>> issue as notified at:
>>>
>>> https://github.com/PHPMailer/PHPMailer/blob/master/changelog.md
>>>
>>> https://github.com/PHPMailer/PHPMailer/blob/master/SECURITY.md
>>
>> The fix appears to be in this commit:
>>
>> https://github.com/PHPMailer/PHPMailer/commit/4835657cd639fbd09afd33307cef164edf807cdc
>>
>> The code becomes:
>>
>>         if (!empty($this->Sender) and $this->validateAddress($this->Sender)) {
>>             $params = sprintf('-f%s', escapeshellarg($this->Sender));
>>         }
>>
>> PHP documentation for mail() says this about the 5th parameter:
>>
>> "This parameter is escaped by escapeshellcmd() internally to prevent
>> command execution. escapeshellcmd() prevents command execution, but
>> allows to add additional parameters.  For security reasons, it is
>> recommended for the user to sanitize this parameter to avoid adding
>> unwanted parameters to the shell command."
>>
>> So now we effectively have escapeshellcmd(escapeshellarg()).  Is this
>> combination meant to be safe?  Maybe escapeshellcmd()'s escaping of
>> backslashes will stop them from being treated as escape characters for
>> the single quotes escaped by escapeshellarg()?
>>
>> PHPMailer itself uses both of these functions elsewhere, but separately,
>> like this:
>>
>>         if (!empty($this->Sender)) {
>>             if ($this->Mailer == 'qmail') {
>>                 $sendmail = sprintf('%s -f%s', escapeshellcmd($this->Sendmail), escapeshellarg($this->Sender));
>>             } else {
>>                 $sendmail = sprintf('%s -oi -f%s -t', escapeshellcmd($this->Sendmail), escapeshellarg($this->Sender));
>>             }
>>         } else {
>>             if ($this->Mailer == 'qmail') {
>>                 $sendmail = sprintf('%s', escapeshellcmd($this->Sendmail));
>>             } else {
>>                 $sendmail = sprintf('%s -oi -t', escapeshellcmd($this->Sendmail));
>>             }
>>         }
>>
>> I guess this code runs when PHPMailer does not use mail().  And the code
>> path leading to mail() is separate.  But I did not study this in detail.
>> Anyway, my point is that escapeshellcmd(escapeshellarg()) is something
>> new to PHPMailer.  Let's see how it behaves:
>>
>> $ cat phpmailer.php
>> #!/usr/bin/php
>> <?php
>> $from = "\"from ' -Xstuff\"@host.tld";
>> print "From is $from\n";
>> $arg = escapeshellarg($from);
>> print 'From is ' . $arg . " after escapeshellarg()\n";
>> $cmd = escapeshellcmd($arg);
>> print 'From is ' . $cmd . " after escapeshellcmd(escapeshellarg())\n";
>> #system('/bin/echo From is ' . $cmd);
>> mail('root@localhost', '', '', '', '-f' . $arg);
>> ?>
>> $ env - strace -fe execve ./phpmailer.php
>> execve("./phpmailer.php", ["./phpmailer.php"], [/* 0 vars */]) = 0
>> From is "from ' -Xstuff"@host.tld
>> From is '"from '\'' -Xstuff"@host.tld' after escapeshellarg()
>> From is '\"from '\\'' -Xstuff\"@host.tld\' after escapeshellcmd(escapeshellarg())
>> Process 16698 attached
>> [pid 16698] execve("/bin/sh", ["sh", "-c", "/usr/sbin/sendmail -t -i -f'\\\"fr"...], [/* 0 vars */]) = 0
>> [pid 16698] execve("/usr/sbin/sendmail", ["/usr/sbin/sendmail", "-t", "-i", "-f\\\"from \\", "-Xstuff\"@host.tld'"], [/* 3 vars */]) = 0
>> sendmail: fatal: unsupported: -Xs
>>
>> I ran this test on a RHEL6'ish and on a RHEL7'ish system, with their
>> packages of PHP, and the result is the same.
>>
>> As you can see, /usr/sbin/sendmail (in this case Postfix's, which is why
>> it isn't accepting "-X") is being run with "-Xstuff\"@host.tld'" as a
>> separate argument.  (There's also some escaping by strace in this output.
>> But all we care about is that it's a separate argument, which strace
>> makes clear.)
>>
>> Now, can we get a single quote character through PHPMailer's
>> $this->validateAddress($this->Sender)?  I did not test, but the regexps
>> included in there do list it among the allowed characters in some
>> places.  There's also the potential (risk) that this code would be run
>> with $patternselect == 'noregex', which does almost no validation.
>> (And if there's no such potential for some reason, then the code
>> handling 'noregex' should simply be dropped.  Not good to keep insecure
>> hopefully dead code.)
>>
>> I didn't intend to look into this issue for real, so I'll hand it over
>> back to you from this point on.  Please either show how the fix is
>> sufficient, or confirm that it's indeed insufficient.
>>
>> Either way, I think a more appropriate fix would be to implement a
>> trivial SMTP client in PHPMailer and have it talk to 127.0.0.1:25.
>> Of course, there's also the risk of SMTP command injection, so care
>> should be taken to avoid that, yet it's a better defined protocol and
>> the impact of possible injections would be less (unless they exploit a
>> vulnerability in the SMTP server, but having that would be an issue on
>> its own).
>>
>> Failing that, and as another short-term workaround, a stricter sanity
>> check may be applied to the "Sender" address (and maybe to other
>> addresses as well).  Perhaps much stricter.  Unfortunately, this will
>> disallow use of some obscure valid-per-RFC addresses, but that's still a
>> good tradeoff given the risks.
>>
>> Escaping is OK for trusted user input.  For untrusted and possibly
>> malicious input, it just doesn't provide sufficient assurance.  Maybe
>> PHP documentation should be revised to introduce this distinction in its
>> descriptions of the escaping functions and their intended use (for SQL
>> escaping, too, where escaping isn't as safe as prepared statements).
>> As the documentation currently is, it gives the impression that escaping
>> is somehow sufficient and is a best practice as the only safety measure
>> for untrusted input.
>>
>> Alexander
>
>
>
> --
> Regards,
> Dawid Golunski
> https://legalhackers.com
> t: @dawid_golunski



-- 
Regards,
Dawid Golunski
https://legalhackers.com
t: @dawid_golunski
