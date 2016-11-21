X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2133" "Monday" "21" "November" "2016" "12:26:02" "-0600" "Michael Babker" "michael.babker@gmail.com" "<CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>" "39" "Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence" "^Date:" nil nil "11" "2016112118:26:02" "[oss-security] WordPress (all versions): SPOF, RCE, and Negligence" (number mark "        michael.babk Nov 21   39/2133  " thread-indent "\"Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence\"\n") "<CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>" ("<CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>" "<CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28450 invoked by uid 550); 21 Nov 2016 18:44:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19863 invoked from network); 21 Nov 2016 18:26:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=8I2K8YeVkketPjOPJNe5uZ6eaAZOaJTpw4Tg2u7017o=;
        b=bG+Bql/d8vOu64UZ6R5kNWbxhDRDoIPvGwo9v2d2xHxXrWebohHywX7/1m+lqjX660
         riFQgNN39gHJc8twJoCghxy60CL3T69sUm9hObsZleUEkKtyb1JXVtDcvDjauHufRkyw
         Own4FHBgSy6zuaoHgUqoDDbTGx8sNt10v+Go4jO6u1HC+yl/1LW+RpJgPthqorVEzP7z
         8dbp7mm6lehWCm58ZZB17GJ3RsMkiCpWQTd2iJ4B+EhsqtgyZVrAs0osyjR++9rSef7x
         cXaI82nrQaIlHuzZi/vohaMJZck74nv699Rc7dklp4WfmYNN+qJroGOTrbbUkbMWMZuj
         aOBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=8I2K8YeVkketPjOPJNe5uZ6eaAZOaJTpw4Tg2u7017o=;
        b=WuH1egFATjA93H/EK+ymYUd+9gAR2yflZ38odLMKeAlR1h8uu6FuwHIM8Vfhay042Q
         vsDuq/EtNr8lvbcGrnkP0POXcsJS2Z17OYypn86+PT2MVHtwcKGb7LjDUvesSQfLQfqi
         P0kEYtyTaAaOn3MkipBPj8noPCnvWaKMweb8dkjE3FDOWyfBrn1hGoqNM1DZAL/WWqZu
         cXsAWfiqkG37bRofEJaWmAPVciOG2uhpYMtDLPSdOEmfv4Z5WN+jo1o5p436l68sy9lp
         8keTJshmEvnCAU82raFx5NKeFriWXPK9CUV/SIBRYzWiaMYUT5ALO+gaaqbdcR4T+pVg
         /KUg==
X-Gm-Message-State: AKaTC03C8JSXb46HYUXYs1zyAApnhtpwEQ1GgOAHoxq77Y6/9cWIY4SaX/5pFbvm+RsNmV1ulncSwSnU0ZMN3A==
X-Received: by 10.129.85.9 with SMTP id j9mr14573922ywb.283.1479752763151;
 Mon, 21 Nov 2016 10:26:03 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>
References: <CAKws9z3H+VFO6kO-bEPMtyomuyyumx69+hzB7UUAxpg2o6dT8A@mail.gmail.com>
 <CABMkiz5wp5gA=7vV6QAkV4HWUooun3-CcxjqOYqxTLLdBxwwVQ@mail.gmail.com>
Message-ID: <CANvqVdr4d8C_04Php5iP78eMfZOtat2a6LuCoqVXHojB1HE5yw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113f16d6cd9ec70541d3c9bc
Date: Mon, 21 Nov 2016 12:26:02 -0600
From: Michael Babker <michael.babker@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] WordPress (all versions): SPOF, RCE, and Negligence
To: oss-security@lists.openwall.com

--001a113f16d6cd9ec70541d3c9bc
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 21, 2016 at 11:32 AM, Ben Tasker <ben@bentasker.co.uk> wrote:

> There was a similar issue a while back where Joomla! decided to run a
> version check to ensure PHP version was >= 5.3.10. It broke a number of
> sites, and the most common fix seems to have been a core-hack to disable
> that check. The logic for inserting that check was reasonable, but lacked
> consideration of who the market actually is.


While I can somewhat understand why the Linux distributions choose the
model they use for their "long term support" packages, it honestly does a
disservice to those of us who now have to defensively code around it.  We
can no longer rely on a package's version to accurately represent the state
of the code base.

I was Joomla's release lead at the time this decision was made.  We did not
arbitrarily choose a PHP version number, arbitrarily locking out vendor
modified PHP builds distributed with the LTS distros, just because we
wanted to.  We first attempted to implement bcrypt password hashing using
feature detection, after hacking the polyfill library to lower its PHP
minimum from 5.3.7 (which blocked some of its checks) to be able to try and
support the PHP 5.3.3 build the distros have elected to stabilize on and
modify.  This effort failed catastrophically, and our project collectively
decided we could not revert support for bcrypt hashed passwords and could
not try to support this feature using feature detection mechanisms; it was
too unreliable and we elected therefore to lock on a version number which
we knew would satisfy all of our requirements natively.  We could have
locked to 5.3.7 but elected to bump to 5.3.10 due to the security issues
fixed between those releases and at that point Ubuntu's LTS was at that
version so it helped us to make a logical choice.

While I understand where you are coming from, to be quite frank, I don't
believe the PHP ecosystem and its major players can continue to cater to
these modified PHP builds as might have been expected in years past.

--001a113f16d6cd9ec70541d3c9bc--
