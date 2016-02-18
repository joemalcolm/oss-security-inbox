X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3720" "Thursday" "18" "February" "2016" "16:45:59" "-0600" "Austin English" "austinenglish@gmail.com" "<56C649A7.7080105@gmail.com>" "97" "Re: [oss-security] Re: CVE request for wget" nil nil nil "2" "2016021822:45:59" "[oss-security] Re: CVE request for wget" (number mark "U       austinenglis Feb 18   97/3720  " thread-indent "\"Re: [oss-security] Re: CVE request for wget\"\n") "<CACC5Q1cpNSrJ-OqwKEj_tO3BZRtppzYZ1yxzf_D-a2YZWN9-tA@mail.gmail.com>" ("<CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>" "<20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>" "<20151001231046.GB16643@hunt>" "<CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>" "<CACC5Q1dRGnLHyxwEznn5Hm+Pym_ijXAsQuAT=AD16zaeUWSLgw@mail.gmail.com>" "<CACC5Q1f5f2j6GCpBidR44=HY=2UAwZEJhtV+adJa1i7TK+76SQ@mail.gmail.com>" "<CACC5Q1cpNSrJ-OqwKEj_tO3BZRtppzYZ1yxzf_D-a2YZWN9-tA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3767 invoked by uid 550); 18 Feb 2016 22:46:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3747 invoked from network); 18 Feb 2016 22:46:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-type:content-transfer-encoding;
        bh=C3vJj51bbxt06+0PSFwcOFxQBEruReXWwonowLg7HRw=;
        b=VavF4aMTTlMhB3nYMtV3OgE19/Z5gH9sI+gxS6FBTCNiXOWGc8Ywl/HeOsN6bScCGx
         aGb5azqKktTVc9n7/JjJnKWPwFATCZ55k3qpwG/5BNa6GFf+2OZQ8UW8RBDiIuRHaoR5
         lhvPlsDbfe439lLwD/y7OmHQ/Nz2CMsZOLQ5f1L92aWsVzkyxQXKEWHKTHQu2Ax2KwmD
         cn4BRXD5pxGXi1Ppv/nCWiMt1sku85iucOZWtRqF7VJBetQfcdLnp0y00a2YbBXnGrHd
         TkgVk9W6U08hLElNGcSUGfQAfEAIAWZutEL1NnGBiAVPf5tx171tzYGkMe72mMXZfSsR
         ZXAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=C3vJj51bbxt06+0PSFwcOFxQBEruReXWwonowLg7HRw=;
        b=AzIKxMAFyxG6L7HJi6bjfXY9QaTVUvdx3+0k4EVoPoFZLz6S5FUkTWJEDAKZ72qmKY
         TG+hzniQaqvCYgodJtM4U2LyeQsP5AWJnKRQKZ1Is67UPxMxzFkl5IfNjKrVysHd+cgN
         Oowqzk79KmwuHOwbXu1Im+p62aG7Ft6gqgT1dTrc3dmXEIsD7B857FwPJfXKbatGOUCC
         dmerPfI2gzk0Ge2qdWN3Ybh82tYSRTM2eZV/42kQo/Yaql2lm/oUBjqdp/LI7yzLiUud
         ZIUbE0i8QELZuV7EMSHZD30gyGlz2tkQUmzcBA+PNxbWRAmjUPYmlPi3iLtauPHoa8Qr
         BVlw==
X-Gm-Message-State: AG10YOTuNJj7kZNrIsRzq09ffRtjOlKzMLne1ZzwGhK8IyJ8Ab7Bltm9Q3tborrJ7gFQ3w==
X-Received: by 10.140.99.69 with SMTP id p63mr11740291qge.97.1455835562028;
        Thu, 18 Feb 2016 14:46:02 -0800 (PST)
To: cve-assign@mitre.org, oss-security@lists.openwall.com
References: <CACC5Q1eQ8jf-nxub=viXgnSt6pZGzSzbV=RD2YXV76NVHw7WTQ@mail.gmail.com>
 <20151001225726.9EF7AB2E0A6@smtpvbsrv1.mitre.org>
 <20151001231046.GB16643@hunt>
 <CACC5Q1dPzS3C_9L_vVx4scx7UaE38OqXcC0g6zFPE-Eb-tYRSw@mail.gmail.com>
 <CACC5Q1dRGnLHyxwEznn5Hm+Pym_ijXAsQuAT=AD16zaeUWSLgw@mail.gmail.com>
 <CACC5Q1f5f2j6GCpBidR44=HY=2UAwZEJhtV+adJa1i7TK+76SQ@mail.gmail.com>
 <CACC5Q1cpNSrJ-OqwKEj_tO3BZRtppzYZ1yxzf_D-a2YZWN9-tA@mail.gmail.com>
From: Austin English <austinenglish@gmail.com>
Message-ID: <56C649A7.7080105@gmail.com>
Date: Thu, 18 Feb 2016 16:45:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.5.0
MIME-Version: 1.0
In-Reply-To: <CACC5Q1cpNSrJ-OqwKEj_tO3BZRtppzYZ1yxzf_D-a2YZWN9-tA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Re: CVE request for wget

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

On 12/24/2015 12:05 PM, Austin English wrote:
> On Tue, Nov 3, 2015 at 10:19 PM, Austin English
> <austinenglish@gmail.com> wrote:
>> And 1.7 is now out as well: 
>> https://tails.boum.org/news/version_1.7/index.en.html
>> 
>> With the fix included and documented
>> 
>> On Mon, Nov 2, 2015 at 2:37 AM, Austin English
>> <austinenglish@gmail.com> wrote:
>>> 
>>> The fix has been released in 1.7-rc1, 
>>> https://tails.boum.org/news/test_1.7-rc1/index.en.html
>>> 
>>> On Mon, Oct 26, 2015 at 3:21 PM, Austin English
>>> <austinenglish@gmail.com> wrote:
>>>> 
>>>> On Thu, Oct 1, 2015 at 6:10 PM, Seth Arnold
>>>> <seth.arnold@canonical.com> wrote:
>>>>> On Thu, Oct 01, 2015 at 06:57:26PM -0400,
>>>>> cve-assign@mitre.org wrote:
>>>>>> If there is any additional Tails vulnerability related to
>>>>>> this, another CVE ID may be needed. For example,
>>>>>> 
>>>>>> https://lists.gnu.org/archive/html/bug-wget/2015-08/msg00050.html
>>>>>>
>>>>>>
>>>>>> 
says
>>>>>> 
>>>>>> to be 100% sure, you should add --passive-ftp to your
>>>>>> command line. If you don't do that, your /etc/wgetrc or
>>>>>> ~/.wgetrc could include --no-passive-ftp (or passiveftp =
>>>>>> off).
>>>>>> 
>>>>>> If Tails is supposed to try to ensure that, perhaps
>>>>>> there's a requirement to have something like:
>>>>>> 
>>>>>> alias wget="wget --passive-ftp"
>>>>>> 
>>>>>> in a system-wide location (possibly /etc/bash.bashrc).
>>>>>> The concept of CVE IDs for "failure of a torify step"
>>>>>> issues is new, and we aren't sure of the best approach.
>>>>> 
>>>>> I suspect using a bash alias in a site-wide config might
>>>>> then qualify for another CVE in the future, along the lines
>>>>> of "programs that spawn wget via system(3), popen(3), or
>>>>> exec family of functions can use unsafe active mode by
>>>>> accident". If Tails is in the business of fixing these
>>>>> things for safety, removing active ftp support from tools
>>>>> seems like better fix.
>>>>> 
>>>>> Thanks
>>>> 
>>>> A fix has been applied to Tails git:
>>>> 
>>>> https://labs.riseup.net/code/projects/tails/repository/revisions/b9
fd6312435d55dd0bc0b6abdb7994da4d66e2b2
>>>>
>>>>
>>>> 
In short, the wget binary is moved to /usr/lib/wget/wget, and a
>>>> wrapper script is put in place in /usr/bin/wget. The wrapper
>>>> ensures that wget is called via torsocks, and additionally,
>>>> also forces --passive-ftp.
>>>> 
>>>> Moving wget to /usr/lib/wget/wget gets the potentially
>>>> dangerous wget binary out of $PATH. A dedicated attacker
>>>> could check if /usr/bin/wget is a script and then parse it to
>>>> find the actual binary, but that would need to be a very
>>>> dedicated attacker and at that point, there are more feasible
>>>> attacks available.
> 
> This CVE has been fixed in a released version for quite some time, 
> what is needed to get this published/resolved?

Ping.
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJWxkmbAAoJEBT71+qgQZN7RpsP/1awlNnGYkiY5EZtywc+6zYV
/dIyEtmuQI41Yk2eVCImgXgHK4ZDd8YjOxI9Ad7SOoCVp83qEfHJmshWbihREefA
8ScXQ8LXs/F1265ylx26kOyWptqt2UbRaHUSadFGolE/B5im8D574kI1VBxTT7Uh
Qr/aoCRDysIloEAo354mzn8kxDQeyMcG1+UaLXPMRKvuSy4btYszY4dQpC9HYQiK
2UWqJda5r8AN38u0xtr1W6W+lYrO0HXqA5PRyHXlCEmdTpnhm+boUaBt+0XMQf/s
58nUjDEnt3l4R0U2U7Mph9Wv9zFVezIPyFavh9tdUi+Z9wDAvB0MGeSg3nub7DEw
2blC9tmy+FLooZ6DONYupLsrtE66Ugpj330ZLgZP2M/PXsEWd28U/lZs0SPN7WdB
UMKCrAjhmpJiVISae0/OABj+Ht2seeJC9a0z8PucrcFdQrc2nVaq3Rl0D9NDi4//
Rfj1jG1OdZpeBsHtApMRoNJ1EcWDddokjachvQgIWWM2H/G4XPfq9Y1SCvQ8W8NQ
9ek1m5XyRvkoAFngR30hfSpBEToRqS1CYMWcKnu03Ab+D56Mi78fFmbV99LmxIYX
I6uzb6BvAFDcEzn4x3xe9VJWIw4nc7obB+zgnMiWpMRlQz5TYjxIbb7+tBvJWDoK
HhSjXSFqiDRWRl8swuoN
=m327
-----END PGP SIGNATURE-----
