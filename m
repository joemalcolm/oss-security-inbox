X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1110" "Saturday" "22" "July" "2017" "19:04:35" "+0200" "Patrick Uiterwijk" "puiterwijk@redhat.com" "<CAJmMGNt9RgxmdygDZ2Y08pCHkuC9penaowe1=JjfOmE+sWduVA@mail.gmail.com>" "37" "Re: [oss-security] pagure: private repositories accessible through ssh" "^Date:" nil nil "7" "2017072217:04:35" "[oss-security] pagure: private repositories accessible through ssh" (number mark "        puiterwijk@r Jul 22   37/1110  " thread-indent "\"Re: [oss-security] pagure: private repositories accessible through ssh\"\n") "<8fc3c73f-ae17-a490-b682-31d25da25011@lighttpd.net>" ("<8fc3c73f-ae17-a490-b682-31d25da25011@lighttpd.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9881 invoked by uid 550); 22 Jul 2017 17:08:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7755 invoked from network); 22 Jul 2017 17:05:07 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=zphsKfbvZvJ6OQPy0YDBDRYE/Yh6YyBu4h+C08BuPOE=;
        b=SxOrB7SyXkRib9X3fLjspk7ptJlkv076gC+uRxqlew6AqIuzSlU0zTO9StEVvsEdm2
         60vlXTf1GJIEi3sWwYD0LJtig2kvCQyCQqKgGyZ8Q87DWHOr9rZ7kNl9biXRtLs/PCeL
         y+c9tL1tHSlSVnKnPUKjMaex31t49Fm3iJhbF/XjXy8MH4BEFwhNyYe7YNIusDjvfLCx
         IDqj5w5wH8DPd3P4GvQlNM617A8AVeCzM9nQiQ6fMsrPbmmUekJfD81wFeYQ9XRInyqO
         X095fAtNNfvxeUcMuIyDjLV4MJxJ1mYVvjKSX9c9fB6zZbAIOK/mFJzdnxCqeaNPhqPh
         c3ng==
X-Gm-Message-State: AIVw113PgKZcugL+3OHOJnKxbcwnZc2zDopZpn/HuRMrshVg3tTHqknK
	c7jR/hwRu8m4M8k0QtUBMx53vGTo0m+HZfDGAA==
X-Received: by 10.46.71.139 with SMTP id u133mr3257928lja.45.1500743096102;
 Sat, 22 Jul 2017 10:04:56 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <8fc3c73f-ae17-a490-b682-31d25da25011@lighttpd.net>
References: <8fc3c73f-ae17-a490-b682-31d25da25011@lighttpd.net>
Message-ID: <CAJmMGNt9RgxmdygDZ2Y08pCHkuC9penaowe1=JjfOmE+sWduVA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Sat, 22 Jul 2017 19:04:35 +0200
From: Patrick Uiterwijk <puiterwijk@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] pagure: private repositories accessible through ssh
To: oss-security@lists.openwall.com

On Sat, Jul 22, 2017 at 2:20 PM, Stefan B=C3=BChler <stbuehler@lighttpd.net=
> wrote:
> Hi,
>
> pagure [1], a git-centered forge, supports private repositories [2]:
>
>> PRIVATE_PROJECTS
>> ~~~~~~~~~~~~~~~~
>>
>> This configuration key allows you to host private repositories. These
>> repositories are visible only to the creator of the repository and to
>> the users who are given access to the repository.  No information is
>> leaked about the private repository which means redis doesn't have the
>> access to the repository and even fedmsg doesn't get any
>> notifications.
>>
>> Defaults to: ``False``
>
> But the gitolite config, which is used to configure SSH-access, allows
> "@all" users to access all repositories - private or not.
>
> I proposed the attached patch upstream in [3].

This issue has been assigned CVE-2017-1002151.

>
> After patching you should ensure gitolite.conf gets regenerated from
> scratch.
>
> cheers,
> Stefan
>
> [1]: https://pagure.io/pagure
> [2]: https://pagure.io/pagure/blob/master/f/doc/configuration.rst
> [3]: https://pagure.io/pagure/pull-request/2426

Patrick
