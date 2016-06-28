X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4841" "Tuesday" "28" "June" "2016" "09:22:37" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdQG-M4FXwRBmFLY7MV3WCZ+sh9MtEgj-cVJL0-gOH7zrA@mail.gmail.com>" "131" "Re: [oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free" nil nil nil "6" "2016062807:22:37" "[oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free" (number mark "U       gustavo.grie Jun 28  131/4841  " thread-indent "\"Re: [oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free\"\n") "<CAFkTriJZFFmHycp7jqP-S2j9BSV_nBW6SErPdFiM7s1dVu7hvQ@mail.gmail.com>" ("<CAFkTriK-q3LdYd31Wj1VwV5d=Y5Qu=yP4tjpkSOKP2wu-C8XZA@mail.gmail.com>" "<CACn5sdQFwV6SfDa=pgey+CMFp2N0RBSh69UFMtXOr9j+aZsE+A@mail.gmail.com>" "<CAFkTriJZFFmHycp7jqP-S2j9BSV_nBW6SErPdFiM7s1dVu7hvQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 6035 invoked by uid 550); 28 Jun 2016 07:22:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 6011 invoked from network); 28 Jun 2016 07:22:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=rtENYJxWvo/PsDH9r6BQKwpGDgt9D4dVkkYsz8COdYk=;
        b=1J8xIFSQJr3JgEbZ1S4QKoCS80slWhKvCT5SMR4xyCEg1nl9aZCmO5X+szhCq1BXA1
         UNk8n8hB+huiSB2X/3QXrVOy5rmGJoddmQMh6XrlsYVNIefLTLNY4cgW+L+mbefxewCJ
         Yauk0yDXJ/kn3GcqxtXYhKIHYSE00cKE9EkB9mDND2Tl8ZVsiZUOkDG286cEA4NAwr+J
         5wENLpJ7C6UAMIhLy5IY+FqUDgsCEMfj8E+BrVTT5qTSRWq1PoeaRd1cwl8c6QaFt2qQ
         5lA8HDUx1A/7nGQpnE0je34VbWfy/WiVtSyjL88WFOFIJXTYc/mLU607JMy4cK8fx66N
         vCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:content-transfer-encoding;
        bh=rtENYJxWvo/PsDH9r6BQKwpGDgt9D4dVkkYsz8COdYk=;
        b=H9exMiOCF8DcrvJ+3YG2boUCA2c0HXsBnqiLhdTT+iaRlGgxGwdyhzy2h/xwySs9If
         YxQR1POwvv4aoT3yRyQM1IDEd9GqzMews9GSo4KfKmCVoNBeAN30NmDFE9K0ZE8wX/1o
         r6E0xwPUcX3AL6F8uNvNRYYXeLuiS2E/JN90CEazvi5uz+uXjguDP4hYni9mGmiWsp2K
         Uk9bNU3YpRc54AuZF2fwfxUbI+4TluDkdnE4w5NRYpAYAhO9vnjzLRdonfgf+Plf0cpv
         XWtxk1LIZzKXSkIOyPKnGCK9vKygExeqCvBy21LBXIu98KjIfC0yusTU85asXcHIBh7L
         +Q0Q==
X-Gm-Message-State: ALyK8tLQMc8iG+OH1YbpnUNXTxqlKuP0FkhULT/oFYDCD2bIbRGmF5YKDd7BkAnDjx+EH4IsJsG91mv5E+/Xqw==
X-Received: by 10.36.23.131 with SMTP id 125mr1979583ith.15.1467098558100;
 Tue, 28 Jun 2016 00:22:38 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAFkTriJZFFmHycp7jqP-S2j9BSV_nBW6SErPdFiM7s1dVu7hvQ@mail.gmail.com>
References: <CAFkTriK-q3LdYd31Wj1VwV5d=Y5Qu=yP4tjpkSOKP2wu-C8XZA@mail.gmail.com>
 <CACn5sdQFwV6SfDa=pgey+CMFp2N0RBSh69UFMtXOr9j+aZsE+A@mail.gmail.com> <CAFkTriJZFFmHycp7jqP-S2j9BSV_nBW6SErPdFiM7s1dVu7hvQ@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
Date: Tue, 28 Jun 2016 09:22:37 +0200
Message-ID: <CACn5sdQG-M4FXwRBmFLY7MV3WCZ+sh9MtEgj-cVJL0-gOH7zrA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Apache Xerces getLastExtEntityInfo Use-After-Free

2016-06-28 9:13 GMT+02:00 Marco Grassi <marco.gra@gmail.com>:
> Hi Gustavo,
>
> thank you for the feedback, yes applying that patch manually to trunk
> resolves the UAF

No problem! thanks for fuzzing and reporting issues in xml parsers!

>
> is there a svn branch where this patch is already applied to retest?

I don't know. You should ask the Xerces manteiner (Scott Cantor).

>
> Marco
>
> On Tue, Jun 28, 2016 at 2:57 PM, Gustavo Grieco <gustavo.grieco@gmail.com>
> wrote:
>
>> Hi,
>>
>> Is it related with CVE-2016-2099 still unfixed in 3.1.3
>> (https://issues.apache.org/jira/browse/XERCESC-2066) ?
>>
>> Thanks!
>>
>> 2016-06-28 8:50 GMT+02:00 Marco Grassi <marco.gra@gmail.com>:
>> > Hi,
>> >
>> > the attached xml will trigger a UAF in xerces-c version 3.1.3 and the
>> trunk
>> > version
>> >
>> >
>> > =E2=9E=9C  xml cat xerces_uaf | xerces-c-3.1.3/samples/StdInParse
>> > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>> > =3D=3D16010=3D=3DERROR: AddressSanitizer: heap-use-after-free on addre=
ss
>> 0xf4a0dfcc
>> > at pc 0x0836c7f4 bp 0xfff9a198 sp 0xfff9a188
>> > READ of size 1 at 0xf4a0dfcc thread T0
>> >     #0 0x836c7f3 in
>> >
>> xercesc_3_1::ReaderMgr::getLastExtEntityInfo(xercesc_3_1::ReaderMgr::Las=
tExtEntityInfo&)
>> > const xercesc/internal/ReaderMgr.cpp:833
>> >     #1 0x83a42d4 in
>> > xercesc_3_1::XMLScanner::emitError(xercesc_3_1::XMLErrs::Codes,
>> > xercesc_3_1::XMLExcepts::Codes, unsigned short const*, unsigned short
>> > const*, unsigned short const*, unsigned short const*)
>> > xercesc/internal/XMLScanner.cpp:927
>> >     #2 0x8e40963 in
>> > xercesc_3_1::IGXMLScanner::scanDocument(xercesc_3_1::InputSource const=
&)
>> > xercesc/internal/IGXMLScanner.cpp:276
>> >     #3 0x84b4cca in
>> xercesc_3_1::SAXParser::parse(xercesc_3_1::InputSource
>> > const&) xercesc/parsers/SAXParser.cpp:575
>> >     #4 0x80533d6 in main src/StdInParse/StdInParse.cpp:186
>> >     #5 0xf6dd5636 in __libc_start_main (/lib32/libc.so.6+0x18636)
>> >     #6 0x80624f1
>> >
>> (/home/bob/VulnResearch/misc/xml/xerces-c-3.1.3/samples/StdInParse+0x806=
24f1)
>> >
>> > 0xf4a0dfcc is located 44 bytes inside of 56-byte region
>> > [0xf4a0dfa0,0xf4a0dfd8)
>> > freed by thread T0 here:
>> >     #0 0xf7228034 in operator delete(void*)
>> > (/usr/lib32/libasan.so.3+0xc5034)
>> >     #1 0x80992df in xercesc_3_1::XMemory::operator delete(void*)
>> > xercesc/util/XMemory.cpp:89
>> >
>> > previously allocated by thread T0 here:
>> >     #0 0xf72279b4 in operator new(unsigned int)
>> > (/usr/lib32/libasan.so.3+0xc49b4)
>> >     #1 0x8357ad9 in xercesc_3_1::MemoryManagerImpl::allocate(unsigned
>> int)
>> > xercesc/internal/MemoryManagerImpl.cpp:40
>> >     #2 0x8099042 in xercesc_3_1::XMemory::operator new(unsigned int,
>> > xercesc_3_1::MemoryManager*) xercesc/util/XMemory.cpp:68
>> >
>> > SUMMARY: AddressSanitizer: heap-use-after-free
>> > xercesc/internal/ReaderMgr.cpp:833 in
>> >
>> xercesc_3_1::ReaderMgr::getLastExtEntityInfo(xercesc_3_1::ReaderMgr::Las=
tExtEntityInfo&)
>> > const
>> > Shadow bytes around the buggy address:
>> >   0x3e941ba0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>> >   0x3e941bb0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>> >   0x3e941bc0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>> >   0x3e941bd0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>> >   0x3e941be0: fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa fa
>> > =3D>0x3e941bf0: fa fa fa fa fd fd fd fd fd[fd]fd fa fa fa fa fa
>> >   0x3e941c00: fd fd fd fd fd fd fd fa fa fa fa fa 00 00 00 00
>> >   0x3e941c10: 00 00 00 fa fa fa fa fa 00 00 00 00 00 00 00 00
>> >   0x3e941c20: fa fa fa fa 00 00 00 00 00 00 00 00 fa fa fa fa
>> >   0x3e941c30: 00 00 00 00 00 00 00 00 fa fa fa fa 00 00 00 00
>> >   0x3e941c40: 00 00 04 fa fa fa fa fa 00 00 00 00 00 00 04 fa
>> > Shadow byte legend (one shadow byte represents 8 application bytes):
>> >   Addressable:           00
>> >   Partially addressable: 01 02 03 04 05 06 07
>> >   Heap left redzone:       fa
>> >   Heap right redzone:      fb
>> >   Freed heap region:       fd
>> >   Stack left redzone:      f1
>> >   Stack mid redzone:       f2
>> >   Stack right redzone:     f3
>> >   Stack partial redzone:   f4
>> >   Stack after return:      f5
>> >   Stack use after scope:   f8
>> >   Global redzone:          f9
>> >   Global init order:       f6
>> >   Poisoned by user:        f7
>> >   Container overflow:      fc
>> >   Array cookie:            ac
>> >   Intra object redzone:    bb
>> >   ASan internal:           fe
>> >   Left alloca redzone:     ca
>> >   Right alloca redzone:    cb
>> > =3D=3D16010=3D=3DABORTING
>> >
>> >
>> >
>> > Marco
>> >
>> > https://marcograss.github.io/
>>
