X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2003" "Friday" "25" "May" "2018" "12:48:59" "+0200" "Andrey Konovalov" "andreyknvl@gmail.com" "<CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>" "54" "Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" nil nil nil "5" "2018052510:48:59" "[oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit" (number mark "U       andreyknvl@g May 25   54/2003  " thread-indent "\"Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer dereference in net/dccp/output.c:dccp_write_xmit\"\n") "<CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>" ("<982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>" "<1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>" "<CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com>" "<CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12028 invoked by uid 550); 25 May 2018 10:49:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12009 invoked from network); 25 May 2018 10:49:11 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ITTmMQBFZd9M5OTHSZLRCvKFQvZ85B98ZCFlznWEywI=;
        b=Gm0WGyIqK46rFGfhD1fhD6o0kD23ih0Kt+sHu1cXZUDJJSFegEijedJKhrzI5JQuKf
         yGzEGVeCIMrE5A76m6JMvIhCjee9Mj3m/lxqx9wX9lA/vIk4avH8/TAEw8XUwdf5hago
         V2mEKqdfpOnHlnwRLTaAYSj/Z4n7Udr7BqKoYvRkuNMQolUO69OUUPBxoCbAAKHajabD
         hfsJYskjvYYNncsOcBdwUGyykRhdlo44jTKRuy2ZgtvIp6RsnSNpk5nkBeaGkbLgSGKM
         8aQeBu8cq6SehEQmuLqNnFjasjnwxiFG1t46FOdbg/ApzTrdXG+W38s8mGCkIVA/YgC+
         8lRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ITTmMQBFZd9M5OTHSZLRCvKFQvZ85B98ZCFlznWEywI=;
        b=IxWjYAgFOoMnY0JrTAYx5H2CzLspP3iW2cDg1pHGiYlgftgPZgTizggdkFuNaMvLLS
         MozdOHU3y4llEJgM+KJPPHHq9OjhfWcV+eIySE3ySBT7uQAcwetkWCHO47EGSH9+srTa
         5zYte6pnoRF37m2fVQ8+gY9BUC1u+YdXlZfnGiKj4cWx/4zt0VHbj8Q6wMSwlSd6sVgX
         EBI8dSSE2jLAq/H3QYikrO1sBkrp36FMk15fAgHNalLtMamx+aH7b7zNq1uu4GnE6gs5
         qS2OGQz+XSaBXgjgxeo2TrTZ2BRUEVCU16AN7+FvXLb1MUVOh4EV7mQyqmJdjaV7Y/GE
         wpzg==
X-Gm-Message-State: ALKqPweINUl7xobOGGBqoNO8ZX3O8rzkNaIBtLNHnitygVy9BLpNFul/
	XnpbCV8S83WdS0a+r55Elsviw6aNmB9N97lbB+7z1SVF
X-Google-Smtp-Source: ADUXVKKWKKRAT9n+xCg9yGqnpWwk9BtN3Z9EQ+hMuNZK5EIdvHYbdmD3d3qTu2bTykmyP+3qdEci9wLQKsrELXj65Zs=
X-Received: by 2002:a2e:9101:: with SMTP id m1-v6mr1293920ljg.93.1527245339651;
 Fri, 25 May 2018 03:48:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>
References: <982848644.28761175.1525953818635.JavaMail.zimbra@redhat.com>
 <1961715083.28767602.1525953956902.JavaMail.zimbra@redhat.com>
 <CA+fCnZfA=_nZfUQzS+r6ZbOqPFTLSzAEbh8EHHnvNsoDH+C87w@mail.gmail.com> <CANO=Ty1iLpdsxX+vcFRfJ4L7ZgG1NCPW-oOzxftbdzO0-XHuQA@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@gmail.com>
Date: Fri, 25 May 2018 12:48:59 +0200
Message-ID: <CA+fCnZf2Dpv9BB4E3VUsZpeKkeqO6EDq5qJOz5tSsXru89POVA@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: Vladis Dronov <vdronov@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] CVE-2018-1130: Linux kernel: dccp: a null pointer
 dereference in net/dccp/output.c:dccp_write_xmit

On Wed, May 23, 2018 at 4:57 PM, Kurt Seifried <kseifried@redhat.com> wrote:
> On Wed, May 23, 2018 at 8:49 AM, Andrey Konovalov <andreyknvl@gmail.com>
> wrote:
>
>> On Thu, May 10, 2018 at 2:05 PM, Vladis Dronov <vdronov@redhat.com> wrote:
>> > Hello,
>> >
>> > A null pointer dereference in dccp_write_xmit() function in
>> net/dccp/output.c
>> > in the Linux kernel before v4.16-rc7 allows a local user to cause a
>> denial of
>> > service by a number of certain crafted system calls.
>>
>
>
> So the classic CVE statement for this is "does it cross/violate a trust
> boundary". Yeah I know, not super helpful.
>
> In general when I look at something and need to decide whether or not it
> deserves/needs a CVE the fundamentals are:
>
> 1) Can an attacker use this vulnerability to gain access, additional
> privileges, basically is there an impact to
> Confidentiality/Availability/Integrity? This is really two tests: is there
> an impact, and is there a way for the attacker to trigger or exploit it?
> That's a CVE.
>
> 2) Does the software/system make a specific security claim that they then
> fail to meet? E.g. "we include a firewall that blocks access to everything
> inbound except for port 22", if they were to then also allow port 80,
> that'd be a CVE.
>
> So for the syzbot stuff mostly what you need to determine is:
>
> a) is there a security related impact?
> AND
> b) can an attacker trigger it?
>
> If both are yes, then a CVE is warranted.

Hi Kurt,

Perhaps I should've been more clear. I wasn't asking "what qualifies
for a CVE?", but rather "There are a 100 bugs that qualify for CVEs,
how do single out 10 of them to actually request CVEs for?".

In particular, the 100 bugs that I'm referring to are the bugs
reported by syzbot (perhaps there's even more:
https://syzkaller.appspot.com/?fixed=upstream) and the 10 bugs (or so)
are the ones Vladis announced on oss-security over the last few
months. I'm just curious how did he choose those 10 bugs out of that
100+.

Thanks!
