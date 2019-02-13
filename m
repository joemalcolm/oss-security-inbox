X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2329" "Wednesday" "13" "February" "2019" "01:53:10" "-0800" "EJ Campbell" "ejc3@verizonmedia.com" "<CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>" "57" "Re: [oss-security] CVE-2019-5736: runc container breakout exploit code" "^Date:" nil nil "2" "2019021309:53:10" "[oss-security] CVE-2019-5736: runc container breakout exploit code" (number mark "        ejc3@verizon Feb 13   57/2329  " thread-indent "\"Re: [oss-security] CVE-2019-5736: runc container breakout exploit code\"\n") "<20190213093151.znxnjuqtwbdlwnom@yavin>" ("<20190213093151.znxnjuqtwbdlwnom@yavin>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13977 invoked by uid 550); 13 Feb 2019 11:13:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32401 invoked from network); 13 Feb 2019 09:53:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=verizonmedia.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=XUnEh3tqQK3BG9ztGedT6aK/qXUYdKk2+BpZhvMQUGc=;
        b=SDgBM7St5hVSZa/XlpnobXxq5IhwqqWjn03Oa8SmdfrfhXi9xERw8zOHHEfKgmbJG1
         C4s4+K90NjV8wXWqiChvnxj2gz37prEpBHSLDDkD89GbX2d93J2A/NDpwZOnHNGnVX/i
         3oioF2Cc4fr0MXIVCtkuNiBcKZjOUPukbKbxxojG2CQTbboK769yAm14HV7NRPiVBh/I
         yg6jDsENQ04OLb4otkht110KPEZrfAvr17Nn04V9HwTC4Jegpw7LPOH7JlQB9jNolLEY
         364FekGlWoVenP0XumuQpADSsBhoZ27wAzIGRm+AqhLC8RewWc2SdP5qfuMqJ/sl6NQs
         cYWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=XUnEh3tqQK3BG9ztGedT6aK/qXUYdKk2+BpZhvMQUGc=;
        b=gHhdZMQKx5poGwKcknN0BsO9NIKMgPytXhIQyXz6S+mey7ckFPWKn0ryw4EbLdQ+iQ
         ad9KtOggTWP+bD6M+IVaO4WklwQVFCW8fpY3qSPilVBmVbiWT3Ei8hPG0ywzoX3cq5QS
         g+Y1IBSNBNoNxs74rBdig3AWa18HzpTyAGuomt1H+Noo3U7Chg1pZisoTc802i5G8Tvc
         9riTGIvYRTaS/bt5W77DAA5An8h9ltLqdvaXI2QRGX7i/lsw9kmX4TzbOBcu6Nmt5fHA
         bMB7FnduPvrqxumMUFjL7Lc10k3m8zpsoDDBzbq6uwu1AtN6uOY1c6vOqej3DiZblllz
         lagQ==
X-Gm-Message-State: AHQUAua7xweMZ0h/GUotYEfej+82vshVtte7YCzxmi9sxZ+FQG7dhkTa
	sDyQLgvlKz8benMD8t9nPrAncOuPlKYjr9TB0m1AYI9p
X-Google-Smtp-Source: AHgI3Ibuv7U+LHZgV+pVYjMKsgw4IrTC3M8Nht1oxax0p1GAPUrZYWrGDY0FXIMelNFmXw81M1QD1kdjA1XDCtUTRAY=
X-Received: by 2002:aca:50d0:: with SMTP id e199mr614366oib.37.1550051602535;
 Wed, 13 Feb 2019 01:53:22 -0800 (PST)
MIME-Version: 1.0
References: <20190213093151.znxnjuqtwbdlwnom@yavin>
In-Reply-To: <20190213093151.znxnjuqtwbdlwnom@yavin>
Message-ID: <CABOq=i3PAbRT5GpJZiAHb-BDpQkx0n0k=M8JeupjNKUK+Wi78A@mail.gmail.com>
Content-Type: multipart/alternative; boundary="0000000000002748700581c38301"
Date: Wed, 13 Feb 2019 01:53:10 -0800
From: EJ Campbell <ejc3@verizonmedia.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-5736: runc container breakout exploit code
To: "cyphar@cyphar.com" <cyphar@cyphar.com>, oss-security@lists.openwall.com

--0000000000002748700581c38301
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

While fixing docker / runc is clearly the right fix, would using chattr -i
on runc be a quick mitigation for the issue? I believe that will prevent
the file from being overwritten by the exploit and Etienne Stalmans
verified that it helped:
 https://twitter.com/_staaldraad/status/1095354945073754112

(Note I tried top posting this to mailing list and it didn=E2=80=99t work).

EJ

On Wed, Feb 13, 2019 at 1:32 AM Aleksa Sarai <cyphar@cyphar.com> wrote:

> Someone outside of the embargo has posted a PoC of the exploit for
> CVE-2019-5736 (which is related though not using the same vector)[1].
> Since the original researchers have posted a blog post explaining the
> exploit in some detail[2], I've decided to post the exploit code early
> -- since the cat is out of the bag anyway.
>
> CVE-2019-5736.tar.xz has the exploit code and an explanation of how to
> use it. Our exploit code uses shared libraries, but you can create a
> similar exploit by doing something like (thanks to Darren Shepherd from
> Rancher Labs for pointing this out):
>
> 1. Run a script with a #!-line of "#!/proc/self/exe events" which will
>    run "runc events" (which blocks for long enough).
> 2. A malicious process then opens /proc/$pid/exe (this is now allowed
>    because the non-dumpable bit was cleared on execve).
> 3. Kill "runc events" and then re-open the exe fd read-write using the
>    "/proc/self/fd/..." trick.
>
> This is basically what [1] does -- but it does come with the downside
> that you can't craft a malicious image that does this, you need to have
> a separate program already running in the container and then attack
> "docker exec".
>
> As discussed in the previous mail, this exploit code also impacts LXC
> (and several other runtimes have contacted me to say that they are also
> vulnerable -- I would suggest that runtimes should ask to join
> <security-announce@opencontainers.org>).
>
> [1]: https://github.com/feexd/pocs/blob/master/CVE-2019-5736/exploit.c
> [2]:
> https://blog.dragonsector.pl/2019/02/cve-2019-5736-escape-from-docker-and=
.html
>
> --
> Aleksa Sarai
> Senior Software Engineer (Containers)
> SUSE Linux GmbH
> <https://www.cyphar.com/>
>

--0000000000002748700581c38301--
