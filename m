X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5140" "Wednesday" "19" "October" "2016" "06:13:14" "-0200" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzsui-5JvUL41v_DxgFD92hBhwvHf4dEWTxCrEaM5bgedwQ@mail.gmail.com>" "139" "Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" nil nil nil "10" "2016101908:13:14" "[oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" (number mark "U       dawid@legalh Oct 19  139/5140  " thread-indent "\"Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )\"\n") "<df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>" ("<CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>" "<20160912103527.GA3003@openwall.com>" "<CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>" "<CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com>" "<df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24477 invoked by uid 550); 19 Oct 2016 10:59:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14025 invoked from network); 19 Oct 2016 08:13:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=aqggyoYNsbXE9UmxW6bd7tjQhyxbPGq6SQ7xguI9eRw=;
        b=W15B+/jfnf/tAZL3vC7PwNnXS+biSLpB8TTMx6tbnQ9d7rLbADMjhFC+S9Iu1IPzXp
         SM6QK5GGr3hC2zofiMTHX3t9QhrllrnLccvDIK/7Nm3QwvW09wc9/h9fq1YoPZfThnxe
         mXHBi7x4WwgSTvwe61AOrqWJBkZuYmjS/pRb79Y6o+5B87agoZVXGznviVjNPNmH/XUp
         7xyVISQ1uCQ8ta+3fEI35U13hK3GxBT3roA4PiMd0XyyL+iIwXomXJWt1gcGj0x7C/Or
         WWb1XrN7bvQuWlsysu8JTTimSMIQAP2r099dASBTrYeB942htijLQnrcqKWMMomzX51t
         UlDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=aqggyoYNsbXE9UmxW6bd7tjQhyxbPGq6SQ7xguI9eRw=;
        b=Vwfp//qO5zD6Ek+eSj8MYNooFxsMSK4Ufbfgn6QErb/7k79vIBNamy6Cy6heL7EWTh
         9hS1sZFxjElC89xdPNNgvfUjjxxKPhHPl3otJhKUYQe/Qgs4ZBz/gLZZnZfMxE/FYszd
         Gi3F5UN8oW+jomCyuFomnOXh9hI/BGwrkrOdbCitVhsxgK/KGKhEjrZ1ocfiqdi0Bu0R
         rxIyJQs1x5LfYB66bYDrVXM2E9b/E31XwotLWu0nskAAIrWXaTnnZuwpD1zSl+3v6Ax2
         qwg912WO1FQPz8iZgQOcwl2Zs7hl/23jDIDynjCsYLX7iKz+3xjJghGyvUz2j94yfUEY
         Dwrg==
X-Gm-Message-State: AA6/9Rl6QrQz5LlWdWgkwFdCh85/Bcu3dYIf3jENeEHBQ2GadCdgJmXBX73tJSEn+Zq0+f6r5v5wKkE45LBraA==
X-Received: by 10.194.137.140 with SMTP id qi12mr3380874wjb.102.1476864795418;
 Wed, 19 Oct 2016 01:13:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>
References: <CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>
 <20160912103527.GA3003@openwall.com> <CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>
 <CANTwUcrbn0J5+bfhgYQOy3DY-xLO=6dr7tj_6Esa8CKT0DA-0g@mail.gmail.com> <df9f9b10-6946-c957-ca20-990c381dec91@gmail.com>
From: Dawid Golunski <dawid@legalhackers.com>
Date: Wed, 19 Oct 2016 06:13:14 -0200
Message-ID: <CADSYzsui-5JvUL41v_DxgFD92hBhwvHf4dEWTxCrEaM5bgedwQ@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution /
 Privilege Escalation ( 0day )

Hi Gsunde,

I'll be posting updates on these issues and some PoC shortly via:

http://legalhackers.com/

or my twitter:

https://twitter.com/dawid_golunski


You may want to check back soon.
Thanks for the heads up.

-- 
Regards,
Dawid Golunski
http://legalhackers.com


On Tue, Oct 18, 2016 at 6:56 PM, Gsunde Orangen
<gsunde.orangen@gmail.com> wrote:
> Dawid meanwhile updated his post [1] to reflect that the fixes for
> CVE-2016-6662 were added in 5.5.52/5.6.33/5.7.15.
> ... But today Oracle states that those versions were still affected [2],
> thus the fix releases are 5.5.53/5.6.34/5.7.16.
>
> So which one is correct? Based on the changelogs I assume [1].
>
> And btw, Dawid: what happened with CVE-2016-6663? Still not public yet?
>
> Gsunde
>
> [1]
> http://legalhackers.com/advisories/MySQL-Exploit-Remote-Root-Code-Execution-Privesc-CVE-2016-6662.html
> [2]
> http://www.oracle.com/technetwork/security-advisory/cpuoct2016-2881722.html#AppendixMSQL
>
> On 12.09.2016, 16:45 Fried Wil wrote:
>> Hi Dawid,
>>
>> Affected MySQL versions (including the latest):
>> <= 5.7.15
>> <= 5.6.33
>> <= 5.5.52
>>
>> Is your issue related to MySQL bugids fixed in 5.5.52/5.6.33/5.7.15 ?
>>
>> https://dev.mysql.com/doc/relnotes/mysql/5.5/en/news-5-5-52.html
>> Changes in MySQL 5.5.52 (2016-09-06):
>> - For mysqld_safe, the argument to --malloc-lib now must be one of the
>> directories /usr/lib, /usr/lib64, /usr/lib/i386-linux-gnu, or
>> /usr/lib/x86_64-linux-gnu. In addition, the --mysqld and
>> --mysqld-version options can be used only on the command line and not
>> in an option file. (Bug #24464380)
>> - Privilege escalation was possible by exploiting the way REPAIR TABLE
>> used temporary files. (Bug #24388746)
>> - It was possible to write log files ending with .ini or .cnf that
>> later could be parsed as option files. The general query log and slow
>> query log can no longer be written to a file ending with .ini or .cnf.
>> (Bug #24388753)
>>
>> Thanks
>>
>>
>> On Mon, Sep 12, 2016 at 6:58 AM, Dawid Golunski <dawid@legalhackers.com> wrote:
>>> Hi Alexander,
>>>
>>> I was just going to reply to your email you sent earlier.
>>> Thanks for the feedback. I actually updated the introduction after your email.
>>> The advisory focuses on CVE-2016-6662 vulnerability which lets users
>>> to modify/create my.cnf files. A fix would prevent users from writing
>>> to my.cnf config.
>>>
>>> And yes there's a typo in the last paragraph made after a few
>>> sleepless nights ;) I've fixed it now.
>>>
>>> The CVE-2016-6663 is not public yet. I refer to it in the advisory to
>>> give some heads up in case someone wanted to discard this issue based
>>> on reasoning that FILE privs are not common and that they will never
>>> be pwned etc. It'll soon be published then it'll be clear what this
>>> CVEID is about ;)
>>>
>>> Cheers.
>>>
>>>
>>>
>>> On Mon, Sep 12, 2016 at 7:35 AM, Solar Designer <solar@openwall.com> wrote:
>>>> On Mon, Sep 12, 2016 at 06:09:10AM -0300, Dawid Golunski wrote:
>>>>> Vulnerability: MySQL Remote Root Code Execution / Privilege Escalation 0day
>>>>> CVE: CVE-2016-6662
>>>>> Severity: Critical
>>>>> Affected MySQL versions (including the latest):
>>>>> <= 5.7.15
>>>>> <= 5.6.33
>>>>> <= 5.5.52
>>>>
>>>>> http://legalhackers.com/advisories/MySQL-Exploit-Remote-Root-Code-Execution-Privesc-CVE-2016-6662.html
>>>>
>>>> Thank you for posting this.  For archival, and to comply with
>>>> oss-security content guidelines, I am attaching a text/plain version of
>>>> the above advisory (which includes a lot of detail not in your posting).
>>>>
>>>> Also, to add detail on the disclosure timeline: Dawid brought this to
>>>> the distros list yesterday (Sunday).
>>>>
>>>> As I had pointed out in a reply on distros, it is not entirely clear
>>>> what exact issue the CVE-2016-6662 identifier is for.  The advisory
>>>> talks about multiple sysadmin practices, packaging issues, dangerous
>>>> features of MySQL, and finally of safe_mysqld including the data
>>>> directory in its search path for my.cnf.  I guess it would be most
>>>> reasonable to have the CVE ID refer only to the latter aspect, but
>>>> confirmation/clarification is needed.  As it is, it's unclear from the
>>>> advisory what exact "vulnerabilities were patched by PerconaDB and
>>>> MariaDB vendors" (the advisory says so), and it is unclear what Oracle
>>>> and distros "fixing" CVE-2016-6662 would mean.
>>>>
>>>> Also, in this paragraph I guess the advisory wanted to refer to the
>>>> upcoming CVE-2016-6663 (I have no idea what that issue is, beyond what
>>>> the advisory says), like it does in a few other places:
>>>>
>>>> "It is worth to note that attackers could use one of the other vulnerabilities discovered
>>>> by the author of this advisory which has been assigned a CVEID of CVE-2016-6662 and is
>>>> pending disclosure. The undisclosed vulnerability makes it easy for certain attackers to
>>>> create /var/lib/mysql/my.cnf file with arbitrary contents without the FILE privilege
>>>> requirement."
>>>>
>>>> Alexander
>>>
>>>
>>>
>>> --
>>> Regards,
>>> Dawid Golunski
>>> http://legalhackers.com
>>
>>
>>
>
