X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4269" "Monday" "13" "July" "2015" "19:42:24" "-0500" "=?UTF-8?B?RmVybmFuZG8gTXXDsW96?=" "fernando@null-life.com" "<CAEr-gPHFmE_q+2wLhMvOCsM5VJd6_3tH1L+31evHW0gnaVCQ7A@mail.gmail.com>" "104" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" nil nil nil "7" "2015071400:42:24" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" (number mark "        fernando@nul Jul 13  104/4269  " thread-indent "\"[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow\"\n") "<20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>" ("<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>" "<20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18365 invoked by uid 550); 14 Jul 2015 00:42:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18341 invoked from network); 14 Jul 2015 00:42:35 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=BcBAaM6ad1avkS1xcK/W1TLfJ6z2Q51617DdJ6OtcuA=;
        b=e4DW4YQfzyTKSo0rgKxakorjl/VyiHT6ckMQaWWlaAJDnA7UMea5BHU1YUHnuDg3aY
         wQxzGne6sk5AeVuDBmLaY06NWrar0X2Kf9VyaQRg+BjqpQT/rHOuCQHwDq9ROkxsvmpu
         XzPwjlqup40oLVoNoOTv6dGmiJd98arxDY8MpBfOZBe68dbQoxS5ncsUuFzIU5olPISu
         VNHlc7wGEfNBsfswFwdgmrk1u/NU9tOy9zvHhDP6vDnEzin4UacXvB2dd53XzSXqwFxl
         ZX4jun3TbqYiRg6Rb2JYzAbUmQ2ap2pRn4OxaM6mFnkTytNnbOUQrXytSahFyvWgFrcf
         Kyaw==
X-Gm-Message-State: ALoCoQlnoiHPbIM2zv0UxQqRhDXt0rtcMqkrWl9ZmtGOyz1TDDZEJAb1UkBgP32nbH7FrYFgf6Uo
MIME-Version: 1.0
X-Received: by 10.180.187.41 with SMTP id fp9mr28770910wic.67.1436834544383;
 Mon, 13 Jul 2015 17:42:24 -0700 (PDT)
X-Originating-IP: [186.154.153.73]
In-Reply-To: <20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>
References: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
	<20150713213749.9F6046C0164@smtpvmsrv1.mitre.org>
Message-ID: <CAEr-gPHFmE_q+2wLhMvOCsM5VJd6_3tH1L+31evHW0gnaVCQ7A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: oss-security@lists.openwall.com, security@debian.org
Date: Mon, 13 Jul 2015 19:42:24 -0500
From: =?UTF-8?Q?Fernando_Mu=C3=B1oz?= <fernando@null-life.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow
To: cve-assign@mitre.org

AFAIK Debian did not assign any.

I didn't get any response when I reported it to Debian for a couple of
weeks, so I went ahead and found the tidy-html5 fork, which is based
on the same project and developed by the same people, reported it
directly to them. After that I contacted Debian security again and
they asked me to request a CVE here.

Thanks.

On Mon, Jul 13, 2015 at 4:37 PM,  <cve-assign@mitre.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> One complication here is that the CVE request was sent to oss-security
> without mentioning that a CVE request had been sent privately to one
> Linux distribution a few weeks before that. See:
>
>   https://github.com/htacg/tidy-html5/issues/217#issue-84488886
>
>   I contacted Debian about the issue on May 17, so far I have not
>   received a response about a CVE assignment.
>   ...
>   Date: Sun, May 17, 2015 at 8:11 PM
>   Subject: tidy heap-buffer-overflow
>   To: security@debian.org
>
> (added security@debian.org to the Cc line)
>
> Our only question for Debian is: did Debian already assign any CVE
> ID(s) for this? If not, then MITRE will.
>
> (To clarify: we're definitely not suggesting that Debian did something
> wrong. At least from MITRE's perspective, Debian isn't required to
> process CVE requests in arbitrary private reports about software
> shipped by Debian, and especially not in cases where the report is
> about code that's also shipped by the upstream author. The only issue
> is that Debian is allowed to process the CVE request if they want to.
> In that situation, they can choose the public disclosure date, and
> MITRE should/would typically not be informed about the vulnerability
> or its CVE ID before the public disclosure date. Probably none of this
> caused any significant problem in the current case. However, in
> general, the existence of a previous CVE request is important.)
>
> Now, going back to the vulnerability report itself: we think two CVE
> IDs might be best. The original discovery was about memory corruption,
> and then the vendor mentioned an attack variation in which a small
> file can lead to a 4 Gb allocation, which potentially would be
> successful on some platform and cause a DoS.
>
> In other words, the first CVE would be for
> https://github.com/htacg/tidy-html5/issues/217 with:
>
>   AddressSanitizer: heap-buffer-overflow
>   WRITE of size 1
>
>   tmbstr cp = s = (tmbstr) TidyAlloc( allocator, 1+len );
>   Notice the plus 1, so it arrives at TidyAlloc with a ZERO!!!
>
>   Now it seems malloc does not mind a zero value, malloc(0), and
>   dutifully returns a pointer
>
>   Then tmbstrndup does the corruption, with -
>
>   while ( len-- > 0 && (*cp++ = *str++) ) /**/;
>
>   Of course ( len-- > 0 ) will be true until the 4294967295 expires ;=))
>
>   But thankfully the corruption stops when a 0 is reached in the lexer
>   with (*cp++ = *str++). As indicated in this case it is storing the
>   attribute "href", but that is 4+ bytes of corruption.
>
>
> The second CVE would be for
> https://github.com/htacg/tidy-html5/issues/217#issuecomment-108565501
> with:
>
>   In some cases this bug could exibit a different problem like parsing
>   the snippet <a <?xm \0xd?> href="">.
>
>   Now the lexer buffer will contain 2, or more IsWhite() chars and len
>   would be reduced to -2, or less, which means the malloc buffer
>   allocation would be a giant 4,294,967,295 byte allocation, a value
>   lots of OSes will reject
>
> We'll try to send these CVE IDs tomorrow if there's no other
> information and no duplication.
>
> - --
> CVE assignment team, MITRE CVE Numbering Authority
> M/S M300
> 202 Burlington Road, Bedford, MA 01730 USA
> [ PGP key available through http://cve.mitre.org/cve/request_id.html ]
> -----BEGIN PGP SIGNATURE-----
> Version: GnuPG v1.4.14 (SunOS)
>
> iQEcBAEBAgAGBQJVpC8NAAoJEKllVAevmvmsePwIAK9BAACprS1lfeOqHqbJ1xAb
> 0gKqEsEyh1kyYsC0gJPYIPGSesMEcymL902i1vs0+hiMkkcN1oxPWNMxNDSPwaXi
> 0yJnGJCddezkkHIBhgaIr7YbDkCWhWEJGEnq5eoe7gssWuZnlGuReQXBFmaSilI8
> GLM0UX68n7jUgen5wNzivw/Yxrrur8BUwz+w09QEFQVv5HxEE6xj6O891yzeaw6g
> VowSDOzYtB7TZQHLA4lvT7Q8Ux38jdjE4v5XcHkGHdTw9mwkBk0Qi6m7ku7txsNf
> 78bZPZt8Zm6eKK3z+kdtRyY1begfOyqfWCdr8SlpRFRisCXdd1C/jiFgrKfyvg4=
> =6u7g
> -----END PGP SIGNATURE-----
