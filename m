X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1411" "Wednesday" "29" "July" "2015" "19:51:12" "+0000" "Jason Buberel" "jbuberel@google.com" "<CA+s3sfEOMOLWgkLGTRxdEQ1f8KzJ2-oSuFpebd4U_x2y9Dz_WQ@mail.gmail.com>" "42" "Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling" nil nil nil "7" "2015072919:51:12" "[oss-security] CVE Request - Go net/http library - HTTP smuggling" (number mark "        jbuberel@goo Jul 29   42/1411  " thread-indent "\"Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling\"\n") "<55B926A4.2020601@redhat.com>" ("<CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>" "<55B926A4.2020601@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32054 invoked by uid 550); 29 Jul 2015 19:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32032 invoked from network); 29 Jul 2015 19:51:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=Z1DJKDsT2TihQVlNFLnv9QWI0SC+28OafP07WW5hOvU=;
        b=Lrj60luKLyZJjFJUvHBdUazN+rTnX7nEUGJiFkLrtZ3QROKptvumxQJ97zJEWKw1e3
         CoQxHTIbN4x2NW5GKD8bZMWqjOJ0JBTjOWbPVNxzTd7hvZrKxBZa+lMaevbZDjm6zd3g
         nH9YeqBKLQ0hCbFMbg91lSL1B4oxwC/2npfmlAQMRA9849Rl8CoszFVL1uYYDzwfCZxk
         hvd2rwyPCJ/DdTpGsMPUdKnutY7gIr6BJ+hBFHCDFvyhqOiMV+1bOSNarX+UmA7VxkzI
         i5XIo1aF12eK2wo/TGGtA/hlfEaKtMrLOaaj7lvTpzT9YiFGE+RY+MKKG/bFGrFBmilW
         aqUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-type;
        bh=Z1DJKDsT2TihQVlNFLnv9QWI0SC+28OafP07WW5hOvU=;
        b=ly6jk2JcBospMJFMjTM0pL6kjDAost9K/t07LUd+I+FBxAr6NjpIBTKoxTUTJHZboZ
         Zu+1Z1y/C+EHFeCWJWoFl9XAO7Dz5wZR1R9+D498V6zqbC0wg+wabVFR8We7/VIspfxa
         93iFLdbqBCnhUbDZjIMmoAbCAskUugeVZgSVJXy5+71ZK7X7ycD/u6L5T4EphXgK+c12
         fe4Qkk/NpwQ2mjRG9zC4kjkrHref2r6DRHQwmIfEJgY7Yog4kziHHHH8mbosBMQDcT6y
         A10Nl/rRprt5IP8ArdYY3tdhkqoCENZTCM837RIIIK5p/GE2/8+1Jng9okdOgb+MIUT7
         8Z6A==
X-Gm-Message-State: ALoCoQnVbyqMuvhFHuMZolZbSrXty96duEPXyttVsV2fj9cE54RhBK/28kFodetHMVj+eBIES5pR
X-Received: by 10.180.83.101 with SMTP id p5mr20567710wiy.52.1438199484673;
 Wed, 29 Jul 2015 12:51:24 -0700 (PDT)
MIME-Version: 1.0
References: <CA+s3sfH-k=1RQtuEqST-2NB7XrEZZv1QYwxNdG6TuDz_A5ruVA@mail.gmail.com>
 <55B926A4.2020601@redhat.com>
In-Reply-To: <55B926A4.2020601@redhat.com>
Message-ID: <CA+s3sfEOMOLWgkLGTRxdEQ1f8KzJ2-oSuFpebd4U_x2y9Dz_WQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=f46d044280ee6694b1051c08e9c4
Cc: oss-security@lists.openwall.com
Date: Wed, 29 Jul 2015 19:51:12 +0000
From: Jason Buberel <jbuberel@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - Go net/http library - HTTP smuggling
To: Florian Weimer <fweimer@redhat.com>

--f46d044280ee6694b1051c08e9c4
Content-Type: text/plain; charset=UTF-8

Forian,

We do have a security@golang.org alias, and a proposal for a more formal
security review process <https://github.com/golang/go/issues/11502>, but I
agree that the process isn't clear enough currently.

In this particular case, the reporter sent a messages to go-dev@golang.org.
That was then forwarded to me for handling.

And I agree on the bundling. Is there another specific issue that you're
tracking? Feel free to contact me directly - jbuberel@google.com.

-jason

On Wed, Jul 29, 2015 at 12:16 PM Florian Weimer <fweimer@redhat.com> wrote:

> On 07/29/2015 05:15 PM, Jason Buberel wrote:
> > Hello OSS Security Community,
> >
> > The Go open source project has received notification of an HTTP request
> > smuggling vulnerability in the net/http library (
> > http://golang.org/pkg/net/http/). The vulnerability was identified in
> the
> > 1.4.2 release version (http://golang.org/dl) and in the 1.5 release
> branch.
>
> How does one report such things?
>
> Due to lack of published security contact information, I contacted the
> de-facto subsystem maintainer about the issue, but I have been ignored.
>
> (It would be nice to be able to bundle such security updates as far as
> possible, to avoid recompiling everything constantly.)
>
> --
> Florian Weimer / Red Hat Product Security
>

--f46d044280ee6694b1051c08e9c4--
