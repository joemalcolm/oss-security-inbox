Received: (qmail 11620 invoked by uid 550); 8 May 2026 18:04:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1806 invoked from network); 8 May 2026 17:50:22 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1778262612; cv=none;
        d=google.com; s=arc-20240605;
        b=hSezJjsjzzeSQGZBGcZHIVmkJEAw7xpANtEwNbGqmQobs9cmTTTx5Sg2LIAJN7MV8z
         nCpHYS+pmMAmdnJNmUlc2yC2oJWnOxIsJH4w7mOWKWqYZEv0ZN9YtyBAaBbKSf9L7Kbh
         tVL8BQjm3x01J8tu/SSfGGKfaZ7wdgvrD+xHLoMcNdSGelJ6JK6oGuQhhjzWO2h/wLG2
         bR3X/OPqKdoDHRwAMuL6mxiY7Z/2V0P+S8eevG1mq2PryBJuhpFEgushjA/Y35qbEi3R
         3YfC9Dv55+/SbFB5FQJuqXcmwPNQG7VK00Y4QaruAYb/QFydCZhrRGmvejBMXkXoLmcN
         +Mjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=U8qnvDn4AwgHve0MIHzRVonGe9qdx5spYWgSFvx0ac4=;
        fh=9jsPTyo6edd9xvAeG+KFFrRrXMmgB/RdwUKOrvy9dcA=;
        b=UcQoDLxh+RI2D+MVM7eK6jVVT0cDyl59dgGPxmLB7m3yQAcXrh/TPLH/rK1yzRCMJV
         Ay1S/H8TOaryWU+LdDE17tagysIaQFy8+P1oHe/y4u/wIVwJr6Rrjo1dpOUaJO9dKp5D
         LAtAi0A+8KQdhE/YvP5c/s1qqwuubwF+f+lvCR+4ridayt/0y8qQcVbPjxicLFKaR3S3
         e9UBRA4QDCpJ9535VEMRNwnv5ChMcUcV6DMBoUr7BxTzdILqp9RS1Rghu3siK/MjpQu1
         wahOVjx09P6NP5Q5RKDSwjY6qQuh3Ofo4N31wtrK1+XqSe+TGu0SXZh+uY5YDwGYdmwO
         NQZw==;
        darn=lists.openwall.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778262612; x=1778867412; darn=lists.openwall.com;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U8qnvDn4AwgHve0MIHzRVonGe9qdx5spYWgSFvx0ac4=;
        b=l1fDMB304UcW+seXSIPXwMkFJlj/kiIZWvv59TmLEXWaIodzYPyLRVjYsuxbXA+ORm
         oFYQASiDBReK//jnLRyuDARjI1VOUBAFq9IKDncF4MUOZh5UMm4D0PoS16hUs+ywBl1V
         V+bJX+hKSHTyFrk6ZkeB4c1Ww3WRZ//7Jcyi3cVzR59BGP9B+WV+I0JEQoffp5gJ/9UB
         p0zCjsBN6Q0ZBjAlmA1GX9hypQtSbnQ7xolZOfkF/M8JXuNi7eapsaEvYp2Q2n9xnimI
         AHjw8TgbEvP1yGEt4es35kcDSo8B1Ga73KdreoncM5f6qm4haxWoc9CR87fl2VJvGdlk
         nw8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778262612; x=1778867412;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=U8qnvDn4AwgHve0MIHzRVonGe9qdx5spYWgSFvx0ac4=;
        b=h9/mXvlD19QzLnqo8oRszmBYNiEGN6bBcVM8t2PFICcRwPnMfeTLB2JIFnPCngVc8V
         MlA/YhxARTQ0Q5fc9h5ycplasVUQAqtyAswc+Fqz4duvEtkRma+9l2HZyGRQesfEXwz9
         Omfhiaqso8B5nKJfVAYQAMAxH36kCT6y5GG0WFv13ZIL6gKv3BVKr3x6tDnUObOznYth
         XRbsQN70aclsnLGuENSstRZg6ketJrX3m/vvHZo4+fN7q81OZJB0uj2KFv5+F+7RaObF
         aiBM2zAcsc9MMxKsI98dPM6WTsHrwOJsNOaEsP5bi1bsScP+0qSLPpVr96ZUuBwAdR2o
         MnIA==
X-Gm-Message-State: AOJu0YzzBhBLaIjVPjsczM1ErJEa9PKNcBG3UKgOe2Ib9oEk3qqfpota
	K+kPNgF7ZDXKr0NmsCdKnAofFHVLYTT6TJq5E2XhUsMAAsAciaa6CZNEzkCeZdtzZDlVdvQWVRb
	HW07wENg+0mS8HG7XeUIt5fpb4Oocszc6aCBjjJA=
