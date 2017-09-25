X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2779" "Sunday" "24" "September" "2017" "19:35:35" "-0700" "Igor Seletskiy" "i@cloudlinux.com" "<CA+-XxSFqmLn3Phb4S6rpFBKU2sxcsWAP56yzFw=FuDZR+1nGDQ@mail.gmail.com>" "77" "Re: [oss-security] Why send bugs embargoed to distros?" "^Date:" nil nil "9" "2017092502:35:35" "[oss-security] Why send bugs embargoed to distros?" (number mark "        i@cloudlinux Sep 24   77/2779  " thread-indent "\"Re: [oss-security] Why send bugs embargoed to distros?\"\n") "<20170923134418.6e460656@pc1>" ("<20170923134418.6e460656@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32298 invoked by uid 550); 25 Sep 2017 03:39:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15414 invoked from network); 25 Sep 2017 02:36:27 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudlinux-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=lAOcVhVxVyxCEGFlEja3Wa6FDjJwaIkgGF3doQ0DAsI=;
        b=nZnSvBG2zR6I02q7E3My9nSt9daYXKpq4/GE93jPf8vgWAimGULFL5eXiy9wwNb2xB
         ZMEPTJ8UzD+0m7n7X7xszUJVq0ra+c5qIqk7Ib8uRLwC0IkjiosTJaDF2AmuCxj+FxRI
         cwfjwBwiSPxKrwRTEMuzbCTzqKiS1fCSpHwWBrp4DWkwyrwbOCYTTM49QmReUySKyRL0
         GViFAfyY9yxqV2g4YH8wqywLA1LpkhOkBuO/AhXktTwXBG0as8dSCOuGT+TbiMvGfqD1
         1EfGe63cVtaC4OKwN+jDlf1wsDcx+ri8dn1pmY7e2xnqecU9E5GtzBwMkWJtIwItXzzf
         QQlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=lAOcVhVxVyxCEGFlEja3Wa6FDjJwaIkgGF3doQ0DAsI=;
        b=IQksTsvL+L/c8nH+jS3aeVmM/PsbfMKHI5mEOZuQtIed4ea0yyEzocmShbrtQA39TW
         LkgGghGl9a6CsFiz3T7kSU5hsCMvmMmH5KC+8+3Nj41xu/NQ2wejjApbl6QEbS98RTAr
         mRILDKmew7P4dHKhYFJjSA3w2V7FJd5u5uLywXurQpjKGvWy+e83Q4qncANtu7paw+Oy
         0myvccNHzHwg3aroDpPKlgZ2zvsF39EHCO5UnLzDjmtN6+oX0WEaOt0Mbzv4DbHzHp39
         /DXmVx85o2wGP4Bb8+4Io97MKCYjF91OD0wjlWRXzKNCsy8odHdBijVVVS/m1Z4Wrqe3
         5lFw==
X-Gm-Message-State: AHPjjUhTpOLCCZ2eOvp6iEA8Nrwr0wylscesA0U7+6adVkCOTdFoX/BP
	t56djPk5n6J6mfb3JOzX88cdkgEIkdsPo/2KCoibHw==
X-Google-Smtp-Source: AOwi7QDhIakX9VK6oarOGQsRMCA+TMVvyYEyOtFzPPdIflzBc12JyQuKIiPcifzCwsIBe/kjLZSAisFQ6UzPJwE2IK0=
X-Received: by 10.223.185.5 with SMTP id k5mr4624666wrf.189.1506306975930;
 Sun, 24 Sep 2017 19:36:15 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170923134418.6e460656@pc1>
References: <20170923134418.6e460656@pc1>
Message-ID: <CA+-XxSFqmLn3Phb4S6rpFBKU2sxcsWAP56yzFw=FuDZR+1nGDQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 Sep 2017 19:35:35 -0700
From: Igor Seletskiy <i@cloudlinux.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Why send bugs embargoed to distros?
To: oss-security@lists.openwall.com

This pre-disclosure was very useful to CloudLinux. Most of our
customers are shared hosting companies and are affected by this bug.
The early notification gave us time to thoroughly test the fix, and
analyze if it can potentially have any side effects.
It also let us deliver the fix to beta channel right after the
announcement, and to the main channel a day later.

Regards,
Igor Seletskiy |  CEO
CloudLinux OS   |   KernelCare   |   Imunify360

Get 24/7 free, exceptionally good support at cloudlinux.zendesk.com
Follow us on twitter for technical updates: @CloudLinuxOS


On Sat, Sep 23, 2017 at 4:44 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
> Hi,
>
> A few days have passed since the optionsbleed disclosure. Some
> interesting things have surfaced, e.g. the fact that it was apparently
> discovered already in 2014, but nobody noticed it was a security bug.
>
>
> But I'd like to discuss something else:
> I had informed the distros mailing list one week earlier about the
> upcoming disclosure with a bug description and links to the already
> available patch.
> My understanding is that the purpose of the distros list is that
> updates can be prepared so after a disclosure the time between "vuln is
> known" and "patch is available" is short.
> However from all I can see this largely didn't happen.
>
> Debian+Ubuntu took more than a day after disclosure to fix. According
> to the Debian bug tracker the bug got only opened after the public
> disclosure[2]. I see no sign that any work on a fix began before the
> disclosure.
>
> If I can trust Red Hat's CVE tracker [3] there still are no fixed
> packages available. Also I haven't found any info about updated
> opensuse packages.
>
> The only distro I'm aware of that prepared packages and pushed them
> right after disclosure is Gentoo.
>
> All of this makes me wonder if the distros list serves its purpose.
>
> I'd be curious to hear:
>
> a) if any people felt that pre-disclosure of optionsbleed was helpful
> to them and in which way (after all - even if it only helps minor
> distros and major distros ignore it it may still be a good thing).
>
> b) if people think that they'd usually prepare a fixed package, however
> they didn't consider optionsbleed important enough. (Naturally I
> probably have a bias seeing my findings as more important as other
> people, but I could live with that.)
>
> c) other things?
>
>
>
> [1] https://arxiv.org/pdf/1405.2330.pdf
> https://blog.fuzzing-project.org/61-How-Optionsbleed-wasnt-found-in-2014.=
html
> [2] https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D876109
> [3] https://access.redhat.com/security/cve/cve-2017-9798
>
> --
> Hanno B=C3=B6ck
> https://hboeck.de/
>
> mail/jabber: hanno@hboeck.de
> GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
>
>
>
>
