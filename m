X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2157" "Friday" "6" "May" "2016" "17:07:01" "+0200" "Gustavo Grieco" "gustavo.grieco@gmail.com" "<CACn5sdS+8Hc+VOm3zX7k2dE2UYj6kuCH4ZmZqtc-WbXca=n9vQ@mail.gmail.com>" "51" "[oss-security] CVE request: an invalid pointer read in mini-xml 2.7" nil nil nil "5" "2016050615:07:01" "[oss-security] CVE request: an invalid pointer read in mini-xml 2.7" (number mark "U       gustavo.grie May  6   51/2157  " thread-indent "\"[oss-security] CVE request: an invalid pointer read in mini-xml 2.7\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22033 invoked by uid 550); 6 May 2016 15:07:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22010 invoked from network); 6 May 2016 15:07:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to;
        bh=4jgT5pvs5xcJdhuXdbfnNEeLYDgysu/G89kIxO+5YqE=;
        b=OEbRtLlESUcBZpsgjKjU6OhYW/wW2swdV2SBzryg+K1txGRahHUG9rl/uRw+qlpbwK
         r2oEBd7o5AZ+c2b1i0isWghEqB1j/pLwUh5oWATru2UddUs2kUMV7OD9t3QVnU0BbvVQ
         3J4xioLyL3qM24WWicmZBmIjCnPXaj4THSq8qHLWQuQkA8OQTeo0LJJ0q46sMzQy+YaT
         kD6ieYK4mJbsPTYC2QtXYEk+k1uHWBnB4FC2GcbeMd9HuqHjGNdgApsaP1Y66u1yfnFE
         mhP2yhv2YgR6VYaoVmyITRB5kYZyB/RJSveHlhqbXjUsnHX6uzKQzax2kQYdCuspoA0E
         bsXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
        bh=4jgT5pvs5xcJdhuXdbfnNEeLYDgysu/G89kIxO+5YqE=;
        b=IXtdNAUBuE1AaKpP1En8mzckXJ632JcXJEFMH+G0t4KFRZppOdqISiBsatxowS0kn6
         4KxR6RImZXstnEkg5WYusH0AJbksG0W7IwZ9JdO89FFpzmIM1UWSj9YkpAUhiuSMDYre
         vMW3n/r4uDphWmEGAxeaQvyBbn40sLwhvUPajiRvWaRdqlxgSmTO5G9Ql6m3+5qbfN17
         LJxxyJdvzKJYb/DB5OVqhxVcqZBWn5/ogUjpWafcEskmX3at2yQfmUJrtuQRlMmjX55E
         KhuSUSZNdT6TKxKA4GnCsXC6vM1VtgionvfnBko9M5ruTlkiOCpR+G5vPWWeYMvTpQ3/
         /vUw==
X-Gm-Message-State: AOPr4FWp1XV7KTk8hX5nk3TM81YLqJ3VuhI6qXbPNWBPipGJ8SE1GNvdaPefWbWRJgY3FStkIp/0IzYwOLPKFA==
MIME-Version: 1.0
X-Received: by 10.112.160.163 with SMTP id xl3mr10104542lbb.19.1462547221842;
 Fri, 06 May 2016 08:07:01 -0700 (PDT)
Date: Fri, 6 May 2016 17:07:01 +0200
Message-ID: <CACn5sdS+8Hc+VOm3zX7k2dE2UYj6kuCH4ZmZqtc-WbXca=n9vQ@mail.gmail.com>
From: Gustavo Grieco <gustavo.grieco@gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a11c34262a0169b05322dcfb2
Subject: [oss-security] CVE request: an invalid pointer read in mini-xml 2.7

--001a11c34262a0169b05322dcfb2
Content-Type: text/plain; charset=UTF-8

Hi,

An invalid pointer read located in a vsnprintf call in mini-xml 2.7 (
https://www.msweet.org/projects.php?Z3) was found:

$ gdb --args ./testmxml jezrijgasv.xml.-5377691366552468283
...
Program received signal SIGSEGV, Segmentation fault.
0x00007ffff48b3a03 in _IO_vfprintf_internal (s=s@entry=0x7fffffff9970,
format=<optimized out>,
    format@entry=0x40d900 "<%s> cannot be a second root node after <%s>",
ap=ap@entry=0x7fffffff9b10) at vfprintf.c:1661
1661    vfprintf.c: No such file or directory.
(gdb) bt
#0  0x00007ffff48b3a03 in _IO_vfprintf_internal (s=s@entry=0x7fffffff9970,
format=<optimized out>,
    format@entry=0x40d900 "<%s> cannot be a second root node after <%s>",
ap=ap@entry=0x7fffffff9b10) at vfprintf.c:1661
#1  0x00007ffff4971235 in ___vsnprintf_chk (s=s@entry=0x7fffffff9b50 "<b>
cannot be a second root node after <\002", maxlen=<optimized out>,
    maxlen@entry=1024, flags=flags@entry=1, slen=slen@entry=1024,
format=format@entry=0x40d900 "<%s> cannot be a second root node after
<%s>",
    args=args@entry=0x7fffffff9b10) at vsnprintf_chk.c:63
#2  0x000000000040a3c0 in vsnprintf (__ap=0x7fffffff9b10, __fmt=0x40d900
"<%s> cannot be a second root node after <%s>", __n=1024,
    __s=0x7fffffff9b50 "<b> cannot be a second root node after <\002") at
/usr/include/x86_64-linux-gnu/bits/stdio2.h:77
#3  mxml_error (format=0x40d900 "<%s> cannot be a second root node after
<%s>") at mxml-private.c:86
#4  0x0000000000405a74 in mxml_load_data (top=top@entry=0x0,
p=p@entry=0x60360000fd80,
cb=cb@entry=0x402863 <type_cb>,
    getc_cb=getc_cb@entry=0x404c78 <mxml_file_getc>, sax_cb=sax_cb@entry=0x0,
sax_data=sax_data@entry=0x0) at mxml-file.c:1662
#5  0x00000000004079d0 in mxmlLoadFile (top=top@entry=0x0,
fp=fp@entry=0x60360000fd80,
cb=cb@entry=0x402863 <type_cb>) at mxml-file.c:199
#6  0x0000000000402166 in main (argc=<optimized out>, argv=0x7fffffffe4f8)
at testmxml.c:473

Fortunately, this issue is fixed in mini-xml 2.9. A reproducer is available
upon request. Please assign a CVE if necesary.

Regards,
Gustavo.

--001a11c34262a0169b05322dcfb2--
