X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1289" "Wednesday" "22" "November" "2017" "17:42:53" "+0100" "Guido Vranken" "guidovranken@gmail.com" "<CAO5O-EKCmEgPqbtQnrJGuPf6_zXy-Kfo+ONvb6ohmPnfn25GRg@mail.gmail.com>" "35" "Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" nil nil nil "11" "2017112216:42:53" "[oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)" (number mark "U       guidovranken Nov 22   35/1289  " thread-indent "\"Re: [oss-security] Go programming language invalid modular exponentiation result (Exp() in math/big pkg)\"\n") "<20171122081339.eacdjs5pewelvhod@scully.more-magic.net>" ("<CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>" "<20171122081339.eacdjs5pewelvhod@scully.more-magic.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18256 invoked by uid 550); 22 Nov 2017 16:43:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18238 invoked from network); 22 Nov 2017 16:43:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=1pV5PX0+5CorepfHoBPkY1/9HLBkXF21vCeXHf016zA=;
        b=gqWyW05lDciQL7SyCHNEuL8G1lxIa8vIj83BkLuAX4RU47EnbdQApJ/V8PWqHc/4N4
         zIOIOdMdQ+6P/7A7JutD6jNwi4oUhKRHAt2trxZShDCUGQ18nwGGkeNlwO3xwOaizJMs
         /5cG0hELZ1bKqaxuC2YgEnYOtAQmE4QOcTmVsy2y0CVdqiKXDfX/fm7g+U7OaEfBI3XS
         yD8CvW4+JHN/6nhshSJiT2hvohHO5UAU4e0Sq4VQY+U8QQezqKRxCQU3VsUYLG5l1M/o
         fvbHVMf2QlDRyvptZHiMvDW8mO94A1SNlZ2hQegKWS8YVzoUMQH4OST1y8+Qjc+fAq6x
         G3Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=1pV5PX0+5CorepfHoBPkY1/9HLBkXF21vCeXHf016zA=;
        b=hvrqvxpFWJwbERK4mm+zPgYDaPlZwVpaYZTYZjHzHTVvfi9IFkCJPe5nNqzwWPkma/
         B71URREtgndXLEqWVfa9d9GzNLkEqwM/9CkRq9CDsRtvAMrGAouW+2AzV2YGqgNW4sl3
         0v2zeXXK5FUXTOT2Zkql3UDDdrdkRpSivkx6faIhZa/s4NME2LJmnfvEi0Mst1Hx11IG
         PMb7dmW1NHZerNq1c3lBCeWvxT2rSoDVS1FXTQ+pOO442sr9AKQZcMxiqA22scfRJJfK
         gvkV0HGTu2adzzTJVgT72G2qKNVBpbFPpGai5b6aZxJcm+uP7r0PYP1kcsCXoBgATq4p
         xBwA==
X-Gm-Message-State: AJaThX5O6Tyu8KW06ekrOO+VWKhV8PD+UVA+HLvr+YC6oMbXr/9SfcOq
	IfA1SFgjKNajLQh4iPjRiQULOzkboavPVLSZMRgh/3q/
X-Google-Smtp-Source: AGs4zMb1nVMNOE2mAl63w03FYpkvJrNayCvCue1d2iKm8L0LFROrVlqHJCnv+tn72zPwtrHTC54A5mkGgLOPwgoWKn4=
X-Received: by 10.84.130.6 with SMTP id 6mr22788032plc.402.1511368974314; Wed,
 22 Nov 2017 08:42:54 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20171122081339.eacdjs5pewelvhod@scully.more-magic.net>
References: <CAO5O-ELaS6a9jPqxZeuEYX3nhT1k2X8hWkz2D6=1G+mBW14BPw@mail.gmail.com>
 <20171122081339.eacdjs5pewelvhod@scully.more-magic.net>
From: Guido Vranken <guidovranken@gmail.com>
Date: Wed, 22 Nov 2017 17:42:53 +0100
Message-ID: <CAO5O-EKCmEgPqbtQnrJGuPf6_zXy-Kfo+ONvb6ohmPnfn25GRg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] Go programming language invalid modular
 exponentiation result (Exp() in math/big pkg)

Peter,

It is available: https://github.com/guidovranken/bignum-fuzzer

It has a modular set-up, meaning individual bignum libraries can
easily be added, removed, enabled or disabled.
I'll write some documentation soon, but you can probably figure out
the module layout from looking at the existing ones.
Compiling your code must result in a static archive that can be linked
to the other objects. If that really is not possible, you must come up
with some sort of inter-process communication.
Feel free to create a PR for your own module and I'll add it.

Thanks

Guido

On Wed, Nov 22, 2017 at 9:13 AM, Peter Bex <peter@more-magic.net> wrote:
> On Wed, Nov 22, 2017 at 12:30:08AM +0100, Guido Vranken wrote:
>> Dear list,
>>
>> I've written a bignum fuzzer that compares the results of mathematical
>> operations (addtion, subtraction, multiplication, ...) across multiple
>> bignum libraries.
>
> Hi there,
>
> Is this fuzzer freely available?  I'd love to try it out on the bignum
> support I added to the CHICKEN Scheme implementation for its upcoming
> new major release (probably somewhere mid-2018).  Being able to release
> it with a bit higher confidence in its correctness would be nice, as this
> is almost all brand new code.
>
> Cheers,
> Peter Bex (CHICKEN core maintainer)
