X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1884" "Wednesday" "16" "May" "2018" "07:57:21" "-0700" "Matthew Fernandez" "matthew.fernandez@gmail.com" "<969E7C7D-5A8E-4FF8-A1CB-CBFB20E24E8D@gmail.com>" "47" "Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" nil nil nil "5" "2018051614:57:21" "[oss-security] PGP/MIME and S/MIME mail clients vulnerabilities" (number mark "U       matthew.fern May 16   47/1884  " thread-indent "\"Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities\"\n") "<e7d7bccd3a2ed7776390f89a003fcd0d17bb9d7f.camel@debian.org>" ("<6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>" "<20180514102951.GD18567@256bit.org>" "<87zi10u5kl.fsf@mid.deneb.enyo.de>" "<e7d7bccd3a2ed7776390f89a003fcd0d17bb9d7f.camel@debian.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13404 invoked by uid 550); 16 May 2018 14:59:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11378 invoked from network); 16 May 2018 14:57:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=Pozoys0eU23nb5/OZQxFfApkPHMVRYauUTW2LKI8rag=;
        b=as30QBJcQPKJK9MTAclzhQvDCvACZC0wGpL7dD27rvY//KMhSfjP2PSbTSHV6GpSAN
         lSTWDruXPZ4QhC8N/o5lk5sBBnJsUfBVfvIyDB3IOM+2L2XU1zjgZSRAxBjHMTWb/26+
         LiiENBovO4LjLYA4YmcaaGWAS2+3t6MufmWCEPdStqwAr+/waRBywx5dJRyah72lfLtn
         9g0y+EsrxgEu+tttw8x9QnznRzBRw0zIZX3Kra5o5W0JhUKMttjQzGXeevvYK9lEXR9v
         ABxBS79drNHtNj0qtq3UatxLEZUZ4AkDaaHVJh/BOuqVcP1elPV1gUl/K7NnxMTEL/Kk
         giAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=Pozoys0eU23nb5/OZQxFfApkPHMVRYauUTW2LKI8rag=;
        b=FuHdxZSn9Ee6bB971LDvYnZigQyHh7J9jr6DFq1f8SN5p9haHD3K5KRD79BmKb3VLe
         kRBGMQLawFmJXiVdv6oOSxQkzvZ6aPfb7t9Odzhg9aqlTlvGGPA0MLBK81VhQfcc+F4M
         vBCjzv7gxuL8/HjTJdRJlkduFXZFS9sqKOgCuorIHWWdBj3mKLZW9Wj55/aNS5Ftcc1x
         myvXkuKhSPgfRAE5SL/HHGZIcr4t5ZbHjO0j2TdBzw9x6vBSjJjZfb+KF1f2grngLSPD
         CRi66y1HMc7kGkPnUIcRU+KvYNlnzSNzm3VjPeJIVfkmqj6lAJZvOvJJgDBe0IzzEqVc
         j79g==
X-Gm-Message-State: ALKqPweZ6DsEsTWCc5ZhEcijQIoQrRLQBnarrJrxV7FhQLyY1En4jzLW
	dhm6H3ka1487T5cOOoeS7qZEkf+i
X-Google-Smtp-Source: AB8JxZrLV1nJI6gtmb82Cj4+6I5gjkHMzgT0zjwUVTVmfuuPgGlXpGNmhIyPNCj4w3j7czJdz05FFw==
X-Received: by 2002:a17:902:7146:: with SMTP id u6-v6mr1237932plm.289.1526482644605;
        Wed, 16 May 2018 07:57:24 -0700 (PDT)
From: Matthew Fernandez <matthew.fernandez@gmail.com>
Message-Id: <969E7C7D-5A8E-4FF8-A1CB-CBFB20E24E8D@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_EB16698E-6367-4F43-A7AD-27A3C5BDD908"
Mime-Version: 1.0 (Mac OS X Mail 11.3 \(3445.6.18\))
Date: Wed, 16 May 2018 07:57:21 -0700
In-Reply-To: <e7d7bccd3a2ed7776390f89a003fcd0d17bb9d7f.camel@debian.org>
Cc: Christian Brabandt <cb@256bit.org>
To: oss-security@lists.openwall.com
References: <6770b401c944860c2288ebf7738f40010d938b33.camel@debian.org>
 <20180514102951.GD18567@256bit.org> <87zi10u5kl.fsf@mid.deneb.enyo.de>
 <e7d7bccd3a2ed7776390f89a003fcd0d17bb9d7f.camel@debian.org>
X-Mailer: Apple Mail (2.3445.6.18)
Subject: Re: [oss-security] PGP/MIME and S/MIME mail clients vulnerabilities

--Apple-Mail=_EB16698E-6367-4F43-A7AD-27A3C5BDD908
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On May 16, 2018, at 02:39, Yves-Alexis Perez <corsac@debian.org> wrote:
>=20
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>=20
> On Tue, 2018-05-15 at 20:39 +0200, Florian Weimer wrote:
>> * Christian Brabandt:
>>=20
>>> Looks like details have just been published:
>>> https://efail.de/
>>=20
>> I don't see any discussion of cid: URLs.  Are vendors planning to fix
>> vectors related to those as well?
>=20
> Hi Florian,
>=20
> I might have missed something, but I'm not sure what you're referring to =
here?

I presume what Florian is asking about is Content-ID links [0]. One purpose=
 of CID links is to include images as a message part and then reference the=
m from the HTML email content. I would think a CID URL would not be immedia=
tely vulnerable to the =E2=80=9Cdirect exfiltration=E2=80=9D attack because=
 it shouldn=E2=80=99t result in a network fetch; just a lookup locally. How=
ever, RFC 2392 requires the IDs to be =E2=80=9Cglobally unique=E2=80=9D and=
 some mail clients (e.g. iOS Mail) take the RFC at its word and render imag=
es from CID URLs that reference content included in entirely distinct email=
s in your mailbox. Perhaps the attacker can hide their payload within a mes=
sage part with the chosen ID included in another email.

I haven=E2=80=99t fully thought through whether this is feasible, but this =
is a fairly convoluted vector that an attacker has no reason to use if they=
 have available the attack described on the efail site. Closing exploitatio=
n of the original attack looks like it would cut off this hypothetical indi=
rect attack too.

  [0]: RFC 2392, https://tools.ietf.org/html/rfc2392 <https://tools.ietf.or=
g/html/rfc2392>=

--Apple-Mail=_EB16698E-6367-4F43-A7AD-27A3C5BDD908--
