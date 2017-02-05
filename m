X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2679" "Sunday" "5" "February" "2017" "21:42:20" "+0800" "chunibalon" "chunibalon@gmail.com" "<CAN6_dU9ReOV3ogigS1rmM0xE_f_+BkyhktgTm0nubGNbL4WOwg@mail.gmail.com>" "64" "[oss-security] CVE-2017-2581, CVE-2017-2579, CVE-2017-2580, CVE-2017-2586, CVE-2017-2587: Multiple vulnerabilities in netpbm" nil nil nil "2" "2017020513:42:20" "[oss-security] CVE-2017-2581, CVE-2017-2579, CVE-2017-2580, CVE-2017-2586, CVE-2017-2587: Multiple vulnerabilities in netpbm" (number mark "U       chunibalon@g Feb  5   64/2679  " thread-indent "\"[oss-security] CVE-2017-2581, CVE-2017-2579, CVE-2017-2580, CVE-2017-2586, CVE-2017-2587: Multiple vulnerabilities in netpbm\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21961 invoked by uid 550); 5 Feb 2017 13:53:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17589 invoked from network); 5 Feb 2017 13:42:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=hbo7nCiA02O3gOZvSU+r2JErCjDkY+FOUibP/HwL6hg=;
        b=VTtnUodSzGLZz4asuz4CpTWuBsvv/UvbH6OhNkLF673ZvgqDI6G4RVR6EHFbAy+M1h
         JYzf4xJjXdyJ3ghzBacm+DuyDlfPNk5Z7tLpzQjRX9gLQc1ax2EqdoAZWIJ24wPssGNZ
         vVu6MBGayCyBYdxRNLNfGRgJkWzeaF+XUogplf4zOBZRr+AjsYIJ3C6Ce4TENcQ8zmSq
         wxXKFRJkCKeEvwlGcd9yC/BkGGAVUzgwQCUlVov3vhJ0OCXdbMiYU3WhfEiBmJNgxobE
         fMR0GV9lKipk9ny/0jOvdSqdV99ufQ3ggaOr/c327ScGRsMq7Ofa7qmJIzgfhsroT2ov
         nLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=hbo7nCiA02O3gOZvSU+r2JErCjDkY+FOUibP/HwL6hg=;
        b=XHBZLw1mq7dt6ZkwjbzzXgJbdwqqpDCLMeFO414BFHwVqQRp7WpONrcfTuqG10uG4F
         htx/chTf/5lxeM9KIl8Gv4/rshUT0oi1/GrnVBQ7CiH43fk3DIvp0mo9WXwgrwGhCrUv
         POrRc0xhwkjysmDY4T5J3SGtv7vWlbZu6PJtDywRRz1x+Om9EUg4ubZat7XwC0RgpN8o
         Tme3nmrjXJVz66pqOXSLL1rYxUWK0VvOZflKZa804mXZPI80Hktnz9X/9UHDIFHDCKNB
         lRZ/TTysY78XI/KArLGJC1pNyt34xpJLDenY5C3sx0tU2weo1iBzTZ6WGxdWUp07e22E
         xnhA==
X-Gm-Message-State: AMke39kRWVhgkD/7nqdNClML0FfafvFMm5hf4LOlaBegKuhS56d8EYPePKuVImcGjEh1vas4UW9wMSAgjg9HCg==
X-Received: by 10.107.160.140 with SMTP id j134mr4655747ioe.180.1486302141343;
 Sun, 05 Feb 2017 05:42:21 -0800 (PST)
MIME-Version: 1.0
From: chunibalon <chunibalon@gmail.com>
Date: Sun, 5 Feb 2017 21:42:20 +0800
Message-ID: <CAN6_dU9ReOV3ogigS1rmM0xE_f_+BkyhktgTm0nubGNbL4WOwg@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: cve-assign@mitre.org
Content-Type: multipart/alternative; boundary=001a11407f6e29ed7b0547c8af99
Subject: [oss-security] CVE-2017-2581, CVE-2017-2579, CVE-2017-2580, CVE-2017-2586,
 CVE-2017-2587: Multiple vulnerabilities in netpbm

--001a11407f6e29ed7b0547c8af99
Content-Type: text/plain; charset=UTF-8

Hello:

       There are some issues that found in netpbm super stable branch
10.47.63 and may effect other branches and this mail is to disclose
them(the maintainer agrees with me).

        CVE-2017-2581 netpbm: Out-of-bounds write in writeRasterPbm()
function
       This OOBW issue occurs in bmptopnm and casues by integer overflow.
       This issue can be cause by a malformed BMP file through
bmptopnm.Attackers could exploit this issue to result in DoS and may cause
arbitrary code execution.

        CVE-2017-2579 netpbm: Out-of-bounds read in expandCodeOntoStack()
        This OOBR issue occurs in giftopnm and causes by insufficient check
of value of specific variable.
        This issue can be caused by a malformed GIF file through giftopnm.
Attackers could exploit this issue to result in DoS and might cause
arbitrary code execution.

        CVE-2017-2580 netpbm: Out-of-bounds write of heap data in
addPixelToRaster() function
        This OOBW issues occurs in giftopnm and causes by a improper deal
with a zero-size heap chunk allocation and when malloc() is called it will
be crash by unlink this heap overflow.
        This issue can be caused by a malformed GIF file through giftopnm.
Attackers could exploit this issue to result in DoS and might cause
arbitrary code execution by using some feature of unlink() to arbitrary
anywhere.

        CVE-2017-2586 netpbm: Null pointer dereference in stringToUint
function
        This issue occurs in svgtopam and causes by a NULL pointer passed
to strlen(const char*).
        This issue can be caused by a malformed SVG  file through svgtopam.
Attackers could exploit this issue to result in DoS of the program.


        CVE-2017-2587 netpbm: Insufficient size check of memory allocation
in createCanvas() function
        This issue occurs in svgtopam and causes by handleing memory
allocation improperly.
        This issue can be caused by a malformed SVG file through
svgtopam.Attackers could exploit this issue to result in DoS of the program
and might DoS the OS if the OS do not terminate the program automatically
and timely because of the large allocation of the memory.

       Some of these issues are patched in other branches and all will be
patched in Super Stable branch in March as maintainer said.
       And the maintainer said: "*Anyone who wants a fix before the March
Super Stable release can either upgrade to Stable or backport the
fixes from Stable."*

       These CVE ids are assigned by Redhat Product Security(
secalert@redhat.com).


Best Regards!
chunibalon of VARAS@IIE

--001a11407f6e29ed7b0547c8af99--
