X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2842" "Monday" "12" "September" "2016" "07:58:16" "-0300" "Dawid Golunski" "dawid@legalhackers.com" "<CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>" "69" "Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" nil nil nil "9" "2016091210:58:16" "[oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )" (number mark "U       dawid@legalh Sep 12   69/2842  " thread-indent "\"Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution / Privilege Escalation ( 0day )\"\n") "<20160912103527.GA3003@openwall.com>" ("<CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>" "<20160912103527.GA3003@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5242 invoked by uid 550); 12 Sep 2016 11:21:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26434 invoked from network); 12 Sep 2016 10:58:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=legalhackers-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=Z5QEz0IHZy35vP8f5uJhweie/Vgd924m8w2aFK2GN0k=;
        b=uU+XcfBfFLShmX4ua0hDRXNrIIq2i150hAF1ezh07izN//WYHZplcF2/6l1CXYudhm
         iRQNVSKsuwMKZUvnA5o8NZw6h7pKtLQIrglfTJfzMquUKkmjU3/HTlSbFAM7gDoBb4Mr
         iToAkObBmLZ4ZUUR67HyrF3G+oW3BF2sufGV6kVWk/u6lP8mNMjwKzsHqEzokvRd+wef
         o5XTa+iklkkN4JP8PCh2A4ff7FyAmt4YQjLwHfEaQCpoFJr5a3gNFAJaF523e1wizH26
         qJc6NKoiKtV30ili7caa+Zex1k8jpD0RH2JyNPanMTCzV7ymTY7opI6SVw4EGMWcnrBM
         1cQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=Z5QEz0IHZy35vP8f5uJhweie/Vgd924m8w2aFK2GN0k=;
        b=PiHRpZyq+onw503HB8EIEN0krytYtSTkf8iDkJ/r6OspgIV0EYehbWv9uwKi8Vib07
         wul1juztASY6m2uvg7WiFRKaxaeGvZjrcxPA3sLQd3+f5PcGmpUE7Scx+P5mvZVzzFBv
         TWhWz1FE8rN39xYxmM2/7v1xA+KFxBEmK0FjBK/4pkWyvJntRS5A/GyRTSEwtJZf2ZmH
         MxnHXLpBCCxnfCzV45ReFvc/rz+DhtXY9xiTlVnd9y6vfgxgEAqK4PcR+h0tUYEcqIEN
         vf4pKDeB4/iBfziYFW2x6VU3p4ky9mzya7NpUe+zG8XvTm+eSsKqxlSymeQzqYCMJmau
         vvog==
X-Gm-Message-State: AE9vXwNnNf7q3P1SBo9VYhIm1yhtzj+8fYisfkzVSXQ3vdH327+5x/Jd0aYrqwM+Rb3T74Y9g4YW10RLUpRTzw==
X-Received: by 10.31.83.65 with SMTP id h62mr11102446vkb.63.1473677897294;
 Mon, 12 Sep 2016 03:58:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160912103527.GA3003@openwall.com>
References: <CADSYzstomCU7KFOqX1u30Cej=OG3-FjCMpHPvsoCysHPoen1jw@mail.gmail.com>
 <20160912103527.GA3003@openwall.com>
From: Dawid Golunski <dawid@legalhackers.com>
Date: Mon, 12 Sep 2016 07:58:16 -0300
Message-ID: <CADSYzss4ZyRdBEHjDtXD4YcbrEJ6Kxvj_yUJTOmY-McGvm4KDg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: Re: [oss-security] CVE-2016-6662 - MySQL Remote Root Code Execution /
 Privilege Escalation ( 0day )

Hi Alexander,

I was just going to reply to your email you sent earlier.
Thanks for the feedback. I actually updated the introduction after your email.
The advisory focuses on CVE-2016-6662 vulnerability which lets users
to modify/create my.cnf files. A fix would prevent users from writing
to my.cnf config.

And yes there's a typo in the last paragraph made after a few
sleepless nights ;) I've fixed it now.

The CVE-2016-6663 is not public yet. I refer to it in the advisory to
give some heads up in case someone wanted to discard this issue based
on reasoning that FILE privs are not common and that they will never
be pwned etc. It'll soon be published then it'll be clear what this
CVEID is about ;)

Cheers.



On Mon, Sep 12, 2016 at 7:35 AM, Solar Designer <solar@openwall.com> wrote:
> On Mon, Sep 12, 2016 at 06:09:10AM -0300, Dawid Golunski wrote:
>> Vulnerability: MySQL Remote Root Code Execution / Privilege Escalation 0day
>> CVE: CVE-2016-6662
>> Severity: Critical
>> Affected MySQL versions (including the latest):
>> <= 5.7.15
>> <= 5.6.33
>> <= 5.5.52
>
>> http://legalhackers.com/advisories/MySQL-Exploit-Remote-Root-Code-Execution-Privesc-CVE-2016-6662.html
>
> Thank you for posting this.  For archival, and to comply with
> oss-security content guidelines, I am attaching a text/plain version of
> the above advisory (which includes a lot of detail not in your posting).
>
> Also, to add detail on the disclosure timeline: Dawid brought this to
> the distros list yesterday (Sunday).
>
> As I had pointed out in a reply on distros, it is not entirely clear
> what exact issue the CVE-2016-6662 identifier is for.  The advisory
> talks about multiple sysadmin practices, packaging issues, dangerous
> features of MySQL, and finally of safe_mysqld including the data
> directory in its search path for my.cnf.  I guess it would be most
> reasonable to have the CVE ID refer only to the latter aspect, but
> confirmation/clarification is needed.  As it is, it's unclear from the
> advisory what exact "vulnerabilities were patched by PerconaDB and
> MariaDB vendors" (the advisory says so), and it is unclear what Oracle
> and distros "fixing" CVE-2016-6662 would mean.
>
> Also, in this paragraph I guess the advisory wanted to refer to the
> upcoming CVE-2016-6663 (I have no idea what that issue is, beyond what
> the advisory says), like it does in a few other places:
>
> "It is worth to note that attackers could use one of the other vulnerabilities discovered
> by the author of this advisory which has been assigned a CVEID of CVE-2016-6662 and is
> pending disclosure. The undisclosed vulnerability makes it easy for certain attackers to
> create /var/lib/mysql/my.cnf file with arbitrary contents without the FILE privilege
> requirement."
>
> Alexander



-- 
Regards,
Dawid Golunski
http://legalhackers.com