X-Gm-Gg: Acq92OF1lx/9RpAynbO1RB4MiEyAwaGoNv9cE1zkOj7zlVAQqWTNzJhklYbvOsN0B33
	D7/C/VqMtLLEv0xuwrfO5eBp9ijpzrKzMoG+TsG1FNrWf0XoGVq1HO8hxfMNUmiC0A6Z/+pT7bW
	mFHq2hQpb36nyRYwYXYDmyhsWauiKmUQHBHq1yfgYKvMboWxL5SqOj3Z1yxNDtaYVOc2hunsv4x
	IKy7dyDZwUKHNsWkBq+cN30loczJ55RwbNORXe/rIhsT8gLyPj8MFh8KvYXPbnZOEWNStL964Jk
	S8sCnInJ
X-Received: by 2002:a05:6214:5d93:b0:89a:90e:3a1b with SMTP id
 6a1803df08f44-8bc441e5a69mr189529426d6.25.1778262612403; Fri, 08 May 2026
 10:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <afzgS2SCWNcZU3vU@v4bel> <5098645.GXAFRqVoOG@daniel-desktop3> <CAKXLc7dbALVK=jV4p9gcAD33LK44fjSan2YX7RYm7J7Qt-mg4g@mail.gmail.com>
In-Reply-To: <CAKXLc7dbALVK=jV4p9gcAD33LK44fjSan2YX7RYm7J7Qt-mg4g@mail.gmail.com>
From: Greg Dahlman <dahlman@gmail.com>
Date: Fri, 8 May 2026 11:50:01 -0600
X-Gm-Features: AVHnY4IKAVp9SsqyZKuY1RgKBcahAxLMmsosqEwtoC52KQOXjzEe0KweCfYUoF8
Message-ID: <CAM=PXV60JrnGErsv1OHSdO_y46eTPVWV=miFVW7UYhhiHX7XzA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Re: Dirty Frag: Universal Linux LPE

So that people can at least add auditing:

While ideally you would have these set up for all of the PF/AF
families you don't expect, The following are probably low noise and
should be added to your audit logs so that your EDR and other security
tools can find them.

```
auditctl -a always,exit -F arch=3Db64 -S socket -F a0=3D33 -k pf_rxrpc
auditctl -a always,exit -F arch=3Db64 -S socket -F a0=3D38 -k pf_alg
```

The gnu bits/socket.h file is probably the easiest way to find most of
the numeric mappings, e.g.:
/usr/include/x86_64-linux-gnu/bits/socket.h

PF/AF 1,2,10,16,17 are the ones that most people would use, with
AF_VSOCK(40) as an exception that may be too noisy to log, along with
bluetooth on desktops etc...

IMHO, longer term, a bounding set in a text file in /etc of PF/AF
families that can be used on a system is the more maintainable and
robust solution in the end. socket() is just too tempting of an
interface, with no real security boundaries unless it is device/file
mediated.  It should be blockable at the system level by PF/AF no
matter if it is loading a module or is compiled in at the system level
IMHO.


On Fri, May 8, 2026 at 10:12=E2=80=AFAM Kalin KOZHUHAROV <kalin@thinrope.ne=
t> wrote:
>
> On Fri, May 8, 2026 at 6:39=E2=80=AFAM Daniel Tang
> <danielzgtg.opensource@gmail.com> wrote:
> >
> > > no patches [...] exist
> >
> Well patches will eventually come, but mitigation across the board hit
> a few snags already, so from my lessons learned I baked a script to
> apply the mitigation.
> Actually renaming the modules, not relying on modprobe config, since
> there are some distros that don't have that by default.
>
> After some initial testing and with GNU parallel as (often) last
> resort mass deployment tool, I just released it on
> https://github.com/thinrope/cf-df in the hope that I may save some
> minutes or hours of someones'  job. The script itself is useful on its
> own, to be deployed via any configuration management system, or run by
> hand.
>
> Any feedback/issues/PR are welcome.
>
> Here is the README (reformatted to plaintext for clarity):
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> https://github.com/thinrope/cf-df
> =3D=3D=3D copy.fail + Dirty Frag patching-on-the-fly =3D=3D=3D
>
> Patch copy.fail[1] and Dirty frag[2] related CVEs
>
> =3D=3D Why? =3D=3D
>
> I suddenly needed to patch a multitude of linux hosts in various
> platforms with minimal impact. I don't trust the suggested method of
> disabling module loading, I'd rather have the file renamed (or even
> deleted at some point).
>
> =3D=3D How? =3D=3D
>
> Execute the cf+df_patching.sh script as root on any host. Use and
> configuration management system you have in place. Alternatively, for
> those odd mass cases, use the wonderful GNU parallel[5] from a central
> host via ssh (run as root, ssh as root[3,4]):
>
> git clone https://github.com/thinrope/cf-df.git
> cd cf-df
> $EDITOR target.list
> parallel --tag --nonall --slf target.list --workdir ... --transferfile
> cf+df_patching.sh --cleanup 'bash cf+df_patching.sh'
>
> =3D=3D References =3D=3D
>
> [1] copy.fail: https://copy.fail/
> [2] Dirty frag: https://github.com/V4bel/dirtyfrag
> [3] If you cannot login via ssh directly as root, use sudo properly
> [4] ... or abuse these CVEs before you patch to obtain root :-D
> [5] GNU parallel: https://www.gnu.org/software/parallel/
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>
> Regards,
> Kalin.
