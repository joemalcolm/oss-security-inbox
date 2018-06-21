X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["450" "Thursday" "21" "June" "2018" "12:28:33" "+0200" "Lukas Odzioba" "lukas.odzioba@gmail.com" "<CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>" "8" "Re: [oss-security] Intel hyper-threading security issues" "^Cc:" nil nil "6" "2018062110:28:33" "[oss-security] Intel hyper-threading security issues" (number mark "        lukas.odziob Jun 21    8/450   " thread-indent "\"Re: [oss-security] Intel hyper-threading security issues\"\n") "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>" ("<CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>" "<20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$>" "<20180621093754.GY53290@symphytum.spacehopper.org>" "<CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32374 invoked by uid 550); 21 Jun 2018 10:29:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30565 invoked from network); 21 Jun 2018 10:29:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zJJrxmOC/HDO39af20M0YQhZh6NFTs9Tr6H73/F6goA=;
        b=kp4yp5R4Au7AN0XlHVvhX3RiyVp8QPIy7RDyLrv0idSm84FaoOdvuRnmCf0Xyff+Je
         4+QVsVpCmhC7FXvlEPtSL9MfHLF0/S+efAkYJ5+lfZrsqnVhF4kr6BcdsPdZU4/Qqf+4
         ftI8C09F7A7LgJI5JSxcOue6tF/+XKX1DmHYl6muoVpuGhioqHZyq0cbfo+NQ/zLwbLC
         I5MIMjgFuRiFX8MTSGrpO55IhHSE3dMAtkLHFFsHP3NuX31vRh6CCNch2wggPEu2YLfM
         Gwgmyz48lUk8lnL2Pj5YGZOpRL/YSNreeX3GKfjJnQcQJvSotEhf3X8Bp5bqzXSvokjV
         62Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zJJrxmOC/HDO39af20M0YQhZh6NFTs9Tr6H73/F6goA=;
        b=tL0p5zF7cDQSC1uaiDLYkyxCuyhYIQbTPw42kHOdomXp5h7Rx1YWJ56QsmC0wM5sag
         6ekV3mNjqMZDDu6/+3YLkS5JEe/tq/JpD+9A9mvqynWv6XmzZSrC0dIQnuBsvDlRdkS9
         UcEnVZCS/k7aShKUYFeYV7z7MxKFMCouLIR+ebcXhNHJ9AWEw2+Gqq+D8ont/hBCgTvB
         Kg8rSHcHqLKiwEM9cqRYXpohsp1tZmH4LNyPZwuji4ayJ99pNmQj4hAYnBHMqGXv6FCh
         F/oF0wEUJ/CMJSmRsiefeLJNBqX57VGUpKiH75wjxnTOePxTKHKNAvFcKAXaZvAav5Un
         Gl2A==
X-Gm-Message-State: APt69E1JV+vljCOP4soSl2l2bkxyBtKNjzF+Ks34D4N9bWqN4FHrFOIt
	pIzcNkfgBsjB553QH/nvn4SuFne+XknermuF5VFeafr8
X-Google-Smtp-Source: ADUXVKJvkSwgdMEvZav7Fpu5m0mtGf3aS2mVJ4rLix7a41zCiCtYf4kSSa3XuBfM8AeXApeexaza8UG8egvgdBkegfE=
X-Received: by 2002:adf:c444:: with SMTP id a4-v6mr22237555wrg.20.1529576933757;
 Thu, 21 Jun 2018 03:28:53 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>
References: <CAOp4FwSEi=_bNCMoiK66r4Y2QQToJgZyBjUX74s0omQ+whCS-w@mail.gmail.com>
 <20180621045642.fy67joeaxu2n4j56@sivokote.iziade.m$> <20180621093754.GY53290@symphytum.spacehopper.org>
 <CABob6iqkc7x7awz-aMAb-yOHWKdWgnQF0rkPYdporiUmGCkc5Q@mail.gmail.com>
Message-ID: <CABob6iqHuN+tVuxf9ibUh6Xx=j4AChRNygMXzR0nHcr1ogUtmA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Cc: secure@intel.com
Date: Thu, 21 Jun 2018 12:28:33 +0200
From: Lukas Odzioba <lukas.odzioba@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Intel hyper-threading security issues
To: oss-security@lists.openwall.com

2018-06-21 12:22 GMT+02:00 Lukas Odzioba <lukas.odzioba@gmail.com>:
> If you feel like you really need that, on Linux you can dump SRAT ACPI
> table decompile it, remove APICID entries of "ht processors", compile
> it back and put into initrd.
> https://www.kernel.org/doc/Documentation/acpi/initrd_table_override.txt

Or use cpu hotplug mechanism, which should be way more convenient:
https://www.kernel.org/doc/html/v4.17/core-api/cpu_hotplug.html
