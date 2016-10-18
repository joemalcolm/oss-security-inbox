X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1350" "Tuesday" "18" "October" "2016" "15:18:55" "+0300" "Lior Kaplan" "kaplanlior@gmail.com" "<CAEsznC5BCaqRXQo1=SfvhgZTDfk=XJ2bwP05B6=qKW7mWTcNMg@mail.gmail.com>" "54" "Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" nil nil nil "10" "2016101812:18:55" "[oss-security] CVE assignment for PHP 5.6.27 and 7.0.12" (number mark "U       kaplanlior@g Oct 18   54/1350  " thread-indent "\"Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12\"\n") "<45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>" ("<CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>" "<45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28441 invoked by uid 550); 18 Oct 2016 12:19:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28423 invoked from network); 18 Oct 2016 12:19:08 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1uEGcLoieepVkIk8+sK/XHKykgLl66mqugRFrLOAYE4=;
        b=aR2OSIUUJnRr8IEmMx6LVuUpcLAFj7CCq7W6WPnjbzS4Kq356OkH5QQdo4yznbZyFV
         Bc+PZmvIlcskCGL/S7Gfgij91m5zlfkmJu6t76SbU4LLRWAxpHcee7LR0YQIKDMHgNvg
         ZMyCSL48tO5HLw2kSoDfEBs2iU4WKEm2Ts3jNdC8ly56sf/o+6lZQ7fECdESl6fEiZ9P
         c2Cl/xXYA5klABU28YF0wpX6Uoerp2Qr13I/QzH0DGO3HTA03FM0UGe/BY0MeMVAwr/y
         eZt6OvI8jJ8F5RSAXWTY7eXhc+b+4rMAcvTP968y8UusgMS4njgCPHmC5ntUWe5OJXXf
         zANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1uEGcLoieepVkIk8+sK/XHKykgLl66mqugRFrLOAYE4=;
        b=Zf6bOQgYjz4fIFC7NskBa7Buibh556Dacw6BSECMZfgWMN6iPfaTCh1bKuWCBaU557
         jZSy+0UP5Wjk4fgEAQ3nzjyXZ5DK5XD2lk6WToyUdXCgv7Fc02gMjshGueK0noS5tIn2
         mrxT1M4hqZvVd8rJe3Yp9f4Wpbp51tH9b9es1f5SPP4CQFaUV3iNCbzf+MhrP5iajsot
         g6+E3hHpfwU+05HDch5aoife4Z14LJZ4qiGicglV37vk3YfRB+YY+dfdH1eIJ9yiAGuV
         /llbfg9x1lFiwUqt/aXhf9+0LDBJ6dq09C5a//MBkGiLgSRJ75DsO9dXYXVwdoqyhoKH
         3BJQ==
X-Gm-Message-State: AA6/9Rnxzu79Fzt2yWbT2l3RaDO2wGFdALEfSWF6/11ypeaSCtb/Srk8zWuS9kITjkUpgDhSgEfAQ0QJbTIeww==
X-Received: by 10.31.215.67 with SMTP id o64mr127826vkg.92.1476793136129; Tue,
 18 Oct 2016 05:18:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>
References: <CAEsznC7n7U35nHEx64ma39PtbqKd6TjPyvAWJMBaP6YRacJEog@mail.gmail.com>
 <45c3eba1-d26d-7137-f1e6-fb29322fa610@redhat.com>
From: Lior Kaplan <kaplanlior@gmail.com>
Date: Tue, 18 Oct 2016 15:18:55 +0300
Message-ID: <CAEsznC5BCaqRXQo1=SfvhgZTDfk=XJ2bwP05B6=qKW7mWTcNMg@mail.gmail.com>
To: Adam Maris <amaris@redhat.com>
Cc: oss-security@lists.openwall.com, Stanislav Malyshev <stas@php.net>
Content-Type: multipart/alternative; boundary=94eb2c07c972492d1f053f22b240
Subject: Re: [oss-security] CVE assignment for PHP 5.6.27 and 7.0.12

--94eb2c07c972492d1f053f22b240
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Adam,

On behalf of the PHP security team, I intend to request only one CVE.
(in addition to #73003 that, as you mentioned, already had CVE assigned by
libgd)

The rest of the bugs weren't assessed as "CVE needed". You're welcome to
contact
the PHP security list for further discussion.

Kaplan


On Tue, Oct 18, 2016 at 3:06 PM, Adam Maris <amaris@redhat.com> wrote:

> On 18/10/16 09:42, Lior Kaplan wrote:
>
>> Hi,
>>
>> Please assign a CVE for the following issue:
>>
>> Bug #73147    Use After Free in unserialize()
>> https://bugs.php.net/bug.php?id=3D73147
>> http://git.php.net/?p=3Dphp-src.git;a=3Dcommit;h=3D0e6fe3a4c96be2d
>> 3e88389a5776f878021b4c59f
>>
>> Thanks,
>>
>> Kaplan
>>
>> 16 bugs marked as 'security' were fixed in php 5.6.27 of which only one
> has CVE assigned.
> Here you request CVE for another one issue (even the documentation says
> it's unsafe to use
> unserialize on untrusted input).
>
> Are you planning to obtain CVEs also for other security bugs or do you
> treat the rest as
> CVE-unworthy? Or are reporters/community supposed to do it?
>
> Thanks!
>
> --
> Adam Mari=C5=A1, Red Hat Product Security
> 1CCD 3446 0529 81E3 86AF  2D4C 4869 76E7 BEF0 6BC2
>
>
>

--94eb2c07c972492d1f053f22b240--
