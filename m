X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1054" "Wednesday" "9" "September" "2020" "16:46:18" "-0400" "Vincent Batts" "vbatts@kinvolk.io" "<CAHp2X_RwPWOfr2uw7tbpL8omiLr=LsXt7_aPPfkPL-Y18aH+bg@mail.gmail.com>" "31" "Re: [oss-security] Contributing Back" nil nil nil "9" "2020090920:46:18" "[oss-security] Contributing Back" (number mark "U       vbatts@kinvo Sep  9   31/1054  " thread-indent "\"Re: [oss-security] Contributing Back\"\n") "<20200904022719.GB1119445@millbarge>" ("<CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>" "<20190714174509.GA8267@openwall.com>" "<CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>" "<CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>" "<20190715192801.GA12290@openwall.com>" "<20191105184228.GA27029@openwall.com>" "<CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>" "<20200903161427.GA15109@openwall.com>" "<20200904022719.GB1119445@millbarge>") nil nil nil nil nil nil nil "Re: [oss-security] Contributing Back" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7348 invoked by uid 550); 9 Sep 2020 20:52:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3479 invoked from network); 9 Sep 2020 20:46:41 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kinvolk.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=8piVymqiKV6sC3vsEY3sCqkJx2vqekcj6SgDJTnZN4s=;
        b=jUSL/sGlW6GVLW75/UIoM4kM7sWuRp3TIAxn1x1kImSrY+ZK2QodX82myaDf62M8P+
         FsY3u1+63em0gaxvCflJJxaCciKKFLPrcAH/Cyn3X0+N05M2NXGwI7g2RKOR26drG3Sb
         lAD49TchR35ugAHT/u+/vQ/uhf31sY/47odZc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=8piVymqiKV6sC3vsEY3sCqkJx2vqekcj6SgDJTnZN4s=;
        b=K9uNWRnCjwH80CNtuJpaeJZob5PG0Mr9WDGUR4Zfmk/ksv6ILr7umggDQ5c3q3KKTo
         MmgBQMmu2TNP425pCVZQlqB1077rwO8+Je3zoePf7/PNenKt13/NrRMV8h0ZWkIVfmAT
         pVU2ym8AKWKqWNeh1CM2qZjroIluptMlLhpxIyJ+oMhpfHEBdXGura8Wh/tX7g9th7ur
         32xyBcUD+t6yHrQf91R+kIWr7s+s8ElcVv0YTcBJagx1TjP915Q7DA4EgNp1lDO6valb
         CtzQUaSVlb0DedOLq+dm+gUQlGy/h1pBusVw2UaZxBacV3Xzn76Vgvt/PNbjCR4Gq71e
         U6QA==
X-Gm-Message-State: AOAM530RCt21S4DoBiAQo9DgRHn67nPSNO20/dnNwMlyW74zbYg5qiC5
	5aEkX5t65hEhdSjpjypsR1mLnGwfq5cmI7rIyo8Wm01GEnPSmg==
X-Google-Smtp-Source: ABdhPJwEKbyi/WG/rK7yhEMdiFeiPVZIKgYfLeCSrKDe4HXMCNXxzxR+sgAKucmAUi8su4L1yoda3aBDe0EZvfhmheI=
X-Received: by 2002:a50:875b:: with SMTP id 27mr5923081edv.117.1599684389521;
 Wed, 09 Sep 2020 13:46:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAPsnWaD_9QOiV+513eH=ECkwBo+AWN38N9x7xauKcFyVpvc-Og@mail.gmail.com>
 <20190714174509.GA8267@openwall.com> <CAPsnWaD3YKPx6hnLoEmfM5VdKqFHrTKjvqRo1uG=8U1xU70-+Q@mail.gmail.com>
 <CA+aC4kuU2KVonpSER4rPb5asFR+gw8t0RAWXX7Di=4nDEJQnJw@mail.gmail.com>
 <20190715192801.GA12290@openwall.com> <20191105184228.GA27029@openwall.com>
 <CA+aC4ktDM9-TmhOOKx_C7zSZbKnAJVVe4XSLCGXvaY59q+vBzA@mail.gmail.com>
 <20200903161427.GA15109@openwall.com> <20200904022719.GB1119445@millbarge>
In-Reply-To: <20200904022719.GB1119445@millbarge>
From: Vincent Batts <vbatts@kinvolk.io>
Date: Wed, 9 Sep 2020 16:46:18 -0400
Message-ID: <CAHp2X_RwPWOfr2uw7tbpL8omiLr=LsXt7_aPPfkPL-Y18aH+bg@mail.gmail.com>
To: oss-security@lists.openwall.com, Solar Designer <solar@openwall.com>
Content-Type: multipart/alternative; boundary="000000000000ca5bac05aee78b87"
Subject: Re: [oss-security] Contributing Back

--000000000000ca5bac05aee78b87
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 3, 2020 at 10:28 PM Seth Arnold <seth.arnold@canonical.com>
wrote:

> On Thu, Sep 03, 2020 at 06:14:27PM +0200, Solar Designer wrote:
> > So from this point on, I'd actually expect Ubuntu or/and Flatcar
> > Container Linux to state something on task 5 for each issue reported.
>
> Will do.
>

Likewise, we will do our best to respond as well.
The breadth of testing forks or similar implementations is something we're
still getting a grasp of, as Flatcar distribution is comprised of a minimal
set packages as compared to many Linux distributions.

--=20

Vincent Batts
---
Kinvolk GmbH | Adalbertstr.6a, 10999 Berlin | tel: +491755589364
Gesch=C3=A4ftsf=C3=BChrer/Directors: Alban Crequy, Chris K=C3=BChl, Iago L=
=C3=B3pez Galeiras
Registergericht/Court of registration: Amtsgericht Charlottenburg
Registernummer/Registration number: HRB 171414 B
Ust-ID-Nummer/VAT ID number: DE302207000

--000000000000ca5bac05aee78b87--
