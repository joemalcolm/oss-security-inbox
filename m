X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1694" "Tuesday" "22" "September" "2015" "09:42:07" "+0200" "MinRK" "benjaminrk@gmail.com" "<CAHNn8BWL1iucS0LwVcdDn3aefk8d2h1OGT=UdkdK_jfx9na=OQ@mail.gmail.com>" "61" "[oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor" nil nil nil "9" "2015092207:42:07" "[oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor" (number mark "        benjaminrk@g Sep 22   61/1694  " thread-indent "\"[oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor\"\n") "<CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>" ("<CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26507 invoked by uid 550); 22 Sep 2015 07:42:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26483 invoked from network); 22 Sep 2015 07:42:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-type;
        bh=D5iaeu/eH753qjVfHHCengkNCljmIDIQfat1xX6jTZk=;
        b=vkt6o/AuI08hkRSl7i9wDOOG3lz2Pi53qPWsQOUi8AukQGnC0C/oWm59r5AqGxg7cR
         Kh+ANcnU9eeuZy6xiNQ+EsjJCyR2VqRsv67pwvMVXbtpTm7RRDQFIb/KYLHGTvLDG9mH
         PNN2EdqmBKwL2xDAAmIJSMpajsMn/d9d5IdKt5n/JTj6wwymIHyBJiZO1OBC/flFjuM2
         7e6hPjq8vaEXsm6PedZ4+K2PNX36dR38zldgxIz6dIlWG3Xo63dt0lhX4KCClmd0ovh3
         9a6m0fpUk65+QFnl5vHAdo+C47EEsHkACQOwESDd9N8WvpzinX2eXeNmCBKhFBDRyc9w
         nSYw==
X-Received: by 10.140.37.101 with SMTP id q92mr27200221qgq.3.1442907746736;
 Tue, 22 Sep 2015 00:42:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>
References: <CAHNn8BV_zT_eADA1DGDwQNG2EQQraW0nAe42z5ft+8P=5L5MZw@mail.gmail.com>
Message-ID: <CAHNn8BWL1iucS0LwVcdDn3aefk8d2h1OGT=UdkdK_jfx9na=OQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c11e6cb021870520512331
Date: Tue, 22 Sep 2015 09:42:07 +0200
From: MinRK <benjaminrk@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: Maliciously crafted text files in IPython/Jupyter editor
To: oss-security@lists.openwall.com

--001a11c11e6cb021870520512331
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is there any more information needed to get a CVE assignment on this?

-MinRK

On Wed, Sep 16, 2015 at 3:02 PM, MinRK <benjaminrk@gmail.com> wrote:

> Email address of requester: security@ipython.org, benjaminrk@gmail.com,
> rgbkrk@gmail.com, jkamens@quantopian.com, ssanderson@quantopian.com
>
> Software name: IPython notebook / Jupyter notebook
> Type of vulnerability: Maliciously forged file
> Attack outcome: Possible remote execution
>
> Vulnerability: A maliciously forged file opened for editing can execute
> javascript, specifically by being redirected to /files/ due to a failure =
to
> treat the file as plain text.
>
> Affected versions:
>
> - IPython 3.0 =E2=89=A4 version =E2=89=A4 3.2.1
> - notebook 4.0 =E2=89=A4 4.0.4
>
> URI with issues:
>
> - GET /edit/**
>
> Patches:
>
> - IPython 3.x: 0a8096adf165e2465550bd5893d7e352544e5967 (
> https://github.com/ipython/ipython/commit/0a8096adf165e2465550bd5893d7e35=
2544e5967
> )
> - Jupyter 4.0.x: 9e63dd89b603dfbe3a7e774d8a962ee0fa30c0b5 (
> https://github.com/jupyter/notebook/commit/9e63dd89b603dfbe3a7e774d8a962e=
e0fa30c0b5
> )
>
> Mitigations:
>
> Upgrade to IPython/Jupyter notebook 4.0.5, 4.1 or 3.2.2 once available.
> If using pip,
>
>     pip install --upgrade "ipython[notebook]<4.0"  # for 3.2.2
>     pip install --upgrade notebook # for 4.1 or 4.0.5
>
> For conda:
>
>     conda update conda
>     conda update ipython "ipython-notebook<4.0" # for 3.2.2
>     conda update notebook # for 4.1 or 4.0.5
>
> Vulnerability reported by Jonathan Kamens at Quantopian
>
>

--001a11c11e6cb021870520512331--
