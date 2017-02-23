X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["774" "Thursday" "23" "February" "2017" "17:31:42" "+0100" "=?UTF-8?B?QsOhbGludCBSw6ljemV5?=" "balint@balintreczey.hu" "<CAK0OdpxiQO7Mt6TCSn-92D+nwnj3iJCwU4OTiuZ1=Kn5Rx_-xg@mail.gmail.com>" "23" "Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616" nil nil nil "2" "2017022316:31:42" "[oss-security] util-linux 2.29.2 fixes CVE-2017-2616" (number mark "U       balint@balin Feb 23   23/774   " thread-indent "\"Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616\"\n") "<20170223170848.17d43fb3@pc1>" ("<20170223074630.GB26098@suse.de>" "<20170223104054.42060545@pc1>" "<20170223100148.GA23394@suse.de>" "<D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>" "<20170223170848.17d43fb3@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19820 invoked by uid 550); 23 Feb 2017 16:32:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19800 invoked from network); 23 Feb 2017 16:32:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:sender:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=VxuTtkAF6mZQT82bNCot3ChBfnmZaWToh0O+OMpdjVg=;
        b=jLO6sgIHVCdeEB2OGBZtAwjydFJnR9FTkMfrzKjsWiISJdiNqD0DYUU4IZOGMlp/7/
         Agk2HydSyB6Nx/sYsVKOH3hOu8kE/fh+Rd/qtIF4Pzq4amMr4T+TnmH+eCRHPk2LCtoc
         WNTSoNq3CxS44lSySmsZyxdsyueM8qqqsCnwNEddsMYMGF1HQuFBU7zmO+j87InE69HZ
         V0JxcLZxCTm7D3kQl5j1vPDeblhLywop5ztPC6RqqZ3yJG1dUoSOqyhx+yEaChNpEEee
         JfmihL+Hcb4JQzrYvqTB5NvKyBxTWVvDSg8PFK09142YrZJoUFrqcvdZigip2SFvdqqS
         7U6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:sender:in-reply-to
         :references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=VxuTtkAF6mZQT82bNCot3ChBfnmZaWToh0O+OMpdjVg=;
        b=P9LPcJ+Fbvo5wdA5BgTS34ZgFLRjXA6/2wU4LbrGAhhY03GzApIVn7WLvtitceBLIp
         Uvlj0d99A+BH+CF7cDjblkgGJ/pDQN+saEgCdciig0AaFVFp4AWG+iTMYGnTjY0YdQGJ
         +ZMFMd6KDPdMFgRweXBA8nqTCW17wBOyPBubpTB335qoZ3Sbjvgcm1aUDU3aihNSd7BH
         XndK4mC5GWiVCxVPx2QVu82z/A3xNuL4vxv8mksR2awcVYh73972gXEKGsUzYUO9dsIh
         hkDlgRnXVJ2zB1BGTf+z2fY5Tipw7ZQwEOVrkBSsIn0B5MsoOXqOcdWdpK3G5YH8saR7
         thrQ==
X-Gm-Message-State: AMke39mDWNPskoRb39sUcHqilil/JMsNZhYRGQk+Yi0OYDPf9ulHDdKI/qon7jHqvEp7LDTFIBGeU+9qNfwp1A==
X-Received: by 10.223.165.138 with SMTP id g10mr31217993wrc.105.1487867522586;
 Thu, 23 Feb 2017 08:32:02 -0800 (PST)
MIME-Version: 1.0
Sender: rbalint@gmail.com
In-Reply-To: <20170223170848.17d43fb3@pc1>
References: <20170223074630.GB26098@suse.de> <20170223104054.42060545@pc1>
 <20170223100148.GA23394@suse.de> <D7FFF88A-2AA9-432A-9830-0DF662E32524@gmail.com>
 <20170223170848.17d43fb3@pc1>
From: =?UTF-8?B?QsOhbGludCBSw6ljemV5?= <balint@balintreczey.hu>
Date: Thu, 23 Feb 2017 17:31:42 +0100
X-Google-Sender-Auth: G4IrUIKtbxY-BaUxtCyr4kilC0A
Message-ID: <CAK0OdpxiQO7Mt6TCSn-92D+nwnj3iJCwU4OTiuZ1=Kn5Rx_-xg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] util-linux 2.29.2 fixes CVE-2017-2616

Hi,

2017-02-23 17:08 GMT+01:00 Hanno B=C3=B6ck <hanno@hboeck.de>:
> On Thu, 23 Feb 2017 07:56:51 -0500
> Assaf Gordon <assafgordon@gmail.com> wrote:
>
>> GNU Coreutils stopped installing 'su' by default in 2007,
>> and completely removed 'su' (including the 'su.c' source file)
>> in 2012.
>
> That's good to know, so now there are only 2 competing versions of su
> instead of 3 in major packages :-)
>
> Anyone have a good idea who is using shadow vs. util-linux su? Do they
> have specific advantages/disadvantages, would it be reasonable to try
> to get all distros to use them same one?

In Debian we are looking into switching to util-linux from shadow for
commands provided by both packages:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D833256

Cheers,
Balint
