X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1005" "Wednesday" "4" "April" "2018" "17:55:07" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1HYwBfpij97h9a=OhM9_SqncP7HjS_q9BPYv7yH-SQww@mail.gmail.com>" "37" "Re: [oss-security] Re: Linux Kernel Defence Map" "^Cc:" nil nil "4" "2018040423:55:07" "[oss-security] Re: Linux Kernel Defence Map" (number mark "        kseifried@re Apr  4   37/1005  " thread-indent "\"Re: [oss-security] Re: Linux Kernel Defence Map\"\n") "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>" ("<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6130 invoked by uid 550); 4 Apr 2018 23:55:21 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6051 invoked from network); 4 Apr 2018 23:55:20 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=jkTimO32cVp8kVVQlFSqt7TkZ1veaDbf4XA4MOCWMCw=;
        b=D9Kc1gE0dOMowSLKWserJARniXL7WP4oIPem+Jvv9x3Xd6nUxR21Njqu3Dg9Em3z7z
         7Jb9H0cjLI0Ct4wGxfDl7ZS0qqNiPsaB+RmXxUn2zxvBQbrWheazdS5nuEC3jugt2i/J
         z+x0P9Hdost84NzrIlCDzhIj+YEP1slc7iWBo+MYNDUmm7Lb+j0alHbtXasw02m35sqB
         cWnjZ7W/qALLwXKW5iocFX+yWfx9nYJLRotoMNw9D/vYW7ffMeb6Fq3BqTTh3gZ7o+N7
         6TxHuodfSbJYUTkVKTv9NEn5XdcIdevyoZmmdT2/xjFlFPw2XeN/eYXDpzPVS7o6fJxd
         ihtQ==
X-Gm-Message-State: ALQs6tBVmbXmXnZxGGxu60cf+sJMwebQbIp/qXjZplLENKE12LKxWbgW
	vWg/FWg1CMXBqD+kenUMARxP9d+8vD7tAPHH9diZclPk
X-Google-Smtp-Source: AIpwx49z9eLsEIZx+AfSQ2K5FfMCW6ng3GlKdM936eQn7rBgRWUL+zpfbVP5sTa6gLw3PEks6AxWhGd+G+oNsS9c2b8=
X-Received: by 2002:aca:d782:: with SMTP id o124-v6mr1037186oig.343.1522886108632;
 Wed, 04 Apr 2018 16:55:08 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
References: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com> <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
Message-ID: <CANO=Ty1HYwBfpij97h9a=OhM9_SqncP7HjS_q9BPYv7yH-SQww@mail.gmail.com>
Content-Type: multipart/alternative; boundary="00000000000089f25805690e8d09"
Cc: Alexander Popov <alex.popov@linux.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Brad Spengler <spender@grsecurity.net>, 
	PaX Team <pageexec@freemail.hu>
Date: Wed, 4 Apr 2018 17:55:07 -0600
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Linux Kernel Defence Map
To: oss-security <oss-security@lists.openwall.com>

--00000000000089f25805690e8d09
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 4, 2018 at 4:17 PM, Kees Cook <keescook@chromium.org> wrote:

>
>
> KPTI defends against info leaks and "finding kernel objects" too, in a
> way. Maybe just add a whole "side channels" bubble?
>
> (I think "info leaks" and "finding kernel objects" may need some kind
> of clarifying language for how they're different)
>

Please use a CWE identifier if one exists (https://cwe.mitre.org/), if one
doesn't exist perhaps we should have one (email me and I'm happy to help
get that ball rolling). Having a CWE not only helps categorize things
correctly but gives us something to point developers at for resources
around flaws and how they can be avoided/dealt with/etc.


> -Kees
>
> --
> Kees Cook
> Pixel Security
>



-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--00000000000089f25805690e8d09--
