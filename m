X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2155" "Wednesday" "2" "September" "2015" "13:07:23" "+0000" "=?UTF-8?B?SnVhbiBCcm91bGzDs24=?=" "thebrowfc@gmail.com" "<CAAV+LXeF8wGKc_AgoBAZm=c9KyrHA-toTcLvb+YAEA8DKP0Afw@mail.gmail.com>" "85" "[oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree." nil nil nil "9" "2015090213:07:23" "[oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree." (number mark "U       thebrowfc@gm Sep  2   85/2155  " thread-indent "\"[oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree.\"\n") "<A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>" ("<A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25791 invoked by uid 550); 2 Sep 2015 13:10:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22474 invoked from network); 2 Sep 2015 13:07:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-type;
        bh=+Zxm/iwXzejletTt3TMRj89AGztGQ626RA/Rh1J5bUc=;
        b=c6bvMyIzcei7Exy7zUmrFHIg6ccrdZrbmTek6m2E8AlfKfmRL5pGTHoNKzxOg8AYfG
         fpgw9QBLBcCkbYZHCXtjTR97lQD1IJboZUIhy/d28A6eKmTzaY8Mdgmoo4tBXQrH9Ofm
         P2eUNKa0egiEr1ZK+3+9R3romyTMYgmWH8DysoqZ6Kbc1WEhRlYCIe1YzjoJnKbda9Ho
         qQLnzPpo7eo/KRfs432pajVoEIxKc40a8aNT4lcHWmmVP9BVHSxy+PenMs19N73I7pcc
         zeYq7zO6NOKZOwRqq19TLiLbSVozQNwaS831Rw8hq1XYp0ZgVAGpsHhPW+XzgYfUSfk9
         RGaA==
X-Received: by 10.107.14.203 with SMTP id 194mr23732212ioo.46.1441199252563;
 Wed, 02 Sep 2015 06:07:32 -0700 (PDT)
MIME-Version: 1.0
References: <A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>
In-Reply-To: <A8A4C292-C37B-425F-88C1-F7955DA039A9@gmail.com>
From: =?UTF-8?Q?Juan_Broull=C3=B3n?= <thebrowfc@gmail.com>
Date: Wed, 02 Sep 2015 13:07:23 +0000
Message-ID: <CAAV+LXeF8wGKc_AgoBAZm=c9KyrHA-toTcLvb+YAEA8DKP0Afw@mail.gmail.com>
To: Matthias Bussonnier <bussonniermatthias@gmail.com>, oss-security@lists.openwall.com
Cc: security@ipython.org, Kyle Kelley <rgbkrk@gmail.com>, 
	Jonathan Kamens <jkamens@quantopian.com>
Content-Type: multipart/alternative; boundary=001a11409e3e7ffc5c051ec35918
Subject: [oss-security] Re: CVE Request : CSRF in IPython/Jupyter notebook Tree.

--001a11409e3e7ffc5c051ec35918
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hey guys,

Thank you for reporting the issue, but it's a XSS, not a CSRF :)

Regards, Juan.
El El mi=C3=A9, 2 sept 2015 a las 15:00, Matthias Bussonnier <
bussonniermatthias@gmail.com> escribi=C3=B3:

>
> Email addresses of requester: security@ipython.org; rgbkrk@gmail.com;
> bussonniermatthias@gmail.com; thebrowfc@gmail.com; jkamens@quantopian.com
>
> Software name: IPython notebook / Jupyter notebook
>
> Type of vulnerability: CSRF
>
> Attack outcome: Possible remote execution
> Patches:
>   3.x: `3ab41641cf6fce3860c73d5cf4645aa12e1e5892` (
> https://github.com/ipython/ipython/commit/3ab41641cf6fce3860c73d5cf4645aa=
12e1e5892
> )
>   4.0.x: `dd9876381f0ef09873d8c5f6f2063269172331e3` (
> https://github.com/jupyter/notebook/commit/dd9876381f0ef09873d8c5f6f20632=
69172331e3
> )
>   4.x: `35f32dd2da804d108a3a3585b69ec3295b2677ed` (
> https://github.com/jupyter/notebook/commit/35f32dd2da804d108a3a3585b69ec3=
295b2677ed
> )
>
>
> Affected versions: 0.12 =E2=89=A4 version =E2=89=A4 4.0
>
> (Note, software change name between 3.x and 4.0)
>
> Summary: Local folder name was used in HTML templates without escaping,
> allowing CSRF in said pages by carefully crafting folder name and URL to
> access it.
>
>
> URI with issues:
>
> * GET /tree/**
>
> Mitigations:
>
> Start notebook server with the following flag:
>
> --NotebookApp.jinja_environment_options=3D'{"autoescape":True}'
>
> Or set the following configuration option:
>
> c.NotebookApp.jinja_environment_options =3D {"autoescape": True}
>
>
> Upgrade to IPython/Jupyter notebook 4.0.5, 4.1 or 3.2.2 once available.
> If using pip,
>
>     pip install --upgrade `ipython[notebook]<4.0`  # for 3.2.2
>     pip install --upgrade notebook # for 4.1
>
>
> For conda:
>
>     conda update conda
>     conda update ipython 'ipython-notebook<4.0' # for 3.2.2
>     conda update notebook # for 4.1 or 4.0.5
>
>
> Vulnerability was found by Juan Broull=C3=B3n, and reported by Jonathan K=
amens
> at Quantopian.
>
> Thanks !
> --
> Matthias
>
>

--001a11409e3e7ffc5c051ec35918--
