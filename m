X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4103" "Monday" "5" "September" "2016" "21:35:12" "+0200" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9Go4v4Qah_Vxg0-C03C64FczjZ9b6qWYhd6802_LuYBjw@mail.gmail.com>" "117" "[oss-security] Re: CVE request: Plone multiple vulnerabilities" nil nil nil "9" "2016090519:35:12" "[oss-security] Re: CVE request: Plone multiple vulnerabilities" (number mark "U       nathan.van.g Sep  5  117/4103  " thread-indent "\"[oss-security] Re: CVE request: Plone multiple vulnerabilities\"\n") "<CAL8hw9Hx1HH2DuD8RL1fMAK3SnXsnRSwkF-rb_26z2_Soq+PCg@mail.gmail.com>" ("<CAL8hw9Hx1HH2DuD8RL1fMAK3SnXsnRSwkF-rb_26z2_Soq+PCg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28372 invoked by uid 550); 5 Sep 2016 20:26:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7377 invoked from network); 5 Sep 2016 19:35:24 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=Nvj1r4roF2ORK8BYPtiQLEhkqv8RjpeGl8YyGTpXh3U=;
        b=ie6fvznw/sCMEQlIW1qXRbFpQiuGVqM8pqfu5Ube0Q1t+9uil5F4wa7LyMyaQZa9lh
         seEccn73cUWzaKTA8mfGyUTC65dIn1JumoOHkFLag8B13d/yOVqsKJWVVho3S4zJlG6n
         ee3dGOkDpobDAKTwrnsrinYzua8VdsfMFNBKyjQRTJ7Dk36btnJ21u/6B5HHYFvRzLsL
         xagWqP4t+kR6FY5OHvYwkG4j3fqrLvTmQtqy7yAY18z18kbTVMla3uhZLhDI7Sd0TiXW
         psZM+cgpFoLY7Oye3APQoiM/8WiO5vXx6UqzwH3uSGnJvHhD2okDYWBs24zDgfvPK3Me
         miOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=Nvj1r4roF2ORK8BYPtiQLEhkqv8RjpeGl8YyGTpXh3U=;
        b=TsM6OuvtPP2xe7eSCRCl3H8KnOP2FB8rNfYO8JFFEKUYS1BppONMZf40miSZilmzPN
         ABH2E5SchDk6ZtEmKnV78bI+LnnapzBoFQgIvJmEigR5yERWX0tjxa1inYkmclJiuJOz
         zOxbWaVIsElln7M8mhgxNmdagdgztWCO+CfxjcQ8iAygCfFqdOQXCbcrlwCZdbEeeBcr
         pU3GPN9jEJoVmPMKCLNAYhyMxnNnS75N9ahE1svCOH+4DxbVn8BSkvK6umNrb2hBuUuV
         z8klzD+GcuPpo3txnWj0zR/viUeMqjjXYTy1w0zwkXct3Yei3mDlM2eQwoZasXxrL9Xv
         AUUw==
X-Gm-Message-State: AE9vXwPm+GVD/dJm8/N16ZCc3FJaxy5Q0m8ZyTxN4K2nPdI0QGxwlnXQQVyLCx+gYsnmQKOCNzOrDqnCSeRaxg==
X-Received: by 10.200.43.170 with SMTP id m39mr6350293qtm.73.1473104112728;
 Mon, 05 Sep 2016 12:35:12 -0700 (PDT)
MIME-Version: 1.0
Sender: vangheem@gmail.com
In-Reply-To: <CAL8hw9Hx1HH2DuD8RL1fMAK3SnXsnRSwkF-rb_26z2_Soq+PCg@mail.gmail.com>
References: <CAL8hw9Hx1HH2DuD8RL1fMAK3SnXsnRSwkF-rb_26z2_Soq+PCg@mail.gmail.com>
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
Date: Mon, 5 Sep 2016 21:35:12 +0200
X-Google-Sender-Auth: slnp5RJ8bFFAclUnFH1phpnZrkE
Message-ID: <CAL8hw9Go4v4Qah_Vxg0-C03C64FczjZ9b6qWYhd6802_LuYBjw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1149c7a25b6165053bc7c712
Subject: [oss-security] Re: CVE request: Plone multiple vulnerabilities

--001a1149c7a25b6165053bc7c712
Content-Type: text/plain; charset=UTF-8

Hi,

Re-submitting again because I forgot one of the vulnerabilities.

Multiple vulnerabilities were recently patched.


1. *filesystem information leak*: https://plone.org/security/
hotfix/20160830/filesystem-information-leak

Managers had the ability to find read files from the file system that the
system user running the plone process had access to

2. *Non-Persistent XSS in Plone forms*: https://plone.org/security/
hotfix/20160830/non-persistent-xss-in-plone-forms

z3c.form will currently accept data from GET requests when the form is
supposed to be POST. This allows a user to inject a potential XSS attack
into a form. With certain widgets in Plone admin forms, the input is
expected to be safe and can cause a reflexive XSS attack. Additionally,
there is potential for an attack that will trick a user into saving a
persistent XSS.

3. *open redirection*:  https://plone.org/security/hotfix/20160830/open-
redirection-in-plone

In multiple places, Plone blindly uses the referer header to redirect a
user to the next page after a particular action. An attacker could utilize
this to draw a user into a redirection attack.

4. *Non-Persistent XSS in Plone*: https://plone.org/security/
hotfix/20160830/non-persistent-xss-in-plone-1

Plone's URL checking infrastructure includes a method for checking if URLs
valid and located in the Plone site. By passing javascript into this
specially crafted url, XSS can be achieved.

5. *Non-persistent XSS in Plone*:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-plone

Plone has unescaped user input in a page template that is open to XSS.

5. *Non-Persistent XSS in Plone Zope Management(ZMI)*:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-zope2

In multiple places, Zope2's ZMI pages do not properly escape user input


Credits to all these go to Sebastian Perez

All of these vulnerabilities have been patched with the hotfix release
package(https://plone.org/security/hotfix/20160830) and are being
incorporated upstream.


Thanks,
Nathan

On Mon, Sep 5, 2016 at 6:42 PM, Nathan Van Gheem <nathan.van.gheem@plone.org
> wrote:

> Hi,
>
> Multiple vulnerabilities were recently patched.
>
>
> 1. *filesystem information leak*: https://plone.org/security/
> hotfix/20160830/filesystem-information-leak
>
> Managers had the ability to find read files from the file system that the
> system user running the plone process had access to
>
> 2. *Non-Persistent XSS in Plone forms*: https://plone.org/security/
> hotfix/20160830/non-persistent-xss-in-plone-forms
>
> z3c.form will currently accept data from GET requests when the form is
> supposed to be POST. This allows a user to inject a potential XSS attack
> into a form. With certain widgets in Plone admin forms, the input is
> expected to be safe and can cause a reflexive XSS attack. Additionally,
> there is potential for an attack that will trick a user into saving a
> persistent XSS.
>
> 3. *open redirection*:  https://plone.org/security/hotfix/20160830/open-
> redirection-in-plone
>
> In multiple places, Plone blindly uses the referer header to redirect a
> user to the next page after a particular action. An attacker could utilize
> this to draw a user into a redirection attack.
>
> 4. *Non-Persistent XSS in Plone*: https://plone.org/security/
> hotfix/20160830/non-persistent-xss-in-plone-1
>
> Plone's URL checking infrastructure includes a method for checking if URLs
> valid and located in the Plone site. By passing javascript into this
> specially crafted url, XSS can be achieved.
>
> 5. *Non-Persistent XSS in Plone Zope Management(ZMI)*:
> https://plone.org/security/hotfix/20160830/non-persistent-xss-in-zope2
>
> In multiple places, Zope2's ZMI pages do not properly escape user input
>
>
> Credits to all these go to Sebastian Perez
>
> All of these vulnerabilities have been patched with the hotfix release
> package(https://plone.org/security/hotfix/20160830) and are being
> incorporated upstream.
>
>
> Thanks,
> Nathan
>

--001a1149c7a25b6165053bc7c712--
