X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["933" "Monday" "5" "September" "2016" "17:26:06" "-0500" "William Pitcock" "nenolod@dereferenced.org" "<CA+T2pCG=MJMxQZXgGsCevny2_tSkiBcya-hebS8HxuEMCxQw_A@mail.gmail.com>" "38" "Re: [oss-security] CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis" nil nil nil "9" "2016090522:26:06" "[oss-security] CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis" (number mark "U       nenolod@dere Sep  5   38/933   " thread-indent "\"Re: [oss-security] CVE ID request: certificate spoofing through crafted SASL message in inspircd, charybdis\"\n") "<87r38ze3vk.fsf@angela.anarc.at>" ("<87r38ze3vk.fsf@angela.anarc.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7318 invoked by uid 550); 5 Sep 2016 22:27:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5364 invoked from network); 5 Sep 2016 22:26:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dereferenced-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=VH1ezDbewhDR4Lvwd30jRhmdPnhMiLYbuqAAZkWTk8g=;
        b=MrsMuGuIJqChD8jnnoBQjwfn+L6J/g45RsQ6Q4BM5ysLA7ZKCUUraapjwk19BiwstU
         n5rPP+5tEs4hLKhew2nhJsIJXEpAfTCrlMEu/KGkTTSQzNX1fPM86lo4stlF5LrNcz3q
         X7h/FSsU6OBLGQl2HjoIzSHVXUPSFZ0K0MCY+3C5NOZIlTeW0vOL5cJW6y7PnlDwM1bj
         awBZFfC/Qh/z+R/cSSwJEfxGQYS8f42YBEQL108UZJJYU3qPKFilxbeFjCdGLlyxBRE+
         hAoBz+f4eb8Z+oqU4G8VWLhzwEh72pu9BELRdmAW9+IqjfCA8/ikY5tIBbREadALAEJx
         JyXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=VH1ezDbewhDR4Lvwd30jRhmdPnhMiLYbuqAAZkWTk8g=;
        b=limoD4Xl//xpvQoFX/K6gy3MLl8vO0U4wQxxsAhF3Uj5s0sBm0p8Pl8hp+8Epy4POV
         e62rPE1z8ayS7eobHxSrMQWsbHqVIv1MMc7zY7/iUJNccJMnp666OvzcbTmq4ShBpCMx
         Upc66T9r0+/KbseXQvqwZjc/0+edUEaAQIh0DQTTOCgtv2MP/R/k7M++GdyTOoEONJas
         Fz2pqIeB0EXbsaqA4eRs+4ThpoFPXe+Amtxll9VQ6WTpHY6jCgxLtSCFljnxM+VD98mK
         35OFFiSXl3buoYdOpYMafTjPuDf46SR0tWd5LZTymovLA7CKNKLV8OsEqq33xWhnTb0b
         yhiw==
X-Gm-Message-State: AE9vXwOL7nA0Gevimdh0S7AJ7zyrafjLUOmBlQqx38Cw4khakqou0G2MFUuT3o3iDINfXBXk5XLf4YcGHfrx5Q==
X-Received: by 10.55.195.146 with SMTP id r18mr14207811qkl.236.1473114366821;
 Mon, 05 Sep 2016 15:26:06 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <87r38ze3vk.fsf@angela.anarc.at>
References: <87r38ze3vk.fsf@angela.anarc.at>
From: William Pitcock <nenolod@dereferenced.org>
Date: Mon, 5 Sep 2016 17:26:06 -0500
Message-ID: <CA+T2pCG=MJMxQZXgGsCevny2_tSkiBcya-hebS8HxuEMCxQw_A@mail.gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE ID request: certificate spoofing through
 crafted SASL message in inspircd, charybdis

Hello,

UnrealIRCd is also affected:

https://github.com/unrealircd/unrealircd/commit/f473e355e1dc422c4f019dbf86b=
c50ba1a34a766

As is Nefarious:

https://github.com/evilnet/nefarious2/commit/f50a84bad996d438e7b31b9e74c32a=
41e43f8be5

William

On Sun, Sep 4, 2016 at 4:45 PM, Antoine Beaupr=C3=A9 <anarcat@debian.org> w=
rote:
> inspircd published 2.0.23 that fixes an issue with SASL
> authentication. The details are here:
>
> http://www.inspircd.org/2016/09/03/v2023-released.html
>
> All versions are affected.
>
> Upstream hasn't requested a CVE yet. I told them I would request one
> from here on IRC.
>
> It seems to also affect Charybdis, which fixed the issue in the
> upcoming 3.5.3 release:
>
> https://github.com/charybdis-ircd/charybdis/commit/818a3fda944b26d4814132=
cee14cfda4ea4aa824
>
> A.
>
> --
> All governments are run by liars and nothing they say should be
> believed.
>                        - I. F. Stone
