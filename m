X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2143" "Wednesday" "25" "November" "2015" "14:49:16" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty2KagFAAbV02zSEgm_TrXg5b2ckHqLXbz2BG_dWZoH8ww@mail.gmail.com>" "53" "Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" "^Date:" nil nil "11" "2015112521:49:16" "[oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/" (number mark "U       kseifried@re Nov 25   53/2143  " thread-indent "\"Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/\"\n") "<5656263F.80101@gmail.com>" ("<CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>" "<20151125180702.6d3d075d@pc1>" "<CANO=Ty3=D5hum6sjTJhN4NjuhAH9yjLNDgDdsL3FXSeVwMOVdw@mail.gmail.com>" "<5656263F.80101@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30156 invoked by uid 550); 25 Nov 2015 21:49:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30133 invoked from network); 25 Nov 2015 21:49:28 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:content-type;
        bh=BOnY5vXrdcntuCEO2OihVky36XD9q9XtzWN+T//WjYU=;
        b=V8hw4hy559Gy9xRUvB4tDow3f41IxJcYW7cSOlyTMw1+BOjgvOfeCJ9to80HhEhZwc
         1B7NugoKDU74IebVocG/3o1Cpgz/LWYdDlLSp1zmXKjqTlUqll3xEhPTBG6A/Nh8/xuC
         OzplzNFVr4ya6XEU8waw4xMKlwl+itMCRdUy0bU21evGABfmK4/hvrs8vGYDnTB9nPjo
         o9xFJQqV2jRVW2lr8u5mvFnF9ecZPYlcrFYm0cJiz3ZG/0S6yMOsvmaEcqdGGCyPO69V
         jmmsB5ijq8RB/Z/Hv8LEVijAJfMWtZURFwYnyYNyy2ST674g5rsG3roD+a7YAugTAlcL
         92Ag==
X-Gm-Message-State: ALoCoQkb/BMGLN+9jJwy6Wg0WbsWwQfIjCtuMwRihbX/WhQ5Mz/FG9CwbMt99Sq29h53BEaGc4AJ
MIME-Version: 1.0
X-Received: by 10.129.98.130 with SMTP id w124mr2207834ywb.97.1448488156917;
 Wed, 25 Nov 2015 13:49:16 -0800 (PST)
In-Reply-To: <5656263F.80101@gmail.com>
References: <CANO=Ty2=+8uiYPoe06j3DEVd6uSBCNiaH5LoWyCqg18jWTZu6w@mail.gmail.com>
	<20151125180702.6d3d075d@pc1>
	<CANO=Ty3=D5hum6sjTJhN4NjuhAH9yjLNDgDdsL3FXSeVwMOVdw@mail.gmail.com>
	<5656263F.80101@gmail.com>
Message-ID: <CANO=Ty2KagFAAbV02zSEgm_TrXg5b2ckHqLXbz2BG_dWZoH8ww@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114707f80e34320525646ec0
Date: Wed, 25 Nov 2015 14:49:16 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Announcing https://github.com/RedHatProductSecurity/Certificates-Shipped/
To: oss-security <oss-security@lists.openwall.com>

--001a114707f80e34320525646ec0
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 25, 2015 at 2:21 PM, Gsunde Orangen <gsunde.orangen@gmail.com>
wrote:

> Totally reasonable, Kurt.
> Where would you actually see the border between what's in and what's
> out? Actually there are lots of (proprietary source) vendor products out
> there that are heavily built on open source (e.g. virtually all linux
> kernel based embedded devices)
> Not saying someone should go through the hassles to chase for it - but
> if the info is brought to you/to the repository...
>
>
So in short: only stuff that is Open Source licensed. Definitely things
that are fully Open Sourced (e.g. upstream project, or distributions like
Red Hat or Debian). If a proprietary vendor uses some OpenSource bits then
I'd be interested if the upstream project also ships it, so it would go
under that upstream listing. If it's stuff the proprietary vendors are
adding I'm not really interested, for two reasons:

1) proprietary/closed source vendors have a long history of doing silly
things, so it's a given they'll have problems here
2) the chances of getting them to fix it are low, so I'm simply not
interested in spending any time/resources on it.

If you want to create a project in GitHub that covers OpenSource bits used
in mostly proprietary vendors (e.g. Mac OS X) then feel free to, but again
for  a multitude of reasons I'm not interested in that side of the problem.



> Gsunde
>


Also as an example of what I am looking for I did an initial dump of Fedora
23 (all of it) we end up with about 83 packages containing certs/keys/etc.
Some are obvious (archlinux-keyring, debian-keyring, ca-certificates,
bind), some are embedded (mostly copies of the Mozilla CA cert stuff) and
some need more research. If anyone wants to add notes/data to them please
feel free.

https://github.com/RedHatProductSecurity/Certificates-Shipped/tree/master/distributions/Fedora/23


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114707f80e34320525646ec0--
