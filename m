X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["754" "Thursday" "23" "August" "2018" "14:44:40" "+0200" "Leonardo Taccari" "iamleot@gmail.com" "<5b7eac3c.1c69fb81.6a504.6766@mx.google.com>" "23" "Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" "^Date:" nil nil "8" "2018082312:44:40" "[oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?" (number mark "        iamleot@gmai Aug 23   23/754   " thread-indent "\"Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?\"\n") "<CALDAOtuLdurT759O0AxPovJ4ThgcrYrJkYsxJPR4EgWf2QG_+g@mail.gmail.com>" ("<CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com>" "<CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com>" "<alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org>" "<CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com>" "<CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com>" "<CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com>" "<alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org>" "<5b7dd771.1c69fb81.a6d8.6521@mx.google.com>" "<CALDAOtuLdurT759O0AxPovJ4ThgcrYrJkYsxJPR4EgWf2QG_+g@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16159 invoked by uid 550); 23 Aug 2018 12:51:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11292 invoked from network); 23 Aug 2018 12:44:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:from:to:subject:in-reply-to:references:comments
         :mime-version:content-id:date;
        bh=ozCXUD6ZTPeFuRLL29yU4Pd5WdPrmEcghjEGFBBJ+Zw=;
        b=DmmbOBIBIlOtQvaTm2NC8wQb7Vjh5yREdiLuJdPgUdyA0PU5iQCUABK5VfMUN9ZSkp
         dWonAiFXJDv7ZQdn9s/+bWI1x7z1oN19rFy8su8kzmZotNMIb0eqCjI9P0vZeaFX0LdL
         MWU9rTpjuyvSU3lifMMPzzGtvMkpAw+r0DCXXNOBvw9hoaVT6/WAz6jn6wKxTK8lfDK8
         266GBlgwNVINmTYoLtvLwY6HDOCgYBlgXgyHDeYl+5dinPI2u0Nx9i1UhCAXCIT5vA7F
         8lZCOlu+YSsnXU6aYYdyjcvv02wxgj/rqDDFyDflI6OR+qaDCkwWTjuJ6ZXkm89gstbj
         VPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:from:to:subject:in-reply-to
         :references:comments:mime-version:content-id:date;
        bh=ozCXUD6ZTPeFuRLL29yU4Pd5WdPrmEcghjEGFBBJ+Zw=;
        b=gn9HxFSHJAUwym6s6Wn3ChRGiBBtIg++3/uHf34rBC9Ekqu1e8prf7D82tDT05R3H5
         xb2pGXNgjtyp97B83wEJQPgeE8rBDjwXNzUfc0dYbTfDrK9/OYmQCQbzKtG2Johac/wx
         bu4BYDV8psZDhC621nt6DMg8wQqRWP/rrqPznHmI9mFkUd/jmWR5t7JbbogYuY2ooFLf
         xW9H/PRBXlmqr674RNxxRUsdZdoyaovf4LIxBiPw6NxlS6EZwWCiuNRw8WzvI87KkfGj
         14ZE8idBCosBc62Ldb8wKhPSFO4TiBTtQ9Ygeojb4TlECeZt2+1qguevuLryk7nn5Hss
         sd/Q==
X-Gm-Message-State: APzg51ATT82HRUUo+ih9o49jv8MThaeRsM1WmShs/s3P5t+gkRcIVQzw
	zYnP7y6fhioVmqvGOuih02OFDtaa
X-Google-Smtp-Source: ANB0VdZQKHcJTka61Hr2pe6D/DjwEpA7DSt/zrgf7xjWWrGdOXrwCjmaQZadiTB2Ae2BUXAkhLpXXA==
X-Received: by 2002:a5d:6604:: with SMTP id n4-v6mr2247491wru.281.1535028285836;
        Thu, 23 Aug 2018 05:44:45 -0700 (PDT)
Message-ID: <5b7eac3c.1c69fb81.6a504.6766@mx.google.com>
In-reply-to: <CALDAOtuLdurT759O0AxPovJ4ThgcrYrJkYsxJPR4EgWf2QG_+g@mail.gmail.com>
References: <CAJ_zFk+ZNi8r8TKTZuaYgSBUz4mxCO7C5SC=B8Ktc_CZQW6Dsw@mail.gmail.com> <CAJ_zFk+RtYrqWQ4Mj1SLVJ7BTZBHLjo_M9t-gDVS_uDEPhuCrg@mail.gmail.com> <alpine.GSO.2.20.1808210951110.18862@scrappy.simplesystems.org> <CAFRnB2U+QMGmAMoZqbCgTjEx_o_NA+Y9eBE6eDBgJJ0hZdQ4GQ@mail.gmail.com> <CAJ_zFkJpnGtG6D3JZVaC5KJiNzsJ6vjJK0oXRfirR8QsdFbZVQ@mail.gmail.com> <CAOVKCF0Qehz2q3m2vPSAr3vKRAxdHrTbnyk71ApFYnVXuZ-P6Q@mail.gmail.com> <alpine.GSO.2.20.1808221612460.22335@scrappy.simplesystems.org> <5b7dd771.1c69fb81.a6d8.6521@mx.google.com> <CALDAOtuLdurT759O0AxPovJ4ThgcrYrJkYsxJPR4EgWf2QG_+g@mail.gmail.com>
Comments: In-reply-to Mateusz Lenik <mlen@mlen.pl>
   message dated "Thu, 23 Aug 2018 13:29:23 +0200."
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <9685.1535028280.1@boh>
Date: Thu, 23 Aug 2018 14:44:40 +0200
From: Leonardo Taccari <iamleot@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: More Ghostscript Issues: Should we disable PS coders in policy.xml by default?
To: oss-security@lists.openwall.com

Hello Mateusz,

Mateusz Lenik writes:
> [...]
> It seems to be possible to disable GhostScript in ImageMagick completely by
> the policy rule below. It's not possible to miss any format with it.
>
> <policy domain="delegate" rights="none" pattern="gs" />
>
> [...]

Please note that this will work *only* when ImageMagick is built
with `--without-gslib'. In that case ImageMagick is not linked
against gslib and ghostscript is directly invoked via `gs' or
similar.

If ImageMagick was built `--with-gslib' then no `gs' is invoked
and there is no delegation, so the problems described by Tavis can
be reproduced with that delegate policy rule as well.


It is probably safer to follow the workaround described in:
<https://www.kb.cert.org/vuls/id/332928>
