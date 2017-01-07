X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3173" "Saturday" "7" "January" "2017" "06:26:27" "-0600" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9H02w_B8XYr_zFxCdfLPD5mUG_Fbfd07GNAxgWwDyhpbA@mail.gmail.com>" "91" "[oss-security] Re: CVE Request: Plone Multiple Vulnerabilities" nil nil nil "1" "2017010712:26:27" "[oss-security] Re: CVE Request: Plone Multiple Vulnerabilities" (number mark "U       nathan.van.g Jan  7   91/3173  " thread-indent "\"[oss-security] Re: CVE Request: Plone Multiple Vulnerabilities\"\n") "<CAL8hw9EG0ktd-WybU-HhRHEsRho96pdhhiDwvCFYdXJAUrUdmg@mail.gmail.com>" ("<CAL8hw9EG0ktd-WybU-HhRHEsRho96pdhhiDwvCFYdXJAUrUdmg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22034 invoked by uid 550); 7 Jan 2017 13:14:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20446 invoked from network); 7 Jan 2017 12:26:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to;
        bh=kF8mCfAG8uC38rRM1GVjGayWmI6//kTOuqTyPOztRIA=;
        b=eHks2tSp3ZnvO6tB6PH6L5xZND9sbdT862TtGMN2vSJada4fYr+LBL+HHObrYtYSgF
         hRyvdOwOk8OE29eYMQ34ApAYIYUG3YGoQbcNjSa9U4uck6S9RUUgUsJTFrSBpnGlRnkn
         yvCvZbTADMGuGz/jk0ItAJNLjsHRBE81/2Cet9lvmw56R/KCrDXptMxdkXFW9f5yS8jR
         Yn2PHGFkAb/086+uubekXapncEVUodxsMa8rxv3/he+IdCG5wY9VSD+YepDulvW1tw5V
         dr2hIFR42XY6GML9S8anIHPQ7d889osUML5OxKTG/KyycRBqQ8YlEld2wpNuZWDBoyHN
         esgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to;
        bh=kF8mCfAG8uC38rRM1GVjGayWmI6//kTOuqTyPOztRIA=;
        b=LwZT8VswUveXTFE8hU2oH/n9GVJ1aWs/Ba+oSwazMe+0rra6DkAfIGD/A2tBRAReO8
         /yfKw6jHclt8qz+Mzdwb5jMuq+nd7Ih1tA97U68G4xkpuinOt6pK8WS0CzjI2Zj5E3/7
         irvaRF06zlmilSBsnMRI+OzjXKDxpRDvkY3zmJmI9QG+SWZYFLS6fDh1y6zmxPp3cb/9
         G7ZKuBYDLiMKmScKSgk1lC+5CtTS3XWhBg7CtzV2yzW3iS6+d9Zm01croxXUQO35Dlrs
         w2vJOT/L4gBeU7MEHJ5IIALrRUSt473iKavKZ/QDCFHturZK0ZB4hpOaD45AdkGDEn2z
         r/bg==
X-Gm-Message-State: AIkVDXLy5I/pp+kQcUlpQD95QbYbKH4oocC94Z6zJPiDXwk+JOwoU7hqQm4h/9FIvUwj6omLirAp6cBm6HZpPw==
X-Received: by 10.159.39.72 with SMTP id a66mr1763644uaa.150.1483791987873;
 Sat, 07 Jan 2017 04:26:27 -0800 (PST)
MIME-Version: 1.0
Sender: vangheem@gmail.com
In-Reply-To: <CAL8hw9EG0ktd-WybU-HhRHEsRho96pdhhiDwvCFYdXJAUrUdmg@mail.gmail.com>
References: <CAL8hw9EG0ktd-WybU-HhRHEsRho96pdhhiDwvCFYdXJAUrUdmg@mail.gmail.com>
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
Date: Sat, 7 Jan 2017 06:26:27 -0600
X-Google-Sender-Auth: x06blezFy-VpNIFarj45gS0baE0
Message-ID: <CAL8hw9H02w_B8XYr_zFxCdfLPD5mUG_Fbfd07GNAxgWwDyhpbA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=94eb2c122a025b9ed00545803e6d
Subject: [oss-security] Re: CVE Request: Plone Multiple Vulnerabilities

--94eb2c122a025b9ed00545803e6d
Content-Type: text/plain; charset=UTF-8

Well, okay.

Turns out CVEs were indeed already issued for these disclosures.

I was pointed to https://vuldb.com/?id.92694 and so was told to get CVEs
quickly.

https://vuldb.com/?id.92694 -- seems like the reporter also requested his
own CVEs under different groupings and now we have duplication
disclosures/cves with classification conflicts.

Not sure what to do about the duplicates but you can ignore this request.

On Sat, Jan 7, 2017 at 5:54 AM, Nathan Van Gheem <nathan.van.gheem@plone.org
> wrote:

> Dear oss-security List,
>
> Please provide CVEs for the following 6 issues:
>
> 1) Filesystem information leak
> A vulnerability that allows remote attackers to obtain information on
> files on the server
> Credit: Sebastian Perez
> Impact: By using relative paths and guessing locations on a server Plone
> is installed on, an attacker can read data from a target server that the
> process running plone has permission to read. The attacker needs
> administrator privileges on the Plone site to perform this attack.
> Reference: https://plone.org/security/hotfix/20160830/filesystem-
> information-leak
>
> 2) Non-Persistent XSS in Plone forms
> z3c.form will currently accept data from GET requests when the form is
> supposed to be POST. This allows a user to inject a potential XSS attack
> into a form. With certain widgets in Plone admin forms, the input is
> expected to be safe and can cause a reflexive XSS attack. Additionally,
> there is potential for an attack that will trick a user into saving a
> persistent XSS.
> Credit: Sebastian Perez
> Reference: https://plone.org/security/hotfix/20160830/non-
> persistent-xss-in-plone-forms
>
>
> 3) Open Redirection
> In multiple places, Plone blindly uses the referer header to redirect a
> user to the next page after a particular action. An attacker could utilize
> this to draw a user into a redirection attack.
> Credit: Sebastian Perez
> Reference: https://plone.org/security/hotfix/20160830/open-
> redirection-in-plone
>
>
> 4) Non-Persistent XSS
> Plone's URL checking infrastructure includes a method for checking if URLs
> valid and located in the Plone site. By passing javascript into this
> specially crafted url, XSS can be achieved.
> Credit: Sebastian Perez
> Reference: https://plone.org/security/hotfix/20160830/non-
> persistent-xss-in-plone-1
>
>
> 5) Non-Persistent XSS on user form
> Plone has unescaped user input in a page template that is open to XSS
> Credit: Sebastian Perez
> Reference: https://plone.org/security/hotfix/20160830/non-
> persistent-xss-in-plone
>
>
> 6) Non-Persistent XSS in Zope2
> In multiple places, Zope2's ZMI pages do not properly escape user input
> Credit: Sebastian Perez
> Reference: https://plone.org/security/hotfix/20160830/non-
> persistent-xss-in-zope2
>
>
>
> Versions Affected:
> 4.3.11 and any earlier 4.x version, 5.0.6 and any earlier 5.x version
>
> Code fixes:
> https://pypi.python.org/pypi/Products.PloneHotfix20160830
>
> Recommended action:
> Install the https://pypi.python.org/pypi/Products.PloneHotfix20160830
> package.
>

--94eb2c122a025b9ed00545803e6d--
