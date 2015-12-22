X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1761" "Tuesday" "22" "December" "2015" "14:50:51" "-0800" "Jessie Frazelle" "jess@docker.com" "<CAKPjEProU-z8yLBZLuPAMGW0iWZtewaKwJVLbHNJqWGVD7xNnA@mail.gmail.com>" "49" "Re: [oss-security] Re: CVE request for math/big.Exp" "^Cc:" nil nil "12" "2015122222:50:51" "[oss-security] Re: CVE request for math/big.Exp" (number mark "        jess@docker. Dec 22   49/1761  " thread-indent "\"Re: [oss-security] Re: CVE request for math/big.Exp\"\n") "<CA+s3sfEYAD1bLbTMR0ccvGS8qNOfFu6fj2vtnoxeB+LFi9+30g@mail.gmail.com>" ("<CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>" "<20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org>" "<CA+s3sfEYAD1bLbTMR0ccvGS8qNOfFu6fj2vtnoxeB+LFi9+30g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3783 invoked by uid 550); 23 Dec 2015 03:20:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24179 invoked from network); 22 Dec 2015 22:51:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=docker.com; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=wRXiU3xFe6VbeHsZnKFOdJbCqBo4UrGkQ3Nq3MmjL5I=;
        b=GSIOuPInM3Y/mn3mQA34UlsCTqZxUo8L9oBSkxHKMJByxFfHIGC3Rfw6f0vqehmdHX
         p8MGUFk2lJzTuJDL/fwZIcd86SC9jNF7gwE/RdyRwub80Wi5Ug0E253Ss4UDru3w9iuY
         W7wtyRiVonS4t5l3gyKnonGUArW9Hh8EmfDQc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=wRXiU3xFe6VbeHsZnKFOdJbCqBo4UrGkQ3Nq3MmjL5I=;
        b=W/yAqS6j6Xzz62/hdaqBsQjAAu1Sk0aE3BdSe9wS6Q7cSmsbOZx8NIVYL3zhyzPQlj
         j+P7rxZfqraxayUjAAjY4pq/o9E8WM6dmaRkAxdoD5A8FSs/umgcyKJi1Z1sqwfyQX0d
         sBUmzxz43DIWKEL4HquqANVkCc7yRc0ccGTdyi4rTwXm8BzZUb98bROJD4K8trw8uUEg
         LyGPh0UKhjXqmkwixLRkeOSzGk7rto2xXt96Zyv4nQgn0GiHxooVcIjNqidViTSLuPkp
         nOwwwrmA0fboH+/c53lE/psyw64JyLO6HmMnO839m1r4PnvnYCvlOjRfxetX9BbBK3Wm
         iTGQ==
X-Gm-Message-State: ALoCoQkR4lwFuXxUOH0xNzGhWa7iT6AiGLTJz+rH0vlqddfHdL9yU68d5jzoS9bqyg5nPdVatrnRzEkei51nCtIkJucr468or/l+eS19hpbdEgafOYCficY=
X-Received: by 10.182.60.170 with SMTP id i10mr11743595obr.62.1450824670964;
 Tue, 22 Dec 2015 14:51:10 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CA+s3sfEYAD1bLbTMR0ccvGS8qNOfFu6fj2vtnoxeB+LFi9+30g@mail.gmail.com>
References: <CA+s3sfFMSqi3-5b=4-=gx_nXYye=0oWuWtpwsgEe6mdiq8a_Ew@mail.gmail.com>
 <20151222203655.5C8F152E07C@smtpvbsrv1.mitre.org> <CA+s3sfEYAD1bLbTMR0ccvGS8qNOfFu6fj2vtnoxeB+LFi9+30g@mail.gmail.com>
Message-ID: <CAKPjEProU-z8yLBZLuPAMGW0iWZtewaKwJVLbHNJqWGVD7xNnA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11c1bd4224fccf052784714d
Cc: cve-assign@mitre.org
Date: Tue, 22 Dec 2015 14:50:51 -0800
From: Jessie Frazelle <jess@docker.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE request for math/big.Exp
To: oss-security@lists.openwall.com, fweimer@redhat.com

--001a11c1bd4224fccf052784714d
Content-Type: text/plain; charset=UTF-8

do you plan on backporting the commit Florian mentioned as well?

On Tue, Dec 22, 2015 at 1:24 PM, Jason Buberel <jbuberel@google.com> wrote:

> The Go team plans to release Go 1.5.3 on Wednesday, January 13th to address
> this issue.
>
> On Tue, Dec 22, 2015 at 12:36 PM <cve-assign@mitre.org> wrote:
>
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA256
> >
> > > The problem that was
> > > identified is similar to CVE-2015-3193
> >
> > >> math/big: fix carry propagation in Int.Exp Montgomery code
> > >> src/math/big/nat.go
> >
> > Use CVE-2015-8618.
> >
> > - --
> > CVE assignment team, MITRE CVE Numbering Authority
> > M/S M300
> > 202 Burlington Road, Bedford, MA 01730 USA
> > [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> > -----BEGIN PGP SIGNATURE-----
> > Version: GnuPG v1
> >
> > iQIcBAEBCAAGBQJWebPbAAoJEL54rhJi8gl5LMsP/20/WzubhID16KKW84qnlMAo
> > F6w3/kPkfTTBr+42W3bNZYSCY0ieVwQsvTN6uz8GrMxJ6H/Vko3H17ltXZAx0nxP
> > Vc53H2QbAiyCaaUA6+vqAeosjBbBhvXNkw7Dj9utDu1hJ2rbBtf5ujddF48CxjoJ
> > +Fsrr7TYHX3Su/4r7MNtBtcMjOeWfD3xB+h++Lp5CL/z4tRKXBS02OM+tlVvdGvq
> > llQQ8dwGIYaJv8v3ZIIdXk1dzurws2B6gvF6uDeaseXtbFpMbRpXxgeFddLowjtZ
> > th9I7oxQUvFASrraIQrobaKPpEOfDJrMjhVzFHPtEFtTvrR71qYqq58NXaoflGV1
> > gEtSptbjm5sAwsjxOWhOVO+wA9JHA8upV2ZVxczdeFGlvyko2KBWdMorjEIWLQGI
> > x2DbkL2+hXlCJfZZUfNy0BjyGpZPGlmT7ZAYguxz6VTT/EC67gJ6pkiv5mZKOeBY
> > PHtH7UaYVBYwh6h5opdmvhkhTJ/a9lXhIez5s5HhX01P31DHmx6RLUMeTBikjwmz
> > IFOEulqQhAH0Qtp2XvPAMKeICXpEv7iWmoP8yNAYQ0SzS4awc7ZjK1mcRka1hcY5
> > Bc5nbQvbZGPag0QeyYPdKyYuNqugj6d3J81kIlcpNfjCT1lSVhxxwjQQzlpi0FCR
> > YJqwm2p3NhpjW57fGRux
> > =HP2t
> > -----END PGP SIGNATURE-----
> >
>

--001a11c1bd4224fccf052784714d--
