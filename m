X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3988" "Thursday" "11" "August" "2016" "09:08:05" "-0400" "Sylvain Corlay" "sylvain.corlay@gmail.com" "<CAK=Phk4fLPV9eifFryXwAPwm3jKxrj25m2A4EDztFxYE-uhjxw@mail.gmail.com>" "122" "[oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript" nil nil nil "8" "2016081113:08:05" "[oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript" (number mark "U       sylvain.corl Aug 11  122/3988  " thread-indent "\"[oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript\"\n") "<CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com>" ("<CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20119 invoked by uid 550); 11 Aug 2016 13:08:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20098 invoked from network); 11 Aug 2016 13:08:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=WyeOHKq0a+vdLlzFYKzHEi3q2449t0yTu/irdNJKMKE=;
        b=SLiK6F8m07wXS29obhuP4hc3J8tV/Zww0cuZszPnJS4iuYPhb2BjcJQiMdpUe1iFEh
         FFyDeM20FYUwEpsgQu+xq5wK4UDhzr4hACSlV68Iiv34GMwbaFQ+ULKnjQq6xxbbAOdP
         SfymTZV6zGKfdiY8sru1gz0hcedmod0mbsSEC7pPqYvlnYLl8fsxt+CrDlyMLlk5/YWY
         IxtqHvVgsytTEUlKubyJEXGAdtUMwbglPgWTlrcaimMOAEClYh9vRfAduiIAWDmNonnD
         pgD7GFmWwaBHS4XJsXvR/rjGcuUPeCwnarQiaKv2H8YcJQMOEcGi7FQWKgYmkg0Geui2
         mwLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=WyeOHKq0a+vdLlzFYKzHEi3q2449t0yTu/irdNJKMKE=;
        b=CHrIZzxf1G2xp7EDQHrBuxlBF20kJzq2H2g82Mh99YH/dDLJH3hkVZ5nkHsBPd/RcV
         v6v20wjb+Odk+Bof2bMj9Dli4v37SR3N+yXfyM8m6QI4Dy/mWTnIbPMSK02rNl3yndLI
         fw+9geBf2kcsnV4L0anXhP+Wh22pbqkJj/JRkg1ou9celPjC7mTo9vuzDAAmm9/jPa2/
         Phf4Gsdy8MscZb7/MAoojtunlA5MiyLN3X4bP7B/VkeFXcc8PX4/cjd0GF+TOAjsFJxV
         R83Av18AafE9uQF/SmRn2GWAYS2fcAtHLoeO8bRU7llJcYtpW0r9xgdzcrkgnIKWT6Bp
         e64w==
X-Gm-Message-State: AEkoouvRzdUclIPQrcrW05Gq3pP8F0uKAskSJf/TyLKr5hcfr7BYRvSVLq17YvZoES/BR1ZVsBDMaDq5fKpMGg==
X-Received: by 10.25.17.228 with SMTP id 97mr1607592lfr.154.1470920886226;
 Thu, 11 Aug 2016 06:08:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com>
References: <CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com>
From: Sylvain Corlay <sylvain.corlay@gmail.com>
Date: Thu, 11 Aug 2016 09:08:05 -0400
Message-ID: <CAK=Phk4fLPV9eifFryXwAPwm3jKxrj25m2A4EDztFxYE-uhjxw@mail.gmail.com>
To: oss-security@lists.openwall.com, Fernando Perez <fperez@lbl.gov>, 
	Matthias Bussonnier <mbussonnier@berkeley.edu>, Jamie Whitacre <whitacre@berkeley.edu>
Content-Type: multipart/alternative; boundary=001a113f9cf8ea97cd0539cb74ca
Subject: [oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript

--001a113f9cf8ea97cd0539cb74ca
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am following up on this CVE request. Did we miss something in how the
request is formulated?

Thanks,

Sylvain

On Fri, Jul 1, 2016 at 6:12 PM, Sylvain Corlay <sylvain.corlay@gmail.com>
wrote:

> *Description*
>
> ipywidgets version 5.1.5 (and the companion package widgetsnbextension
> 1.2.3) fixes a security vulnerability which affects the usage of ipywidge=
ts
> in conjunction with the Jupyter Notebook. (The GitHub repository for the
> project is https://github.com/ipython/ipywidgets)
>
> *Affected versions*
>
> The affected versions of ipywidgets are:
>
> ipywidgets version 5.0.0 =E2=89=A4 V =E2=89=A4 5.1.4 (and widgetsnbextens=
ion < 1.2.3), =E2=80=A6
>
> Only users who installed ipywidgets using pip or from source on the GitHub
> repository are affected.
>
> Anaconda users are unaffected because the vulnerable version of ipywidget
> has never been released to the default conda channel.
>
> *Resolution*
>
> We recently released ipywidgets version 5.1.5 (widgetsnbextension version
> 1.2.3). You can check whether your system is affected by running the
> following command:
>
>    >>> from distutils.version import LooseVersion as V
>    >>> import ipywidgets
>    >>> if V('5.0.0') <=3D V(ipywidgets.__version__) < V('5.1.5'):
>    >>>     print("Upgrade ipywidgets to 5.1.5")
>
> If your system is vulnerable, you will see the following output:
>
>     Upgrade ipywidgets to 5.1.5
>
> If your system is vulnerable please upgrade to ipywidgets version 5.1.5.
> Use the following command to install:
>
>    $ pip install "ipywidgets>=3D5.1.5"
>
> or
>
>    $ conda install "ipywidgets>=3D5.1.5"
>
> *Technical details*
>
> The vulnerability was discovered following an investigation of a potential
> vulnerability reported by Brian Granger to the ipython-security mailing
> list (security@ipython.org) on May 5.
>
> The reason for such behavior was determined on May 5 by Matthias
> Bussonnier.
>
> A fix was proposed written and reviewed, then [merged](https://github.com/
> ipython/ipywidgets/pull/591) into the development branch on May 20, and a
> non vulnerable version released on May 25.
>
> A widget snapshotting feature introduced in ipywidgets 5.0.0 (
> https://github.com/ipython/ipywidgets/pull/314/) allowed untrusted
> javascript code to execute in an untrusted notebook on loading and saving
> of a notebook.  A well crafted notebook could execute arbitrary code with
> the rights of the current user in the context of the page, the notebook
> server, and available kernels.
>
> We recommend immediate upgrade of the ipywidgets package.
>
> There is no simple configuration option that could mitigate the system for
> vulnerability. The user must upgrade to ipywidget version 5.1.5 or
> downgrade to 4.x.
>
> *Future Plan*
>
> The security issue resulted from the seemingly harmless combination of
> calls:
>
>     json =3D cell.get_json()
>     json =3D update_json(json)
>     cell.clear_output()
>     cell.from_json()
>
> The clear_output()  method has as a consequence to mark the cell as
> trusted (as it has no output that can potentially execute javascript). Th=
is
> is followed by the next call which can trigger JavaScript execution in the
> page context.
>
> We plan on improving the notebook API so that clear_output() does not
> change the trusted status of a cell (or a notebook), to prevent mistakes
> like this from having security consequences. This will lead to the slight
> behavior change that an empty cell with no output can be untrusted.
>
> We learned that we are not completely ready for fast release of security
> fixes. The time from vulnerability discovery to available fix, release, a=
nd
> announcement can and should be shorter.
>
> We encourage users who find possible security issues to notify
> security@ipython.org.
>
> Thanks!
>
> The Jupyter team
>

--001a113f9cf8ea97cd0539cb74ca--
