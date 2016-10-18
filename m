X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4667" "Tuesday" "18" "October" "2016" "22:56:18" "+0200" "Gsunde Orangen" "gsunde.orangen@gmail.com" "<df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>" "117" "Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" nil nil nil "10" "2016101820:56:18" "[oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" (number mark "U       gsunde.orang Oct 18  117/4667  " thread-indent "\"Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )\"\n") "<CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com>" ("<CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>" "<20160912103527.GA3003@openwall.com>" "<CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>" "<CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25623 invoked by uid 550); 18 Oct 2016 20:56:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25605 invoked from network); 18 Oct 2016 20:56:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding;
        bh=fZ6/xescx7z71Q0KFLcy2/lmpSi3RrUH60YFKy/wde8=;
        b=qfyxUfgvdByw3HY5GoPfiNK0VPdRxLFHiQbIw4Dvl2/ihSUkc0XH+jku59qJHUUQH6
         1hsBo2RbUAAwgiGUEeOcKytRdptf+qQhGtfl6VJREMZIYdYOliolJ4ed/pBDAWaJEAQD
         zViY9vyBrGEeqb9hU0W67J2y/pLwBrkqRKrJAgH3ha6EMzsf8ZLQ7S/zEEIE0M8tw4gb
         AakY/7w6l/n/1v4kJw0hGofCgOAbRfhIoXqjZd8sPoMJsnm4VN1dprJWUUdGW/B8Q8I+
         qhHPYPLyge95ae9wFfya+IiyynG9CsVpj/P/oAKeUiiiCxTcvSUMyd2EBCIo8sBCJ653
         B6sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=fZ6/xescx7z71Q0KFLcy2/lmpSi3RrUH60YFKy/wde8=;
        b=mS/qwsBwrelYD/l9hBuMkjUoHp9rH5xdntp+Kdh0iDtLdjqAnt8AYhMs/wr33lUKet
         cjWGopb1Ru8XNbW5C97g8IA43KFZMl2qHTv8yVoejYZMUXkMJxKLI0P3kfIKxc6bs9cf
         8w4heQxzhKguy9DFIwKcEjU6f+60Ltv6V8V3+q8He3JWPfooj7+OrZl+sGtbcy22to3M
         +j5ZP5G6YWsEAGRBFvvqITmefnvpflqo6Radoz6556C7Zvs68KGDYPILUDj+vg/0N4Nw
         DLJXlByjywZDv6zVlqwVJc7rPKs0/V4krJGArL9gbLmJzdlnDCYiLvOr8NR9G9OCPFb1
         j7WQ==
X-Gm-Message-State: AA6/9RmEFR0tpurebtcIGG0a6LdVzpUiOL5CwMhU/y1uZwvoIJuyWQOfU85xWVc7KBmnrg==
X-Received: by 10.195.6.97 with SMTP id ct1mr1641614wjd.165.1476824179268;
        Tue, 18 Oct 2016 13:56:19 -0700 (PDT)
To: oss-security@lists.openwall.com
References: <CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>
 <20160912103527.GA3003@openwall.com>
 <CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>
 <CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com>
From: Gsunde Orangen <gsunde.orangen@gmail.com>
Message-ID: <df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>
Date: Tue, 18 Oct 2016 22:56:18 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution /
 Privilege Escalation ( 0day )

Dawid meanwhile updated his post [1] to reflect that the fixes for
CVE-2016-6662 were added in 5.5.52/5.6.33/5.7.15.
... But today Oracle states that those versions were still affected [2],
thus the fix releases are 5.5.53/5.6.34/5.7.16.

So which one is correct? Based on the changelogs I assume [1].

And btw, Dawid: what happened with CVE-2016-6663? Still not public yet?

Gsunde

[1]
http://legalhackers.com/advisories/MySQL-Exploit-Remote-Root-Code-Execution-Privesc-CVE-2016-6662.html
[2]
http://www.oracle.com/technetwork/security-advisory/cpuoct2016-2881722.html#AppendixMSQL

On 12.09.2016, 16:45 Fried Wil wrote:
> Hi Dawid,
> 
> Affected MySQL versions (including the latest):
> <= 5.7.15
> <= 5.6.33
> <= 5.5.52
> 
> Is your issue related to MySQL bugids fixed in 5.5.52/5.6.33/5.7.15 ?
> 
> https://dev.mysql.com/doc/relnotes/mysql/5.5/en/news-5-5-52.html
> Changes in MySQL 5.5.52 (2016-09-06):
> - For mysqld_safe, the argument to --malloc-lib now must be one of the
> directories /usr/lib, /usr/lib64, /usr/lib/i386-linux-gnu, or
> /usr/lib/x86_64-linux-gnu. In addition, the --mysqld and
> --mysqld-version options can be used only on the command line and not
> in an option file. (Bug #24464380)
> - Privilege escalation was possible by exploiting the way REPAIR TABLE
> used temporary files. (Bug #24388746)
> - It was possible to write log files ending with .ini or .cnf that
> later could be parsed as option files. The general query log and slow
> query log can no longer be written to a file ending with .ini or .cnf.
> (Bug #24388753)
> 
> Thanks
> 
> 
> On Mon, Sep 12, 2016 at 6:58 AM, Dawid Golunski <dawid@legalhackers.com> wrote:
>> Hi Alexander,
>>
>> I was just going to reply to your email you sent earlier.
>> Thanks for the feedback. I actually updated the introduction after your email.
>> The advisory focuses on CVE-2016-6662 vulnerability which lets users
>> to modify/create my.cnf files. A fix would prevent users from writing
>> to my.cnf config.
>>
>> And yes there's a typo in the last paragraph made after a few
>> sleepless nights ;) I've fixed it now.
>>
>> The CVE-2016-6663 is not public yet. I refer to it in the advisory to
>> give some heads up in case someone wanted to discard this issue based
>> on reasoning that FILE privs are not common and that they will never
>> be pwned etc. It'll soon be published then it'll be clear what this
>> CVEID is about ;)
>>
>> Cheers.
>>
>>
>>
>> On Mon, Sep 12, 2016 at 7:35 AM, Solar Designer <solar@openwall.com> wrote:
>>> On Mon, Sep 12, 2016 at 06:09:10AM -0300, Dawid Golunski wrote:
>>>> Vulnerability: MySQL Remote Root Code Execution / Privilege Escalation 0day
>>>> CVE: CVE-2016-6662
>>>> Severity: Critical
>>>> Affected MySQL versions (including the latest):
>>>> <= 5.7.15
>>>> <= 5.6.33
>>>> <= 5.5.52
>>>
>>>> http://legalhackers.com/advisories/MySQL-Exploit-Remote-Root-Code-Execution-Privesc-CVE-2016-6662.html
>>>
>>> Thank you for posting this.  For archival, and to comply with
>>> oss-security content guidelines, I am attaching a text/plain version of
>>> the above advisory (which includes a lot of detail not in your posting).
>>>
>>> Also, to add detail on the disclosure timeline: Dawid brought this to
>>> the distros list yesterday (Sunday).
>>>
>>> As I had pointed out in a reply on distros, it is not entirely clear
>>> what exact issue the CVE-2016-6662 identifier is for.  The advisory
>>> talks about multiple sysadmin practices, packaging issues, dangerous
>>> features of MySQL, and finally of safe_mysqld including the data
>>> directory in its search path for my.cnf.  I guess it would be most
>>> reasonable to have the CVE ID refer only to the latter aspect, but
>>> confirmation/clarification is needed.  As it is, it's unclear from the
>>> advisory what exact "vulnerabilities were patched by PerconaDB and
>>> MariaDB vendors" (the advisory says so), and it is unclear what Oracle
>>> and distros "fixing" CVE-2016-6662 would mean.
>>>
>>> Also, in this paragraph I guess the advisory wanted to refer to the
>>> upcoming CVE-2016-6663 (I have no idea what that issue is, beyond what
>>> the advisory says), like it does in a few other places:
>>>
>>> "It is worth to note that attackers could use one of the other vulnerabilities discovered
>>> by the author of this advisory which has been assigned a CVEID of CVE-2016-6662 and is
>>> pending disclosure. The undisclosed vulnerability makes it easy for certain attackers to
>>> create /var/lib/mysql/my.cnf file with arbitrary contents without the FILE privilege
>>> requirement."
>>>
>>> Alexander
>>
>>
>>
>> --
>> Regards,
>> Dawid Golunski
>> http://legalhackers.com
> 
> 
> 

