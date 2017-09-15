X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1107" "Friday" "15" "September" "2017" "12:40:06" "+0000" "Ben Seri" "ben@armis.com" "<CA++9HO9fwy-w1HqYF3Jpu_+makXOf1_dzy=U0KQjzQ=r20shnQ@mail.gmail.com>" "33" "Re: [oss-security] Linux BlueBorne vulnerabilities" "^Cc:" nil nil "9" "2017091512:40:06" "[oss-security] Linux BlueBorne vulnerabilities" (number mark "        ben@armis.co Sep 15   33/1107  " thread-indent "\"Re: [oss-security] Linux BlueBorne vulnerabilities\"\n") "<20170915123125.GA29130@openwall.com>" ("<CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>" "<20170914121219.GW11536@dhcp-25-225.brq.redhat.com>" "<CA++9HO8FVAQw-oPFzqQUdOX6MnyP0s681grArPSPusGHAmChQA@mail.gmail.com>" "<20170914212638.GA26968@openwall.com>" "<CA++9HO-W2feM80=KZ_ifdAiL2jvMLJ3ENsqBaadg5E=apBVwxA@mail.gmail.com>" "<20170915123125.GA29130@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15727 invoked by uid 550); 15 Sep 2017 12:40:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15704 invoked from network); 15 Sep 2017 12:40:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=armis.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ueWwu95NuZ9Sjco6auEcNlEUNefnmomOJXsTPyWfvzU=;
        b=gXczfRARLmpLLGEPLL/WqV8o9ePtO07jRGnK7Jv1AsOxEZ5u6ohvCwFAjWPpJ54onB
         m3xwPzAHnv2VVSCujwn5YNwq3Zvr6p901wEJiKCRUgV7EHXUkQwRwtMW73InzPqteQEs
         6DpM3g0I/+bEa2Ey1onty9M0oPoUYXFFWJfxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ueWwu95NuZ9Sjco6auEcNlEUNefnmomOJXsTPyWfvzU=;
        b=IiRmAYe9sNsxjDsfJxgEj3jW3KRQ2BnXERWuNm8TcPydNxqXZn9Vv8EPILqVRfQSAR
         ZX2eo8TPnkKzXoPZ7xeTQz+KHsfFpVUsRneqrrn23JlOnI8anxvs+GZVuNz/awTxXMG/
         s9RlG6zbW/nEEIgcc7CQHXixy1L6Zuy7Wdnwrry3+X7lTq2UTjw3J6VXjwvdnzoNgELh
         hEyxXbcs+ULj8JuuLdEo2vbQPzocndy2oJX9lW03hakU3XwZvgmm5P8WTJABNIYaXwJN
         h9MQCJ+omUPPdn1EK7WBnqgmmPbbgd6ZRHtNF5bTkgXhm80RGyK3pRBwTp/94kmJW3ls
         n9XA==
X-Gm-Message-State: AHPjjUgusEajd+fEXfXfad+KoThuYyLZpsnZu12QuE2l5NbZoZfklXPN
	OXillsIEuRl0GEru2LF+RilmHrH8JWPUJHQjFY/XPg==
X-Google-Smtp-Source: ADKCNb5DquhSR76RVLqxuNoU+2epKABASbVOb5Ow+0PnpZoIL+LJD8nuUiAxj7lpP3eXzOd4mdVofdAa2AfqvwwBEao=
X-Received: by 10.80.204.10 with SMTP id m10mr13662620edi.73.1505479216911;
 Fri, 15 Sep 2017 05:40:16 -0700 (PDT)
MIME-Version: 1.0
References: <CA++9HO8J91=AAqH6cUkYOi=AWpw=FXD7sajp2mQkdD66AO3WBw@mail.gmail.com>
 <20170914121219.GW11536@dhcp-25-225.brq.redhat.com> <CA++9HO8FVAQw-oPFzqQUdOX6MnyP0s681grArPSPusGHAmChQA@mail.gmail.com>
 <20170914212638.GA26968@openwall.com> <CA++9HO-W2feM80=KZ_ifdAiL2jvMLJ3ENsqBaadg5E=apBVwxA@mail.gmail.com>
 <20170915123125.GA29130@openwall.com>
In-Reply-To: <20170915123125.GA29130@openwall.com>
Message-ID: <CA++9HO9fwy-w1HqYF3Jpu_+makXOf1_dzy=U0KQjzQ=r20shnQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary="f40304392f04f0ed18055939b132"
Cc: oss-security@lists.openwall.com
Date: Fri, 15 Sep 2017 12:40:06 +0000
From: Ben Seri <ben@armis.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux BlueBorne vulnerabilities
To: Solar Designer <solar@openwall.com>

--f40304392f04f0ed18055939b132
Content-Type: text/plain; charset="UTF-8"

I agree. And I wish all vendors had such short time frames for releasing
patches.
Unfortunately this is not the case.

On top of this, it was unclear to us whether the linux-distros mailing list
would be able to coordinate the kernel patch, so we chose to contact both
lists, which required the 7 day embargo period.

In any case, we respect the need for a short embargo period, and in this
case we disclosed the issues 7 days prior to publication.

Ben.

On Fri, Sep 15, 2017 at 3:31 PM Solar Designer <solar@openwall.com> wrote:

> On Fri, Sep 15, 2017 at 12:28:11PM +0000, Ben Seri wrote:
> > Our thought is that since these issues affect multi vendors that are
> using
> > Linux, the longer the embargo period, the better chance there is a
> > coordinated patch goes out to as many users as possible once the embargo
> is
> > lifted.
>
> Indeed, but it's 2017, not 1997.  14 days is considered a long embargo
> period now.  Unnecessarily long embargoes hurt more than they help.
>
> Alexander
>

--f40304392f04f0ed18055939b132--
