X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2605" "Monday" "8" "February" "2021" "15:00:18" "+0530" "Rohit Keshri" "rkeshri@redhat.com" "<CAKx+4-qGABkT2ssKnXPrGY2_1BT0RKxr+-XiDnBcB0yFCP8mJw@mail.gmail.com>" "108" "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil "2" "2021020809:30:18" "[oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" (number mark "U       rkeshri@redh Feb  8  108/2605  " thread-indent "\"Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature\"\n") "<CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>" ("<CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>" "<CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28148 invoked by uid 550); 8 Feb 2021 12:19:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19680 invoked from network); 8 Feb 2021 09:30:51 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612776639;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=V74c48FOqZUa0Uyq9lJ//qJwzM/AdOJzGla5UCKRO54=;
	b=h0RgUfeJ+x53BVAjmxvBYnG+4+w16mnlPvMz5o31QA9EpOE0O7rxnMEGwvStN8txkQf3TA
	fUJRgvJjUKJw7EPyOST3m6wky6hNULQERrX9wb9CBqMa7n9akuQf8pHUNmSoDYjzhwihk+
	DDx76wNrcfkK/6Vl3KKNwHOVjOPpZsY=
X-MC-Unique: 25uY1I8NMpKrk_7Ow8tVWg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=V74c48FOqZUa0Uyq9lJ//qJwzM/AdOJzGla5UCKRO54=;
        b=dMLuCargVXjgYDump06TnA9TO4mHVJVOTfGtSzDCl2uuC7KaK8xnR2qIowWBuTynpm
         NaqBdZ9FmP61QXVZwRIAJCvDIgQTPATn93LL9ZVo+7yT5c/EV1SCKG2epiPLet7g8bI0
         8Q+lwOLeIxEquI1QfJCtXyUdimBwCYqdbt0YcLgvHHXtEoMic+EtaesyF2RqVjdSwBkg
         /FEEli738e7ZrOcAzRj372Fs1Nkibb4aLuFd3+fRpL/NmmcxtOK496ZTdGfWUlwzJ2CD
         GKY3DkzSC90q7wVb9A1C1weWog5gAI6NlUjJyjNk7c4DxbdoPzxF9H1GH4BNhlfIZIyU
         efhA==
X-Gm-Message-State: AOAM533EF9jwwD36oLOVEHbUFPxuf/6OrAsGmsZXMEOGG2Khqt/lvJjE
	7ymDl8ll2TMKoqgp21iIFIRktdfO1RVpLyuab0mjdJPDKVzgZfj2ff8hM7G67qFE8YnfxhHwqC/
	hVEDL5oCyWn+Jetg+tGrZ9d/D1hI2kG7mLi2YTzGankad
X-Received: by 2002:ac2:4ada:: with SMTP id m26mr9891952lfp.662.1612776633969;
        Mon, 08 Feb 2021 01:30:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwPB+IWBB267w0GzcThGGz3KwZLapoNth1+lxGYEWSghZ6jqtvJbz6DyvOkGngGJNxNkY2xJmUc2VNtkEra6sQ=
X-Received: by 2002:ac2:4ada:: with SMTP id m26mr9891943lfp.662.1612776633750;
 Mon, 08 Feb 2021 01:30:33 -0800 (PST)
MIME-Version: 1.0
References: <CAKx+4-p+SyakmdxCd0XDm-1U3inx6uMdCNbhg_Y6270aXkaNJg@mail.gmail.com>
 <CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>
In-Reply-To: <CAFRnB2W5J+vibKP58U36UJkq=G1BAzSLKtNHqodgi+LAhkrvNg@mail.gmail.com>
From: Rohit Keshri <rkeshri@redhat.com>
Date: Mon, 8 Feb 2021 15:00:18 +0530
Message-ID: <CAKx+4-qGABkT2ssKnXPrGY2_1BT0RKxr+-XiDnBcB0yFCP8mJw@mail.gmail.com>
To: oss-security@lists.openwall.com, alex.gaynor@gmail.com
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=rkeshri@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000005b70c905bacfd2a2"
Subject: Re: [oss-security] CVE-2021-20226 kernel: use-after-free in io_uring feature

--0000000000005b70c905bacfd2a2
Content-Type: text/plain; charset="UTF-8"

Hello,

The flaw CVE-2021-20226 is identified as a use-after-free problem with
breach to data integrity, confidentiality and system availability, and
this may even cause escalated privileges with good troubleshooting
skills.


I also wanted to add that the affected souce (as was reported for
kernel v5.7.0) has been modified from v5.10 kernel version with patch
233295130e53 with following cleanup details.

~~~

$ git show 233295130e53
commit 233295130e53c8dfe6dbef3f52634c3f7e44cd6a
Author: Pavel Begunkov <asml.silence@gmail.com>
Date:   Sat Oct 10 18:34:06 2020 +0100

    io_uring: clean up ->files grabbing

    Move work.files grabbing into io_prep_async_work() to all other work
    resources initialisation. We don't need to keep it separately now, as
    ->ring_fd/file are gone. It also allows to not grab it when a request
    is not going to io-wq.
..

$ git tag --contains 233295130e53
v5.10
v5.10-rc1
v5.10-rc2
v5.10-rc3
v5.10-rc4
v5.10-rc5
v5.10-rc6
v5.10-rc7
v5.11-rc1
v5.11-rc2
v5.11-rc3
v5.11-rc4
v5.11-rc5
v5.11-rc6
v5.11-rc7

~~~

Regards,
..
Rohit Keshri / Red Hat Product Security Team
PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D

secalert@redhat.com for urgent response


On Mon, Feb 8, 2021 at 2:37 PM Alex Gaynor <alex.gaynor@gmail.com> wrote:

> Hey,
>
> Your message says that this is a DoS, however the ZDI page says it's a
> priv-esc. Which is right?
>
> Alex
>
> On Fri, Feb 5, 2021 at 10:00 AM Rohit Keshri <rkeshri@redhat.com> wrote:
> >
> > Hello Team,
> >
> > A use-after-free flaw was found in the io_uring in Linux kernel, where a
> > local attacker with a user privilege could cause a denial of service
> > problem on the system
> >
> > The issue results from the lack of validating the existence of an object
> > prior to performing operations on the object by not incrementing the file
> > reference counter while in use.
> >
> > The highest threat from this vulnerability is to data integrity,
> > confidentiality and system availability.
> >
> >
> > 'CVE-2021-20226' was assigned by Red Hat.
> >
> > This issue was reported by Ryota Shiga of Flatt Security Team.
> >
> >
> > Reference:
> >
> > https://www.zerodayinitiative.com/advisories/ZDI-21-001/
> >
> >
> > Thanks and Regards
> > ..
> > Rohit Keshri / Red Hat Product Security Team
> > PGP: OX01BC 858A 07B7 15C8 EF33 BFE2 2EEB 0CBC 84A4 4C2D
> >
> > secalert@redhat.com for urgent response
>
>
>
> --
> All that is necessary for evil to succeed is for good people to do nothing.
>
>

--0000000000005b70c905bacfd2a2--

