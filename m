X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1734" "Tuesday" "10" "May" "2016" "10:43:27" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>" "59" "Re: [oss-security] BitKeeper /tmp vulns" nil nil nil "5" "2016051016:43:27" "[oss-security] BitKeeper /tmp vulns" (number mark "U       kseifried@re May 10   59/1734  " thread-indent "\"Re: [oss-security] BitKeeper /tmp vulns\"\n") "<20160510162457.GA30154@sisay.ephaone.org>" ("<CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>" "<20160510162457.GA30154@sisay.ephaone.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13554 invoked by uid 550); 10 May 2016 16:43:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13536 invoked from network); 10 May 2016 16:43:39 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=3KoWJp+N3hF5l7nCO1QIMcemEhMzK/8vWU1zpB7+Hnk=;
        b=LYirZkfEWnsopUSAJ60c4ufvgilRacBjUlTlSDz/LfO+3kZHmV/TyvCBebYEsu6/9e
         2QQtiCelqIUzSxA7NybgwYM7FFauhTWpVHasvsiaCucIb15VJ5PhRoYHrC9HOEKOz5VO
         x5R7LJ9vUXdOCIbbUnsJKA7e2m4lMEyDjQ+q+JMDsdt1b+Q9bil0Ml+qnTcv0QWJqD8y
         refiqdNpyJINo/VN75nt4vYbmOuIUxIktxCHSglh0Z6tV+Sz9GZ2P4wGRxGzVLujXiHP
         XZIjivg8fxKY5jjjj8S/H83cFjhmXbJU49/Cv1TFiNMxPEDfrpnXrIqi0eL5m8pez1ip
         Ogdw==
X-Gm-Message-State: AOPr4FV0VNYGy4ePN37eiA4CvJ5bdonuuw8Ac0ACIWpFZo5CkMtBFxKI8W1qc9CT4BTmfb01VjBKx07co9qDSgQW
MIME-Version: 1.0
X-Received: by 10.37.208.75 with SMTP id h72mr4408349ybg.137.1462898607898;
 Tue, 10 May 2016 09:43:27 -0700 (PDT)
In-Reply-To: <20160510162457.GA30154@sisay.ephaone.org>
References: <CANO=Ty0jMX=XhW5D71G4__tqtHwHY5iFX-YKZO71skbgin5U8w@mail.gmail.com>
	<20160510162457.GA30154@sisay.ephaone.org>
Date: Tue, 10 May 2016 10:43:27 -0600
Message-ID: <CANO=Ty3x2M-OqiUoQssjW4WjuamLyjpVeFckCH2GuZVVeh5xLg@mail.gmail.com>
From: Kurt Seifried <kseifried@redhat.com>
To: oss-security <oss-security@lists.openwall.com>, security@bitkeeper.com
Content-Type: multipart/alternative; boundary=94eb2c055492de0c8705327f9fbf
Subject: Re: [oss-security] BitKeeper /tmp vulns

--94eb2c055492de0c8705327f9fbf
Content-Type: text/plain; charset=UTF-8

Hopefully security@bitkeeper.com (it doesn't bounce so I assume it's valid)
will review/address these.

On Tue, May 10, 2016 at 10:24 AM, Michael Scherer <misc@zarb.org> wrote:

> On Tue, May 10, 2016 at 09:31:27AM -0600, Kurt Seifried wrote:
> > Not found by me, mentioned on HackerNews:
> >
> > https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/bk.sh#L485
>
> Just to clarify, the vuln was not mentioned on HN, just the new about it
> being
> under a free license. Then I did a git clone, and grep /tmp and pointed on
> internal
> IRC that, as usual, there is a ton of /tmp issue (and then Kurt did see
> and asked where I did see it,
> and answered on HN (to the question "bk is now opensource").
>
> > BitKeeper is under Apache license so here it is.
> >
> > Also a quick look at the source shows a ton of other potential /tmp/
> vulns,
> > CC'ing bitkeeper security
>
> for example:
>
> https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/utils/bk_version#L1563
>
> There is also a few here:
>
> https://github.com/bitkeeper-scm/bitkeeper/blob/master/src/utils/extractor.c
>
> but that's the installation script, so unlikely to be exploitable.
>
> Or in apply-patch, etc.
>
> But there is also a few projects that are bundled (like zlib), and a few
> scripts that
> are used only at installation and/or build time, so classifying everything
> is more
> work than what I have time to devote for the project.
>
> --
> Michael Scherer
>



-- 

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--94eb2c055492de0c8705327f9fbf--
