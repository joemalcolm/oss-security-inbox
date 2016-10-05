X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1344" "Wednesday" "5" "October" "2016" "10:09:07" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkKKPfO-w1iBcLMdLF=ZGLQG43jJQRxMYYUwGFm7Wx0WHA@mail.gmail.com>" "33" "Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100517:09:07" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        taviso@googl Oct  5   33/1344  " thread-indent "\"Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "<20161005184753.417dd846@pc1>" "<CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>" "<CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24523 invoked by uid 550); 5 Oct 2016 17:09:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24505 invoked from network); 5 Oct 2016 17:09:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=pA7l1CJDQ7acysH2LafstXO+//L9CX5kzTdsJZdHBW4=;
        b=bC4IjOVEElba9NURhZj3Su65PtQiDjhNktl21jzI+XewP7pDhmgDVgFcO6znfI8H6H
         /7BIzjXg4ZrUrJLPNS8X2pnKiMPrN3lAwXKXGnFVGyU8aCuyTuZcjvmOf4KTXeybhj0e
         n7SiJCbEx/kXzazyyZG3mu3q2WtxhDdH7m2h/jJtazjciu52UQOQFA/ySJBr3794QW4U
         wHtkszY40c1Ach1bZtgUoYHGfzrjZNDXT7gJrsXpyF68lOUVCGGjCQymMFTN9MJoIRpD
         Rk7uPEei0em4WWyKsVdhne/uXj1hInS9m4XUTa9Hm3PkHkK1RLJDNeNqJwebj41DzWVr
         cwbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=pA7l1CJDQ7acysH2LafstXO+//L9CX5kzTdsJZdHBW4=;
        b=kgfovDy96kovixt7cSldUxHJvRHiRsV98dd+O+Pk26FbWPvZqmfzyn9TBUguskBcSN
         V3JdK8sm5qyI0RTCRb4khXZlRPSVVXPSQ93JwF5KQgPKZxnGRh3vI+l9+enDY5fK189V
         l1LRqnLJ6QniUL7uRurKCgHhxapIKYSAZNsLNNSAC1KFamjUxVKQQuf/0hrkNVDYM9gm
         W2LebyllxMdnGDAtPxWvzBBuitLu/IvmzHBsMUc4Om+rNqCQOAMxC0n9A+GnSg9XcddA
         EbOf6+8twnCb6eea2ZFhUfoaNVVdzA/JZnt475a3PUemPWUk9/xnCcyKuWeS+BkoWSbk
         4/6Q==
X-Gm-Message-State: AA6/9RnSb/V5YK6htq6EE1NX/8UjsKsMipG5n+f3WZD9bPutY2DvY8zFBhqKTzz6iw18bZrdFEit0RGosbiUbieI
X-Received: by 10.176.1.140 with SMTP id 12mr6473595ual.1.1475687368391; Wed,
 05 Oct 2016 10:09:28 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
 <20161005184753.417dd846@pc1> <CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>
 <CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>
Message-ID: <CAJ_zFkKKPfO-w1iBcLMdLF=ZGLQG43jJQRxMYYUwGFm7Wx0WHA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 5 Oct 2016 10:09:07 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems
To: oss-security@lists.openwall.com

On Wed, Oct 5, 2016 at 10:04 AM, Tavis Ormandy <taviso@google.com> wrote:
> On Wed, Oct 5, 2016 at 9:54 AM, Tavis Ormandy <taviso@google.com> wrote:
>> On Wed, Oct 5, 2016 at 9:47 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>>> On Wed, 5 Oct 2016 09:13:03 -0700
>>> Tavis Ormandy <taviso@google.com> wrote:
>>>
>>>> If you're using ImageMagick, I would recommend disabling the PS, EPS,
>>>> PDF and XPS coders in policy.xml. Applications like gimp, evince,
>>>> claws, and most other applications that generate thumbnails of PDF/PS
>>>> documents should probably not do so without a prompt (NOTE: A lot of
>>>> packages do this
>>>
>>> I was surprised to see evince in this list. It uses poppler for pdf and
>>> libspectre for postscript, so there seems to be no use of
>>> ghostscript (maybe in an older version).
>>> Also for claws the only use of ghostscript is in a plugin that's not
>>> enabled by default.
>>
>> It might be an old version but the version I have on RHEL7 and Ubuntu
>> LTS both invoke gs by default.
>>
>> $ evince --version
>> GNOME Document Viewer 3.14.2
>
> Oops, I think I may be wrong about that, I just saw that some of my
> test cases repro and assumed it was using ghostscript.
>
> Maybe there are poppler issues as well, sigh.
>

Ahh, no, I was right - it's using libgs, and the same issues apply there.

Tavis.
