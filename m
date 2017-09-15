X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1749" "Friday" "15" "September" "2017" "12:28:11" "+0000" "Ben Seri" "ben@armis.com" "<CA++9HO-W2feM80=KZ_ifdAiL2jvMLJ3ENsqBaadg5E=apBVwxA@mail.gmail.com>" "45" "Re: [oss-security] Linux BlueBorne vulnerabilities" "^Date:" nil nil "9" "2017091512:28:11" "[oss-security] Linux BlueBorne vulnerabilities" (number mark "        ben@armis.co Sep 15   45/1749  " thread-indent "\"Re: [oss-security] Linux BlueBorne vulnerabilities\"\n") "<20170914212638.GA26968@openwall.com>" ("<CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>" "<20170914121219.GW11536@dhcp-25-225.brq.redhat.com>" "<CA++9HO8FVAQw-oPFzqQUdOX6MnyP0s681grArPSPusGHAmChQA@mail.gmail.com>" "<20170914212638.GA26968@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19754 invoked by uid 550); 15 Sep 2017 12:28:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19729 invoked from network); 15 Sep 2017 12:28:42 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=armis.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=4uvpwtxC8Yd6RG2QBcVy1ueLfCyzwgWynK+Qo60JH+M=;
        b=iOkp+1uQ8l/wGfpOV6TqRLPvNE2ql9pSjjTk605jme8yGCUTblB8RaJ4xPDmkTWl0o
         nmyp+44rrpsIYu4ERzRM4rbjTn6utoMsfjJcYn17fYyUlELCQrOLfJfuXWh5m3MUjpCV
         K2ZmE5FYTdkeZXnLdJIF/A6WDD3PUA6h+zq9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=4uvpwtxC8Yd6RG2QBcVy1ueLfCyzwgWynK+Qo60JH+M=;
        b=DYVK3LTWUrqi/bwkPdVUznPcPmzKxmiujFue78N2Cpax43pe2D6iessk5tddxV1yVR
         tnNjTdVRS5k8FfmgjsdNJ8lhfgcUIyFv5H9Mv748RucF3Xvl3QCUfQnIkRh/+Dznuakc
         w4ugQChijKJAlBEyXTZGlmVSzppInne1H1/cyWm4NvIkpAaXqzS/MhBBnaSzgyXbPlHc
         0O40QG/MGeIFEnoCdJwFEMslZD5PDvm6kh50kmvqMPjL/sym9argT06tDf9mvhemkrAt
         2AaGsdQAcXZS55ENF3t/tYn8VKEMIpsUPSzspAG5zVm5jA2edN9/EEjr4rg4N3BlwO6a
         /e2Q==
X-Gm-Message-State: AHPjjUi0Vxn5ssrhKv0MRCx43lwhSVuGAkQ37i1xs/+v8s5RC2zWYKbo
	ZYPHX1CSt+6HEHrtZ2FMBRAUnSXqiqOhRTXPZI3J6A2m
X-Google-Smtp-Source: ADKCNb7m9I3PXwMcf4O/0XdzG/djNRz/CnW4EZCLRBHhXaN82DqLxnOGfIcHkIR1ORYb88ut7xJYCsKUJByzQvIIO9w=
X-Received: by 10.80.169.11 with SMTP id l11mr12139339edc.126.1505478502149;
 Fri, 15 Sep 2017 05:28:22 -0700 (PDT)
MIME-Version: 1.0
References: <CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>
 <20170914121219.GW11536@dhcp-25-225.brq.redhat.com> <CA++9HO8FVAQw-oPFzqQUdOX6MnyP0s681grArPSPusGHAmChQA@mail.gmail.com>
 <20170914212638.GA26968@openwall.com>
In-Reply-To: <20170914212638.GA26968@openwall.com>
Message-ID: <CA++9HO-W2feM80=KZ_ifdAiL2jvMLJ3ENsqBaadg5E=apBVwxA@mail.gmail.com>
Content-Type: multipart/alternative; boundary="94eb2c0c3a3c56849b05593987a0"
Date: Fri, 15 Sep 2017 12:28:11 +0000
From: Ben Seri <ben@armis.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux BlueBorne vulnerabilities
To: Solar Designer <solar@openwall.com>, oss-security@lists.openwall.com

--94eb2c0c3a3c56849b05593987a0
Content-Type: text/plain; charset="UTF-8"

Hi Alexander,

Our thought is that since these issues affect multi vendors that are using
Linux, the longer the embargo period, the better chance there is a
coordinated patch goes out to as many users as possible once the embargo is
lifted.

Armis Labs

On Fri, Sep 15, 2017 at 12:26 AM Solar Designer <solar@openwall.com> wrote:

> On Thu, Sep 14, 2017 at 08:14:03PM +0000, Armis Security wrote:
> > On August 15th we have contacted one of the senior maintiners of BlueZ
> and
> > attempted to establish a longer embargo period with him. Unfortunatelly
> his
> > suggestion was to post our findings to linux-bluetooth@vger.kernel.org,
> > which is a public mailing list.
>
> While I understand you not wanting to post to a public mailing list
> right away, why exactly would you have wanted a longer embargo than e.g.
> linux-distros' maximum of 14 days?
>
> > So we decided to disclose our findings to the secure mailing list that
> > unfortunatelly only have a maximum of 7 days embargo periods.
>
> You're probably referring to the Linux kernel security list.  7 days
> sounds like a reasonable embargo period to me, but if you really wanted
> more, you could get up to 14 by first contacting linux-distros only, and
> then bringing the issue to the Linux kernel security list in no more
> than 7 days to the planned public disclosure.
>
> > I am happy to hear the red hat security team allows for longer embargo
> > periods, and we will contact you directly in the future.
>
> I hope you will only go for a longer embargo when there's actually a
> good reason for that.  There might or might not have been in this case.
>
> Alexander
>

--94eb2c0c3a3c56849b05593987a0--
