X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["752" "Monday" "22" "May" "2017" "15:13:42" "-0600" "Kurt Seifried" "kseifrie@redhat.com" "<0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>" "25" "Re: [oss-security] How to request a CVE for open source projects" "^Date:" nil nil "5" "2017052221:13:42" "[oss-security] How to request a CVE for open source projects" (number mark "        kseifrie@red May 22   25/752   " thread-indent "\"Re: [oss-security] How to request a CVE for open source projects\"\n") "<20170522194526.GC63527@wopr>" ("<1495476334.15944.2@mail.igalia.com>" "<20170522185720.GA13059@suse.de>" "<20170522194526.GC63527@wopr>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20383 invoked by uid 550); 22 May 2017 21:13:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20362 invoked from network); 22 May 2017 21:13:55 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
         :subject:message-id:references:in-reply-to:to;
        bh=hdO5KX1EnpWSsbF6UmGAw/+Vjgs/E1LAALyFrexyywM=;
        b=LAhK/r3II4PnyVreP80HdQUIrEVRboyjab2qIIVZsF9tz5GYHitsaIidYNrxfgU32O
         IasCt48qO+SD5DXxPVFaWJpQ2AoNHxdrPnhtye1YX//71o4C3/Cdw4atgvjbZpAosCEG
         aKucvljtGdPo9WrGdVqq0xMENCWT/tfQb2Y22zHYs772b6vhqsKDh/DRgt2aCsepxRyH
         bVuwtSLhCkfguQVTtMTq5LiMEWRWTvfNMeuwM3Bgd6w7J0Ai62s8Y0AevpvDVfEy6FxA
         3IVXDoovpp7LPicTbfCqO1L6lRwamobs34xhSno1ltVbMifQri60ajQfI5v7sqUN2TI8
         SiMQ==
X-Gm-Message-State: AODbwcBV0c+TXS+0DKg8gMk+kNmQ4A8wCeMAUMwuxyhkpA3OVe0ytTEi
	L+TZ3dWJWNWdPTWF7tGONQ==
X-Received: by 10.107.136.17 with SMTP id k17mr25539363iod.89.1495487623462;
        Mon, 22 May 2017 14:13:43 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (1.0)
Message-Id: <0D4054EB-CA8D-4E33-9DFE-A83E253AA96B@redhat.com>
References: <1495476334.15944.2@mail.igalia.com> <20170522185720.GA13059@suse.de> <20170522194526.GC63527@wopr>
In-Reply-To: <20170522194526.GC63527@wopr>
X-Mailer: iPhone Mail (14F89)
Date: Mon, 22 May 2017 15:13:42 -0600
From: Kurt Seifried <kseifrie@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] How to request a CVE for open source projects
To: oss-security@lists.openwall.com

Well actually they can. Why do you think we (DWF) have an extensible Json f=
ormat with the data hosted in git? Hint: so people can contribute.


-Kurt





> On May 22, 2017, at 13:45, Kurt H Maier <khm@sciops.net> wrote:
>=20
>> On Mon, May 22, 2017 at 08:57:21PM +0200, Marcus Meissner wrote:
>>=20
>> Please everyone do the distributors a favour and link to GIT commits wit=
h fixes for
>> the requested CVE or at least explicit single reproducers, as we have in=
creasing trouble
>> of associating CVEs with the correct place in code.
>=20
> This is only gonna get worse now that mitre cut the mailing list out of
> the process, and third-party participants can no longer add commentary
> and insight into the reported vulnerabilities.
>=20
> khm
