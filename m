X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["827" "Tuesday" "1" "January" "2019" "11:49:02" "-0500" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8mDCmQV2SXMT-UQou+y=YzAQQ6HPbKinq1d0ERdCBEO=Q@mail.gmail.com>" "23" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" "^Cc:" nil nil "1" "2019010116:49:02" "[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)" (number mark "        noloader@gma Jan  1   23/827   " thread-indent "\"[oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)\"\n") "<CAH8yC8mqdkjQ0pF2QadoMjnZS47SrrZS+H8HMOKv2GqLwcXh0A@mail.gmail.com>" ("<CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>" "<20181231191642.GB7238@zira.vinc17.org>" "<CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>" "<20190101112042.GE7238@zira.vinc17.org>" "<nnwonoob4v.fsf@armitage.lysator.liu.se>" "<86o990wdu4.fsf@shell.gmplib.org>" "<CAH8yC8mqdkjQ0pF2QadoMjnZS47SrrZS+H8HMOKv2GqLwcXh0A@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9737 invoked by uid 550); 1 Jan 2019 17:02:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28187 invoked from network); 1 Jan 2019 16:49:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding;
        bh=4zWUjcB7z1rhRyVSdbCpXakB8Ez1Nxuvv/7XEd+j7f8=;
        b=lM0Vs/QKL1b70BtRNDOBo5bzZV94bZ8jnXxX+KSCCQcbBK9qQDJOU0JBqMq/w49N7C
         iMSObONoBATIP7Q94YIqm96pt/vT+qSEPhQ8ubU62N8HOZljv2mclVLzNAP6bwx0hKP8
         g3KUQT43z6k265T6JZbS4Za/kWBiVokQOH214KS8KH4pTJQoPFwG93cPXinQcnMzgASD
         NZRwY61rnUgvnMP5kapb2Vc7aQGbiMo/beCajcI2XAtHgzp7R73K1q+PVXgk/p6yoV09
         8L8yqlhdRdef1I2tCznPQWmbf3ezqB2QbP0N2oH+nsr5bawQaRx1ZDzYD5CQIQZjYBsj
         S5ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc:content-transfer-encoding;
        bh=4zWUjcB7z1rhRyVSdbCpXakB8Ez1Nxuvv/7XEd+j7f8=;
        b=i/JwMJNsKeFenkx7isZdZ2Kt5crPRSJ9xz8rL2hMXleIROj2CbGFOj9VOFxaUV9t7o
         /UpoRC2hWfEGyU6K4FKgwijaosjrryFo+4jP9nWcdN4qNXWaGhKzBgLGPpVJoQKLFC+Q
         0OM0GOCOVqWIBB5ZUQg+jC4a7auTObgJUmGrkcqYTujNWYCBW6JrpfmCQWh5/WvLRvix
         xImZSnD6HaIuzgh2r1TcUiqfRjyxEYTq8XbG2DdMxrYhUXhMKSrrUqiISnuwd6qOV9E9
         YaxQMZ9zqhGPYsodWEeL0qmUFX137j00DIRxltXjJYR7mtR/PKC5LGToL7RD3s5nr0/7
         Regg==
X-Gm-Message-State: AJcUukdT8rpgReBEnZMhofLT8jeuMHpK5pjTEgba2k4zkB0bF0LgJ33+
	3blvydMcU9dsZbh0MWCHHbNmtdozYAom0zeFO3U=
X-Google-Smtp-Source: ALg8bN5uRGDLhLzG+TQVuu/R/GWzMAGai4rjglpgOSoycvIKVzKAcJmXNGhDUGv36bNTpbd+GfN/sYoNqvENxUCRKBY=
X-Received: by 2002:a6b:ab85:: with SMTP id u127mr26038909ioe.143.1546361375061;
 Tue, 01 Jan 2019 08:49:35 -0800 (PST)
MIME-Version: 1.0
References: <CAH8yC8m90KssanbHt+YmVt7iLOiwWHASDqRYW5TQGeNV2zWXDw@mail.gmail.com>
 <20181231191642.GB7238@zira.vinc17.org> <CAH8yC8=-Lt0_p2sTnqhJOWjapJ84LNR=8zJFF5oWs=-4xgxigg@mail.gmail.com>
 <20190101112042.GE7238@zira.vinc17.org> <nnwonoob4v.fsf@armitage.lysator.liu.se>
 <86o990wdu4.fsf@shell.gmplib.org> <CAH8yC8mqdkjQ0pF2QadoMjnZS47SrrZS+H8HMOKv2GqLwcXh0A@mail.gmail.com>
In-Reply-To: <CAH8yC8mqdkjQ0pF2QadoMjnZS47SrrZS+H8HMOKv2GqLwcXh0A@mail.gmail.com>
Message-ID: <CAH8yC8mDCmQV2SXMT-UQou+y=YzAQQ6HPbKinq1d0ERdCBEO=Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: =?UTF-8?Q?Niels_M=C3=B6ller?= <nisse@lysator.liu.se>, 
	oss-security@lists.openwall.com, gmp-bugs@gmplib.org
Date: Tue, 1 Jan 2019 11:49:02 -0500
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Asserts considered harmful (or GMP spills its sensitive information)
To: =?UTF-8?Q?Torbj=C3=B6rn_Granlund?= <tg@gmplib.org>

On Tue, Jan 1, 2019 at 11:45 AM Jeffrey Walton <noloader@gmail.com> wrote:
>
> On Tue, Jan 1, 2019 at 11:19 AM Torbj=C3=B6rn Granlund <tg@gmplib.org> wr=
ote:
> >
> >   The assert that Jeffrey has hit is in sec_powm.c,
> >
> >     ASSERT_ALWAYS (enb >=3D windowsize);
> >
> >   As far as I can see, "enb" is the input argument to the win_size func=
tion,
> >   and "windowsize" is the return value. I'm waiting for more informatio=
n,
> >   since it works fine in my build. Possible explanations I see are
> >
> > A reasonable assumption is that this user has modified the sources to
> > cause this bug.  The motive would be to support his auxesis about how
> > insecure GMP is.
>
> My bad, I did not mean to imply this was a problem with GMP only. GMP
> has a lot of company, like GnuPG and OpenSSL.

    s/OpenSSL/libsodium/
