Received: (qmail 11697 invoked by uid 550); 30 Mar 2024 19:53:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11676 invoked from network); 30 Mar 2024 19:53:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711828404; x=1712433204; darn=lists.openwall.com;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b52eZp4wH3U5GWunxF7XZvN+yT69gSm42LdeZTByoqU=;
        b=OjeIbOirMZx0MlM57TB8vH6WVb9aBr59srA21i0C1XOXyVA8Xae3wEhI8xUo7wHl24
         UNpov+kfTw2+VYQudLUmLpmcgcD673Lvl4OqceF871fvOZ98PsEvt+InT6yrXlyTsGte
         D8Jkai22bBD3qYs89MLWOVDL1gyJAmIe0Z4XD+i9bcLeiYtiUZfu/F4MaVsWiU1Ei2B9
         BIoEq4fRWzq7KFNZBY0chzgDkPlG+kRJewHYZuMhsrPfoRCM88RhXOk+75iiGDqY6vz3
         vOEpo7cAkBZN+bFtF4XKtxzqSPCQ8BtwbplimZuorBI7LmNS11BuDxA/xEkyLgC1LZ3f
         2gJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711828404; x=1712433204;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:sender:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b52eZp4wH3U5GWunxF7XZvN+yT69gSm42LdeZTByoqU=;
        b=BHe1KMB7z/Vjva7x5yiP3Ej/1iivYydcOSmTSw93LK4aGht5WxbCcUhHnJO1FvcCKW
         lauJ612R6AVAyZKG5xsE6sUL7/eeWsyeJ6Xe1/QduDJl6gdRwJCJmVSRrl97gMpdvBsD
         BGLNdfWMxouKm+sjNH+pF2picUwgI5RDI3Wx7lx8cmIshuIYY1ZCiWKmFx3ZQXo1jC9R
         O0dXsFVilkgs+b8e2kpMBKNozz4pG++TpGPBrkpTm10fovmadjTOrrw6mvDwJ+AJVinD
         epZDmafDvX8eY0mfQ7MuJHCu04YNIsQ4ieAegB7iZ25NDJcMaWskf4yWRVkc9wZFw9xE
         tgSg==
X-Gm-Message-State: AOJu0YzsWUaIY3YfMuZJiPJykXy0O38L4BL3+Ftm5TGJDsbMgUJVd8W8
	LNIyWHoUhXWCM148FLVo2xB+/U8z2r5LM1o3f/w4lNcs0wt4urI3auv7P2OnpB0=
X-Google-Smtp-Source: AGHT+IFa4lzjslSgeqcAvMyHZvUvHdCmA9N2wJFR8ZJkJyU9Hxm6PVJBMYroDMhS1slm2icQ22OGcw==
X-Received: by 2002:a05:6512:2815:b0:515:d176:7dfa with SMTP id cf21-20020a056512281500b00515d1767dfamr4744104lfb.64.1711828403866;
        Sat, 30 Mar 2024 12:53:23 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Date: Sat, 30 Mar 2024 20:53:22 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
To: oss-security@lists.openwall.com
Message-ID: <ZghtskCfXEx8Qwx3@eldamar.lan>
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <CAN_LGv3GAmdpaXVCjwp1UAH_Z6KKDnqydj68Oj4jmXRwwPE=Uw@mail.gmail.com>
 <20240330190606.x3bndyr7gyqytmvo@sym.noone.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240330190606.x3bndyr7gyqytmvo@sym.noone.org>
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

Hi,

On Sat, Mar 30, 2024 at 08:06:06PM +0100, Axel Beckert wrote:
> Hi,
> 
> On Sat, Mar 30, 2024 at 07:00:42PM +0800, Alexander E. Patrakov wrote:
> > As GitHub has disabled the repository, the commit links in the
> > original message no longer work. One of the remaining mirrors is
> > https://git.rootprojects.org/root/xz
> 
> Note that this is not a mirror of the adversary controlled git repo on
> Github but a mirror of https://git.tukaani.org/xz.git which is
> controlled by the original maintainer according to
> https://tukaani.org/xz-backdoor/. (And that repo is still there, too,
> even if it gives a 403 Forbidden when accessed with a web browser. You
> can still "git clone" from it.)

As a side note for an alternative: there is the Software Heritage
archive  project which has as goal:

> The long term goal of the Software Heritage initiative is to collect
> all publicly available software in source code form together with its
> development history, replicate it massively to ensure its
> preservation, and share it with everyone who needs it. The Software
> Heritage archive is growing over time as we crawl new source code from
> software projects and development forges.

As such for the analysis it is possible to use as well
https://archive.softwareheritage.org/browse/origin/directory/?origin_url=https://github.com/tukaani-project/xz

Regards,
Salvatore
