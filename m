X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1256" "Thursday" "1" "October" "2015" "11:56:33" "-0300" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdRRJ1SfT-BVC6h97VHn6GGy_0W7thuwMSYwN29W7Om-XQ@mail.gmail.com>" "46" "Re: [oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" nil nil nil "10" "2015100114:56:33" "[oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1" (number mark "        gustavo.grie Oct  1   46/1256  " thread-indent "\"Re: [oss-security] CVE request: Heap overflow and DoS with a tga file in gdk-pixbuf < 2.32.1\"\n") "<CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>" ("<CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>" "<CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27716 invoked by uid 550); 1 Oct 2015 14:56:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27691 invoked from network); 1 Oct 2015 14:56:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=EL8tTTN2LLIfpydmTpzxCRTisoAyufpbNqBa6tYNj2E=;
        b=lF2Eq8gUMec86WCQ1tIJ2724qQdNk3jK9JESYNwtvQ3cwB5y2zckdY1zMQset7oX1U
         13lwGKsonzlQUeS+BG4vL3JjzHHFhXFEt+sczdtT5KHVNqmCophxEU6qcrcnYF4erRGu
         f3PiBu4xvBNFGxIukMJ9I3W6OQSqEh509lkUIpspNCWTISrxjZL+VErTTAIOb5ufKtBa
         WBnWhf6AmNNeXkGhllNbw053/YQ29Gs+vkCWBbGMTmMHohX+48vEf7etErbbr7sjeqBO
         5y2vAHUI86BYyLCtylAWyElHAPOTwoM6Msgo43YZbz5fUrDflkhYOtP/N2JF3Dwvhlb/
         RSLQ==
MIME-Version: 1.0
X-Received: by 10.25.15.162 with SMTP id 34mr1938424lfp.98.1443711393644; Thu,
 01 Oct 2015 07:56:33 -0700 (PDT)
In-Reply-To: <CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>
References: <CACn5sdR_PnnzeTT921B2mu2o1ceaC5qzKsKCuqHpK0FVp5OKng@mail.gmail.com>
	<CANO=Ty2QZBvdct3rx3+NdDV0CYf5eTu2V-tP5gsU8b0jH0bBmQ@mail.gmail.com>
Message-ID: <CACn5sdRRJ1SfT-BVC6h97VHn6GGy_0W7thuwMSYwN29W7Om-XQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a113fa1cec6c98005210c4006
Date: Thu, 1 Oct 2015 11:56:33 -0300
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: Heap overflow and DoS with a tga file
 in gdk-pixbuf < 2.32.1
To: oss-security@lists.openwall.com

--001a113fa1cec6c98005210c4006
Content-Type: text/plain; charset=UTF-8

2015-10-01 11:04 GMT-03:00 Kurt Seifried <kseifried@redhat.com>:

> Can you please post more details, I know on our end there was some
> confusion as to whether or not this is the same flaw or closely related to
> https://www.mozilla.org/en-US/security/advisories/mfsa2015-88/


Sure. According to upstream, it was fixed in 2.32.0 with the 3 commits
starting with
https://git.gnome.org/browse/gdk-pixbuf/commit/?id=19f9685dbff7d1f929c61cf99188df917a18811d

Do you also need a crasher and a stack trace?


>
>
> On Thu, Oct 1, 2015 at 6:59 AM, Gustavo Grieco <gustavo.grieco@gmail.com>
> wrote:
>
> > Hello,
> >
> > We found a heap overflow and a DoS in the gdk-pixbuf implementation
> > triggered by the scaling of tga file. These issues are only fixed in the
> > recent release of gdk-pixbuf 2.32.1 but affects older versions (we tested
> > it in a fully updated Ubuntu 14.04).
> >
> > These issues were found using QuickFuzz.
> >
> > Regards,
> > Gustavo.
> >
>
>
>
> --
>
> --
> Kurt Seifried -- Red Hat -- Product Security -- Cloud
> PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
> Red Hat Product Security contact: secalert@redhat.com
>

--001a113fa1cec6c98005210c4006--
