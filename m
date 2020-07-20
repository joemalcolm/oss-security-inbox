X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1356" "Monday" "20" "July" "2020" "11:39:09" "-0400" "Jeffrey Walton" "noloader@gmail.com" "<CAH8yC8mT3QMRFLm0qf6z96nezwj41k_zJ3Vkft0bZdLUXxCXpw@mail.gmail.com>" "30" "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" "^Date:" nil nil "7" "2020072015:39:09" "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" (number mark "        noloader@gma Jul 20   30/1356  " thread-indent "\"[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens\"\n") "<20200720145721.GA105966@fullerene.field.pennock-tech.net>" ("<CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>" "<CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com>" "<20200720145721.GA105966@fullerene.field.pennock-tech.net>") nil nil nil nil nil nil nil "[oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13922 invoked by uid 550); 20 Jul 2020 15:39:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13890 invoked from network); 20 Jul 2020 15:39:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to;
        bh=I/Sc+6ke13jX7k1RgVLo9ROCPKDVxaqILrVY47iWVV8=;
        b=QaJasjanwOKel5BZK3JQ1IyIpAfxme/uUVNs1+hiY37aWdlcDL8hr2fwfiW4Uy/Byv
         Yo7ewbhhecAUPG+KIrFHR8S7eKWdpNwDtwE1UKzVb/KMzCGU4tMvVg8PLpHs7g8sqUqY
         spjX0O2cUTcWe4z03/5zdbwfY232ME+uJnAb68Lhz67dzaQ4AhRxcc2vHgADOvLKqJs7
         tb6mluC9hiBKi90J3z4Eq4a2Ak1TnQr1r72lrQG1uSjTeAyQVxowHhmNnvPg5c1E5THw
         XobcocjcRgOvSHTzUUsZgNBeogIKH4o9ylyxnoIDAAuSXnRYTcRho2v2iTr52UOmu7RJ
         vCbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to;
        bh=I/Sc+6ke13jX7k1RgVLo9ROCPKDVxaqILrVY47iWVV8=;
        b=IbVj/qsNzi2Em/EW5mw+tgaWY12PCqo4d5hM1j2G3VF/UIn848vt3LyjGl4fsAJn57
         GKl66DYPvCti2+CIKogvIw/+2h19rszHk1Nz3VA+pBH9br46QnsodNQwSVX6JdkiYtAo
         //61mUaNwU+gE/s0X+l4/ntUay4nMY8NOGMW3+n+0KSNop75MDd0aTe3a2L+j0GLf6BW
         puY8YQiOG4R3Zazdlg34c57h+wyi5d8GNQa2tSMXPbHQS8aNRwpnP9HgcP/LYjQrlS/Q
         ipA/ehnQpzpuIfyGMjKZ5/EwKrtshQAIMYHrm4oyNx57mUSJNQWM3JcRMQOb5+cgeZ73
         2vpw==
X-Gm-Message-State: AOAM530nEVOSnpmTUvgz7AUZxTnU3L9zMd9cQRyDvFYD40Of890m2lUi
	qXAHLAWFPn2FgmmDBioCQqDDyZPKZnpi6kkloN45e6XF
X-Google-Smtp-Source: ABdhPJwEz27QSHbMa9HkwUNCZ3EIFzo/WXO0olQ/jh2S7gqaAHYxzTnP7jRW76v8BdfvTyMXFTZuF8JBYVWSnXkwr2M=
X-Received: by 2002:a92:8915:: with SMTP id n21mr24518633ild.166.1595259575241;
 Mon, 20 Jul 2020 08:39:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAH8yC8m+ZK9AZcYZ0vrSgSTjGsi1F5=hEX9phvSSxhuMbRDEFg@mail.gmail.com>
 <CAH8yC8=HihpJA+tHrk6TbXhiOOOC43ZDYTY+kpyESwDn0cc7zw@mail.gmail.com> <20200720145721.GA105966@fullerene.field.pennock-tech.net>
In-Reply-To: <20200720145721.GA105966@fullerene.field.pennock-tech.net>
Message-ID: <CAH8yC8mT3QMRFLm0qf6z96nezwj41k_zJ3Vkft0bZdLUXxCXpw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Date: Mon, 20 Jul 2020 11:39:09 -0400
From: Jeffrey Walton <noloader@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Perl 5.32.0 mishandling of rpath and runpath tokens
To: oss-security@lists.openwall.com

On Mon, Jul 20, 2020 at 10:57 AM Phil Pennock
<oss-security-phil@spodhuis.org> wrote:
>
> On 2020-07-20 at 04:33 -0400, Jeffrey Walton wrote:
> > On Mon, Jul 20, 2020 at 4:21 AM Jeffrey Walton <noloader@gmail.com> wrote:
> > >     -Wl,-R,$ORIGIN/../lib -Wl,-R,$HOME/tmp/ok2delete/lib
> >
> > My bad... It does not matter how this $ORIGIN token is quoted. Perl
> > always expands it.
>
> I've encountered this in build systems before, where the quoting is
> inconsistent and apparently can result in different levels of dequoting
> for a target depending upon how it was reached.
>
> What I've used for building those has been to specify %ORIGIN instead of
> $ORIGIN and then binary-edit the resulting binary to switch that % back
> to a $.  All quoting issues disappear and all binary offsets are stable.
> Just make sure the binary-edit step is before any binary signing. :)
>
> At some point, it's also worth considering static linking.

Yeah, I was doing the alternate character for a while. Then Perl came
along and I could not figure out all the places it needed to be
changed. They spray the rpath in more places than just Makefiles, and
they build Makefiles on the fly. I found it's not a simple task to sed
the alternate character back out after, say, configure.

Related, see https://sourceware.org/pipermail/binutils/2019-June/107108.html.

Jeff
