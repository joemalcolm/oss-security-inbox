X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2245" "Tuesday" "14" "July" "2015" "21:54:26" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150715015426.2D17452E10F@smtpvbsrv1.mitre.org>" "63" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" nil nil nil "7" "2015071501:54:26" "[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow" (number mark "        cve-assign@m Jul 14   63/2245  " thread-indent "\"[oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow\"\n") "<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>" ("<CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11471 invoked by uid 550); 15 Jul 2015 01:54:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11441 invoked from network); 15 Jul 2015 01:54:38 -0000
In-Reply-To: <CAEr-gPENyN7yex+Ra7UWMaLTAzVKA+9+YNX=H7jcY4G6CsfPLQ@mail.gmail.com>
Message-Id: <20150715015426.2D17452E10F@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Tue, 14 Jul 2015 21:54:26 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request - tidy 0.99 / tidy5 heap-buffer-overflow
To: fernando@null-life.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> The original discovery was about memory corruption,
> and then the vendor mentioned an attack variation in which a small
> file can lead to a 4 Gb allocation, which potentially would be
> successful on some platform and cause a DoS.

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

Use CVE-2015-5522.


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

Use CVE-2015-5523.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVpby0AAoJEKllVAevmvmsYlgIALsomSkXtN2xeMmqFxVFu3+y
kdUmzXii7CB5uQnwG/AOxnsj1iv0TahON89VTt07ODF+5wDIY0xPp5gaP/YHG65l
AXU+HBIDpDe5YSQNSUrn+DyPVbNzweNWXXrSUtTYF/bIgzSPPbHM6K6nHblNAFfQ
N+rq/O5QeB/xG3DAv+Rj3FzgRZakfRboUDDLQrhBeEy6goys99cgxD09aWqmQSNB
5kB2tQNeCnJ959Ds61joQdgA5iTo9ASxjRMSvanNLD4xW/ofuYGFXkYgFw0cJxTA
zx1FJyxiq7vHW/DpHZ987W3w4fLV2OjlwiJppkVkyoav+F8T6PRh43OFEtdudNk=
=hW30
-----END PGP SIGNATURE-----
