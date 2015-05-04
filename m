X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2675" "Monday" "4" "May" "2015" "19:34:42" "+0100" "=?UTF-8?B?UMOhZHJhaWMgQnJhZHk=?=" "padraic.brady@gmail.com" "<CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>" "74" "Re: [oss-security] PHP and some == wonkiness" nil nil nil "5" "2015050418:34:42" "[oss-security] PHP and some == wonkiness" (number mark "        padraic.brad May  4   74/2675  " thread-indent "\"Re: [oss-security] PHP and some == wonkiness\"\n") "<55479C75.3070000@redhat.com>" ("<55479C75.3070000@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15628 invoked by uid 550); 4 May 2015 18:34:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15606 invoked from network); 4 May 2015 18:34:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type:content-transfer-encoding;
        bh=9KKfK/aLwOm7wje5Is/hXkHiQ+UNidzRHrma6E3B+VU=;
        b=Toe7fjo0o3xKMzlupVcEm108gRzuY+tAOZSyx3QgaluIfaWyRcuNPWTWDULJOtcaAB
         JUB3MdCzhzxJe50WLMwy+9x/g+/ELwu/rCJX1k+cOnQBbiQvM58VCYMzP2ixGB8vvIXL
         K4sO4FN7ushj23/Ijzh321Vx06xpQSrwTGEuYi/kbEUjtbNqQyc9Q7XHgrPMtd1ZqOIQ
         31cvaoArSZTIYuahqXyG+QUzWHLNc4w5x9jG9egzWg71fXiOszdFC+F6h2ZUrpR4hHqQ
         1U3pG6aoA+mys/R6fZwJJR+Vk1mcZJYqYE7GoNceAFINGlRjffM2E1DKVQsXVjsoWyuv
         f4kQ==
MIME-Version: 1.0
X-Received: by 10.180.19.134 with SMTP id f6mr21640618wie.35.1430764483002;
 Mon, 04 May 2015 11:34:43 -0700 (PDT)
In-Reply-To: <55479C75.3070000@redhat.com>
References: <55479C75.3070000@redhat.com>
Message-ID: <CALwr1GnxttdqOssUd82R4P8wzEd-UhuWWVY3xpkqgt09UmgBuw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 May 2015 19:34:42 +0100
From: =?UTF-8?Q?P=C3=A1draic_Brady?= <padraic.brady@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] PHP and some == wonkiness
To: oss-security@lists.openwall.com

Hi Kurt,

On 4 May 2015 at 17:21, Kurt Seifried <kseifried@redhat.com> wrote:
> https://news.ycombinator.com/item?id=3D9484757 read the entire thread for
> an ongoing series of "what the heck?".
>
> Some examples include:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> This is well-known PHP-trick. Use =3D=3D=3D to right result.
>   php > var_dump(md5('240610708') =3D=3D md5('QNKCDZO'));
>   bool(true)
>   php > var_dump(md5('240610708'),   md5('QNKCDZO'));
>
>
>   string(32) "0e462097431906509019562988736854"
>   string(32) "0e830400451993494058024219903391"
>   php > var_dump(md5('240610708') =3D=3D=3D   md5('QNKCDZO'));
>
>
>   bool(false)
>   php > var_dump("0e462097431906509019562988736854" =3D=3D
> "0e830400451993494058024219903391");
>   bool(true)
>   php > var_dump("0e462097431906509019562988736854" =3D=3D=3D
> "0e830400451993494058024219903391");
>   bool(false)
>   php > var_dump(md5('240610708') =3D=3D=3D   md5('QNKCDZO'));
>
>
>   bool(false)
>   php > var_dump(md5('240610708') =3D=3D   md5('QNKCDZO'));
>
>   bool(true)
>   php > var_dump(md5('240610708') =3D=3D=3D md5('QNKCDZO'));
>   bool(false)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> I'm guessing there is more than a bit of code that uses =3D=3D to compare
> passwords/etc. Something to be aware of.
>
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
>

It all boils down to PHP loose typing/type juggling for =3D=3D and strict
type comparison for =3D=3D=3D. The first option will trigger a set of rules
capable of converting strings into floats or integers, based on
whether both strings are representative of a float (i.e. your
example), or where one of the values being compared is already an
integer/float. Unfortunately, it is indeed a common weakness to not
use strict comparisons in security related code. For example, Laravel
had a recent issue in comparing CSRF tokens where passing in a zero
always passed the check from this mistake, and more than a few
validation libraries use the in_array() function which uses loose
comparisons under the hood.

In terms of tokens/passwords, the recommended practice has turned to
using a fixed time comparison function. There are userland examples in
the major frameworks, but PHP 5.6 also added hash_equals():
http://php.net/manual/en/function.hash-equals.php

Basically, any sort of comparison using =3D=3D is one of the quick things
you can check PHP source for when reviewing for likely security issues
where at least one side can be an int/float.

Paddy

--
P=C3=A1draic Brady

http://blog.astrumfutura.com
http://www.survivethedeepend.com
