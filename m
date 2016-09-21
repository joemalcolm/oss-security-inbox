X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4510" "Wednesday" "21" "September" "2016" "12:03:03" "-0400" "Jamie Whitacre" "whitacre@berkeley.edu" "<ABD7A6F5-D9A2-491C-9CFC-00BD7E6D658C@berkeley.edu>" "131" "[oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript" nil nil nil "9" "2016092116:03:03" "[oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript" (number mark "U       whitacre@ber Sep 21  131/4510  " thread-indent "\"[oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript\"\n") "<CAK=Phk4fLPV9eifFryXwAPwm3jKxrj25m2A4EDztFxYE-uhjxw@mail.gmail.com>" ("<CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com>" "<CAK=Phk4fLPV9eifFryXwAPwm3jKxrj25m2A4EDztFxYE-uhjxw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29878 invoked by uid 550); 21 Sep 2016 16:53:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22437 invoked from network); 21 Sep 2016 16:03:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=berkeley-edu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
         :to;
        bh=PmDninqeRFOOntDbaBtPJLx7xg0Epsc9tN37lKmfHDM=;
        b=bkqsUw/er7KVhrzWvXE8e0UaNaYd/RaHgjLG0CRc9H3yfCp25VpU+5/QP0JqhPl2VG
         kkgij/vH2idalOamwm5BJon5tHxdHnbK0uGiDuNnV7t9yBNxS2BCQ07Yx6hSJo2OCfcS
         ZNc72tsmMoKHMvsj9XUxy/jyiFDaCTgxxxa0R8p5BCTZYQZeQUOoc3zhiuweaU3kgaTI
         zQrwKmZdzuTJoGzslew+AdhWmUiX+fkT7L7i6jsiswD3AUeaMyVnpKv/PxTpqV1FDcoP
         mIede4KlQtJeZsCKlYg+l6mGCptOc6Wm5E9GFwnCz73b0Sn3hyenrrMkk6yWPB80HpZn
         T8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :message-id:references:to;
        bh=PmDninqeRFOOntDbaBtPJLx7xg0Epsc9tN37lKmfHDM=;
        b=UJ5A2ASMmeu9wVf3fggUiv/OohgGAhUvfB8JCX3WRJIYFCGZY21m3weG6ZX7eAuG14
         Vn3QMhk0Je7ccYSP2tEqeiDwurrrNH+HDGMlotG2SjR3QzB2FZJBfwmg4MeOxOu+nSdw
         xCkbxjX7UVaJTbCv+Np9PSCen57fZD/lGc/nghmDJ1WPCcrLpYKaz2BlCsAAV/nDc3LV
         kl/AiB5A6M/soh4U2Xx16MTgCzjBWMh8AtS21PpkmST6ySu1VpmX9R94RNUgwuCBqT+a
         HNqqIY3vQP65ZeTFbqARrbO49EnO0U0oKMmj0UVroNcbIAW9FksEjAw0/X1MLpwxSQa8
         Flmw==
X-Gm-Message-State: AE9vXwP87q2HYSeCeZhhD9SJ0z/HEUTvH2h75Z5Qy3N8udcpY3tl4E7cG3fRo0PWIYKysqsR
X-Received: by 10.55.105.130 with SMTP id e124mr41717146qkc.183.1474473785048;
        Wed, 21 Sep 2016 09:03:05 -0700 (PDT)
Content-Type: multipart/alternative; boundary="Apple-Mail=_DB42564D-5201-44D4-80CB-57AB9D9CDD8E"
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jamie Whitacre <whitacre@berkeley.edu>
In-Reply-To: <CAK=Phk4fLPV9eifFryXwAPwm3jKxrj25m2A4EDztFxYE-uhjxw@mail.gmail.com>
Date: Wed, 21 Sep 2016 12:03:03 -0400
Cc: oss-security@lists.openwall.com,
 Fernando Perez <fperez@lbl.gov>,
 Matthias Bussonnier <mbussonnier@berkeley.edu>
Message-Id: <ABD7A6F5-D9A2-491C-9CFC-00BD7E6D658C@berkeley.edu>
References: <CAK=Phk5nKihccv7WS8Wi8x7AbSDU4Osk2-Z=VF-avbCGqQ6TGA@mail.gmail.com> <CAK=Phk4fLPV9eifFryXwAPwm3jKxrj25m2A4EDztFxYE-uhjxw@mail.gmail.com>
To: Sylvain Corlay <sylvain.corlay@gmail.com>
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] Re: CVE Request: ipywidgets executes untrusted JavaScript

--Apple-Mail=_DB42564D-5201-44D4-80CB-57AB9D9CDD8E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Folks,=20
Is this done?

Thanks,=20
Jamie

> On Aug 11, 2016, at 9:08 AM, Sylvain Corlay <sylvain.corlay@gmail.com> wr=
ote:
>=20
> Hello everyone,=20
>=20
> I am following up on this CVE request. Did we miss something in how the r=
equest is formulated?
>=20
> Thanks,
>=20
> Sylvain
>=20
> On Fri, Jul 1, 2016 at 6:12 PM, Sylvain Corlay <sylvain.corlay@gmail.com =
<mailto:sylvain.corlay@gmail.com>> wrote:
> Description
>=20
> ipywidgets version 5.1.5 (and the companion package widgetsnbextension 1.=
2.3) fixes a security vulnerability which affects the usage of ipywidgets i=
n conjunction with the Jupyter Notebook. (The GitHub repository for the pro=
ject is https://github.com/ipython/ipywidgets <https://github.com/ipython/i=
pywidgets>)
>=20
> Affected versions
>=20
> The affected versions of ipywidgets are:
>=20
> ipywidgets version 5.0.0 =E2=89=A4 V =E2=89=A4 5.1.4 (and widgetsnbextens=
ion < 1.2.3), =E2=80=A6
>=20
> Only users who installed ipywidgets using pip or from source on the GitHu=
b repository are affected.
>=20
> Anaconda users are unaffected because the vulnerable version of ipywidget=
 has never been released to the default conda channel.
>=20
> Resolution
>=20
> We recently released ipywidgets version 5.1.5 (widgetsnbextension version=
 1.2.3). You can check whether your system is affected by running the follo=
wing command:
>=20
>    >>> from distutils.version import LooseVersion as V
>    >>> import ipywidgets
>    >>> if V('5.0.0') <=3D V(ipywidgets.__version__) < V('5.1.5'):
>    >>>     print("Upgrade ipywidgets to 5.1.5")
>=20
> If your system is vulnerable, you will see the following output:
>=20
>     Upgrade ipywidgets to 5.1.5
>=20
> If your system is vulnerable please upgrade to ipywidgets version 5.1.5. =
Use the following command to install:
>=20
>    $ pip install "ipywidgets>=3D5.1.5"
>=20
> or
>=20
>    $ conda install "ipywidgets>=3D5.1.5"
>=20
> Technical details
>=20
> The vulnerability was discovered following an investigation of a potentia=
l vulnerability reported by Brian Granger to the ipython-security mailing l=
ist (security@ipython.org <mailto:security@ipython.org>) on May 5.
>=20
> The reason for such behavior was determined on May 5 by Matthias Bussonni=
er.
>=20
> A fix was proposed written and reviewed, then [merged](https://github.com=
/ipython/ipywidgets/pull/591 <https://github.com/ipython/ipywidgets/pull/59=
1>) into the development branch on May 20, and a non vulnerable version rel=
eased on May 25.
>=20
> A widget snapshotting feature introduced in ipywidgets 5.0.0 (https://git=
hub.com/ipython/ipywidgets/pull/314/ <https://github.com/ipython/ipywidgets=
/pull/314/>) allowed untrusted javascript code to execute in an untrusted n=
otebook on loading and saving of a notebook.  A well crafted notebook could=
 execute arbitrary code with the rights of the current user in the context =
of the page, the notebook server, and available kernels.
>=20
> We recommend immediate upgrade of the ipywidgets package.
>=20
> There is no simple configuration option that could mitigate the system fo=
r vulnerability. The user must upgrade to ipywidget version 5.1.5 or downgr=
ade to 4.x.
>=20
> Future Plan
>=20
> The security issue resulted from the seemingly harmless combination of ca=
lls:
>=20
>     json =3D cell.get_json()
>     json =3D update_json(json)
>     cell.clear_output()
>     cell.from_json()
>=20
> The clear_output()  method has as a consequence to mark the cell as trust=
ed (as it has no output that can potentially execute javascript). This is f=
ollowed by the next call which can trigger JavaScript execution in the page=
 context.
>=20
> We plan on improving the notebook API so that clear_output() does not cha=
nge the trusted status of a cell (or a notebook), to prevent mistakes like =
this from having security consequences. This will lead to the slight behavi=
or change that an empty cell with no output can be untrusted.
>=20
> We learned that we are not completely ready for fast release of security =
fixes. The time from vulnerability discovery to available fix, release, and=
 announcement can and should be shorter.
>=20
> We encourage users who find possible security issues to notify security@i=
python.org <mailto:security@ipython.org>.
>=20
> Thanks!
>=20
> The Jupyter team
>=20


--Apple-Mail=_DB42564D-5201-44D4-80CB-57AB9D9CDD8E--
