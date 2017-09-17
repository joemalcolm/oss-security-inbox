X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2352" "Sunday" "17" "September" "2017" "14:55:12" "+0300" "Alexander Batischev" "eual.jp@gmail.com" "<20170917115512.GA11577@curry>" "59" "Re: [oss-security] Podbeuter podcast fetcher: remote code execution" "^Cc:" nil nil "9" "2017091711:55:12" "[oss-security] Podbeuter podcast fetcher: remote code execution" (number mark "        eual.jp@gmai Sep 17   59/2352  " thread-indent "\"Re: [oss-security] Podbeuter podcast fetcher: remote code execution\"\n") "<20170916190543.GA6340@openwall.com>" ("<20170916180518.GB28963@curry>" "<20170916190543.GA6340@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28492 invoked by uid 550); 17 Sep 2017 13:06:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18144 invoked from network); 17 Sep 2017 11:55:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cDBlYzRaNrs8QqdM3HPG+QzkkqFRAOB3sZev6RMI3x4=;
        b=hDB6WTyvVtvExpRphdIQe1bLkvjeLkQwaZ9ViUxPqLq4ZLPTDqgXS4LhrRmusjDa7F
         XTJokP6c3Y8UWQTR5ITehXa9RbKhIDCwzPg4vRVq27KnKY1A0700ukFizTPEaH9W+k1r
         WD/op2c6myx/OTGevjTmXes93x9jl04EJ/AZk8uuTsnwrLw+z6dSYZ0qMQlYMu+QjKkB
         AzwZMOV4wI8CLwu8UY4q2vpkSB8rI/ztgXIdOtsXEDkUeLLvBHSsNMapcPEv40JM5Ita
         EZjingiZQGEdT+bsNtB+wRH5K/bPd0+eEbarR8oFCOQAuLIaOld2pmx7F/kh67GyiNzZ
         WVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cDBlYzRaNrs8QqdM3HPG+QzkkqFRAOB3sZev6RMI3x4=;
        b=Zc9lEQfUDqCUHJ0aBI7ZKaAxKpLSdIYYQeg/2dYUvDOSA3Hvdp0Tp72WB9nF7IClh0
         lQodNhOkmAW3nUqgvIjjcSjxg7/S1jgpBATmd1HZy5cntbRvP5mXNOcML3IhmsOciPty
         jWu5H9MpzFya1W4N42S9tad4LtTM0uhBetNM0fSqzssQj4T79Q4iBTKk0ZwNlSOL9/cZ
         bZeSuIhfFP+NiGoEg4nPxFknYXta5oyhhp3/c9/9wEY6EiSyS9nwiCfQrWqVt0eRsX3X
         U0QBy/U7map/IlT2KDvjA12xQR6zM+TFBEjJN7fsc19UYwbo9ZOf09b4gU7/XXnB9fPt
         CX6A==
X-Gm-Message-State: AHPjjUijyjR0RGnU1am7/j1NWBtGPr76LHeplPkJ7zSnyktS/QRZl0C4
	Qil2qxU9caE+QEmp9nw=
X-Google-Smtp-Source: AOwi7QAjmSSMT4Q43BjptC44YVpt/LACp0ALLHL0FxicZNq6Fbrsh6a0cHDMwKGYZsLkJd/J3vgQsA==
X-Received: by 10.25.59.87 with SMTP id i84mr2418752lfa.50.1505649315650;
        Sun, 17 Sep 2017 04:55:15 -0700 (PDT)
Message-ID: <20170917115512.GA11577@curry>
References: <20170916180518.GB28963@curry>
 <20170916190543.GA6340@openwall.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
In-Reply-To: <20170916190543.GA6340@openwall.com>
User-Agent: Mutt/1.8.3 (2017-05-23)
Cc: oss-security@lists.openwall.com
Date: Sun, 17 Sep 2017 14:55:12 +0300
From: Alexander Batischev <eual.jp@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Podbeuter podcast fetcher: remote code execution
To: Solar Designer <solar@openwall.com>

--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

This has been assigned CVE-2017-14500:=20
http://cve.mitre.org/cgi-bin/cvename.cgi?name=3DCVE-2017-14500

On Sat, Sep 16, 2017 at 09:05:44PM +0200, Solar Designer wrote:
>"Instead, please start by posting about the (to be made) public issue=20
>to oss-security (without a CVE ID), request a CVE ID from MITRE=20
>directly, and finally "reply" to your own posting when you also have=20
>the CVE ID to add."

I was under impression that having a CVE ID speeds up processes in=20
distros, and fixes are released quicker. That's why for my previous (and=20
first ever) vulnerability I first got an ID and only then released the=20
details and the patch. The assignment took just a day.

Was my impression wrong? I just want to do things "right", so that=20
attackers have as little time as possible to exploit users. (I do=20
realize this all is best-effort and distros might still take time to=20
release, and then users might take ages to upgrade.)

Now that I had an experience of waiting for three weeks, I'll also=20
re-consider if I want to become a CNA for my project. Previously it=20
seemed like a hassle; I'm not so sure now.

--=20
Regards,
Alexander Batischev

PGP key 356961A20C8BFD03
Fingerprint: CE6C 4307 9348 58E3 FD94  A00F 3569 61A2 0C8B FD03


--LZvS9be/3tNcYl/X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzmxDB5NIWOP9lKAPNWlhogyL/QMFAlm+Yp0ACgkQNWlhogyL
/QOrPhAAnmxiaCGAn6ngs8gdcTtgjkrYZp+800GJT8X0Mb1SIVA5jM3mGkUm0VNb
XzVv9QTV9m1eGmPDktFyAXp+bFDObVtvnq+gzDXa4h4nEMEGYy+vfI5o3PfLv/TS
+lR2JaewaJYAgIjn+JbpBdeTktNodQYbb3zdJE5odJI76uRHtLEz6X0HDGbgH1zD
qBUKW5KVuKvmy40MUclS3ye/ClZi59CV4hn+rA0xTDN0ckEXSdUhObaAxg4roLmc
EbesExEJRd1ybWsgHhr1gz7O3rHx8bp6mnSpDxMqxjN4CX3eU2rsalOmB8M5Q9K0
1JBpMuAAmyBz5zU5I9zVRXAXaTrYgb0sV/BbCWwPIRlTEAaojhtJEFwjDXRCUfK/
OiVr+s7/6vhlYJHnKZCW704YRBwHz74pmWGJ+m0yVVgDtUJgp0GWtp2LIh93Udi2
76wsCQv94apXYoLVQBN1OHA2XPXbN9ho0uNwkmJQQ6B3Y0zr+wGXyZHSfcWu9oOU
KyndkncHacEKXvT33JJ7e6fnj14ha3somUovQiJOcRnXiY3/oh3U/d9cpPY4DBNa
H5ujsAAqxcgrV6cKUjerM0TGEvrAyJUJbZiCVBkbxnEsc6qvE+T3DVzGJGAVaoNq
N9ZaIL2jlZvAPXuPnXqYUFnLCd61//1/Lpbh3kpE/8U2CoodKUM=
=oNmC
-----END PGP SIGNATURE-----

--LZvS9be/3tNcYl/X--
