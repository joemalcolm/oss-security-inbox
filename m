X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1162" "Wednesday" "5" "October" "2016" "10:04:03" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>" "29" "Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" "^Date:" nil nil "10" "2016100517:04:03" "[oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems" (number mark "        taviso@googl Oct  5   29/1162  " thread-indent "\"Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems\"\n") "<CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>" ("<CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>" "<20161005184753.417dd846@pc1>" "<CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12200 invoked by uid 550); 5 Oct 2016 17:04:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12182 invoked from network); 5 Oct 2016 17:04:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=zso0ZAN6NuMTwQxsv57MfeMLzzyg31IzpLr3Sglld+I=;
        b=MAA8b19TuKwEUGQ+SmaFLgynwyFZvin7Svk0yqRzVoFXCkQireOMq7tG71l7t9OU5L
         CJ3lAqPfqLbPKfddJ4fM/Yz/xlUt46aFLnfy5gDQuLLpzwMzgT0JB2OGTxstPfqQDJ3x
         f70ytYNTFZKjLCOm+yOThClbb6CsY0sBctw/JbrzImGMSm1DW+m3JrxptQBzxGPQhsIM
         zTz7n+HR4z2yxXV39FcYL4yr+L4PE4IJF2Yzb6KKg2SrQ6wSI4aP2jSC/QmFnUReeP/g
         DgtBPjZi7g1OW/ZOeaXsKK3zPRh5dXGj1j7M4RwliBw0SuqvY/ggHMq8VdJzmUGgR7E5
         qjfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=zso0ZAN6NuMTwQxsv57MfeMLzzyg31IzpLr3Sglld+I=;
        b=mTDIJguO+q1JzW1DdbaxNSWSKHHTS5mhVVCtgqzRfGLUptmax2SXFmq8Gkbq8jqzit
         UZ85ecDVUfS4slcfrNhNB2fkPzv9sL0T8/yIrdYOFq8bv9vZF8f2nLjf9SiqONPZtQ8H
         Ny8T0h/2dtOC52yWdfDuIZW6YlLnPW1BlGr/0l80vrsTLHsORvjdbJkogc/VZW/ppzJY
         1BR0Ds8w9br6Eo5D2dpocPekP9dRnP1dA2e2bqzQgLxxX26Uwi2idsWr49isk2jo/NfC
         6u8mz5L+2pa8AXDQ9edSTSl0WxEZ6bA+5hu22fTWBczzO9vtu5rxQ80GBlkFf3k1rn47
         58BQ==
X-Gm-Message-State: AA6/9RnlSic8kBfCeHAOtRMLjajRtDGYgzGOYaFA2O4zKEl0wokHZ3xf7EVYTH9U59ayAtHQgJmlWE5N6HDk/6Le
X-Received: by 10.176.64.39 with SMTP id h36mr7714087uad.12.1475687063734;
 Wed, 05 Oct 2016 10:04:23 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>
References: <CAJ_zFk+f8Q-4UQt0gv6X_v_gSb12UVVVQ1knJBdZjpA=MQ-S5w@mail.gmail.com>
 <20161005184753.417dd846@pc1> <CAJ_zFk+YYbsEy0EjPU+sgi3pamZt7jqjBLFS8JOeWjmGM=1a_g@mail.gmail.com>
Message-ID: <CAJ_zFkJWWkqpKthw6u_YZn4hOiT0jJRy97StVD9WUtoOGGyUHA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 5 Oct 2016 10:04:03 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request - multiple ghostscript -dSAFER sandbox problems
To: oss-security@lists.openwall.com

On Wed, Oct 5, 2016 at 9:54 AM, Tavis Ormandy <taviso@google.com> wrote:
> On Wed, Oct 5, 2016 at 9:47 AM, Hanno B=C3=B6ck <hanno@hboeck.de> wrote:
>> On Wed, 5 Oct 2016 09:13:03 -0700
>> Tavis Ormandy <taviso@google.com> wrote:
>>
>>> If you're using ImageMagick, I would recommend disabling the PS, EPS,
>>> PDF and XPS coders in policy.xml. Applications like gimp, evince,
>>> claws, and most other applications that generate thumbnails of PDF/PS
>>> documents should probably not do so without a prompt (NOTE: A lot of
>>> packages do this
>>
>> I was surprised to see evince in this list. It uses poppler for pdf and
>> libspectre for postscript, so there seems to be no use of
>> ghostscript (maybe in an older version).
>> Also for claws the only use of ghostscript is in a plugin that's not
>> enabled by default.
>
> It might be an old version but the version I have on RHEL7 and Ubuntu
> LTS both invoke gs by default.
>
> $ evince --version
> GNOME Document Viewer 3.14.2

Oops, I think I may be wrong about that, I just saw that some of my
test cases repro and assumed it was using ghostscript.

Maybe there are poppler issues as well, sigh.

Tavis.
