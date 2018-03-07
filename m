X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1408" "Wednesday" "7" "March" "2018" "07:20:47" "-0700" "Kurt Seifried" "kseifrie@redhat.com" "<A0F9A5C4-B009-40D3-B3B7-CE1AB9B0B8FB@redhat.com>" "35" "Re: [oss-security] memcached UDP amplification attacks" "^Cc:" nil nil "3" "2018030714:20:47" "[oss-security] memcached UDP amplification attacks" (number mark "        kseifrie@red Mar  7   35/1408  " thread-indent "\"Re: [oss-security] memcached UDP amplification attacks\"\n") "<20180307110950.4eb041a8@redhat.com>" ("<20180302124428.440b9c3b@pc1>" "<CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com>" "<CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com>" "<20180307110950.4eb041a8@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21662 invoked by uid 550); 7 Mar 2018 14:21:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21640 invoked from network); 7 Mar 2018 14:21:00 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=peSQftBqKgWhSoLHftD5Hom3HVzy7suE6xXeD68lqbA=;
        b=M55W+acMRo2YoS6oABfODoEprSVHRDaUtJmRtSmD9/QJz1Vw7ELwyJrn4ANTyl015L
         Dy6OBF8TjvFGOGgoR88MTv7Gk3xFqXUu/YqdgYrv09Q7gkIR1CSdVU6ytR2Uc8nINbTU
         o12rnknQtn1r2aFzYQqMU3Ki8mOVLlIpTlVk4YBw1nLcnXSFnefTg2LxKnRbZMApUEEE
         +j2JFJ4jWC5ib9PefMYBCVagYCVXnnf9xuEXyl7oJn4nda+78n7yLTcVHNnZaJvkrMJB
         ouPDc/86rQaKMkF+GJqXEIRwlQS5CVOcTMMIDzFmupoxVy2UhbKBGRfdnEEx2QufUgWW
         Rp5g==
X-Gm-Message-State: AElRT7EH9e2npYOAgqxSalj9dVzNYQXhfhZzOHy9XgF58lP3iPnlIW5/
	bLqRNSY9quFMYgzJJoJrMNhOvA==
X-Google-Smtp-Source: AG47ELtmtQ01Qj6Cve9DnOTlLUy6xmfxRflmg1WDQHSX0sOlGkC6p173aIoZuZ40wpT05ZFYQkiVnQ==
X-Received: by 2002:a17:902:8487:: with SMTP id c7-v6mr8548779plo.143.1520432448552;
        Wed, 07 Mar 2018 06:20:48 -0800 (PST)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
X-Mailer: iPad Mail (15D100)
In-Reply-To: <20180307110950.4eb041a8@redhat.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <A0F9A5C4-B009-40D3-B3B7-CE1AB9B0B8FB@redhat.com>
References: <20180302124428.440b9c3b@pc1> <CANO=Ty09HPfSbp8QsZHU24EnEyzOw1H1C-Zr+7mqwDhOG6=HYg@mail.gmail.com> <CANO=Ty0X6iVTG=BUhdUgxYSLN9XnA-NcvH96DgTALQRvsNnn4Q@mail.gmail.com> <20180307110950.4eb041a8@redhat.com>
Cc: Kurt Seifried <kseifried@redhat.com>, oss-security@lists.openwall.com
Date: Wed, 7 Mar 2018 07:20:47 -0700
From: Kurt Seifried <kseifrie@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] memcached UDP amplification attacks
To: Tomas Hoger <thoger@redhat.com>

Actually the 50k was based on a private but trustworthy reporter (The 3 let=
ter agency people), some people store very big things in memcached like cac=
hed web pages...

> On Mar 7, 2018, at 3:09 AM, Tomas Hoger <thoger@redhat.com> wrote:
>=20
>> On Fri, 2 Mar 2018 21:42:30 -0700 Kurt Seifried wrote:
>>=20
>> I have assigned CVE-2018-1000115 to this issue:
>>=20
>> Memcached version 1.5.5 contains an Insufficient Control of Network
>> Message Volume (Network Amplification, CWE-406) vulnerability in the
>> UDP support of the memcached server that can result in denial of
>> service via network flood (traffic amplification of 1:50,000 has been
>> reported by reliable sources). This attack appear to be exploitable
>> via network connectivity to port 11211 UDP. This vulnerability
>> appears to have been fixed in 1.5.6 due to the disabling of the UDP
>> protocol by default.
>=20
> Minor nitpick, the description mentions 1:50,000 ratio, apparently
> based on the information in the following reference:
>=20
>> https://blogs.akamai.com/2018/03/memcached-fueled-13-tbps-attacks.html
>=20
> where it's mentioned as:
>=20
> """
> Worse, memcached can have an amplification factor of over 50,000,
> meaning a 203 byte request results in a 100 megabyte response.
> """
>=20
> However, 200 * 50k =3D 10m, not 100m.  Wonder if I'm doing my math wrong.
>=20
> --=20
> Tomas Hoger / Red Hat Product Security
