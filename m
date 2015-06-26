X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["963" "Friday" "26" "June" "2015" "10:28:12" "+0800" "Guanxing Wen" "wengx522@gmail.com" "<CAOSkqBXYWzB3tzKQX6RRDLw89optSnphk18d50hPvXpB8V86bw@mail.gmail.com>" "30" "[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()" nil nil nil "6" "2015062602:28:12" "[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()" (number mark "        wengx522@gma Jun 26   30/963   " thread-indent "\"[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9339 invoked by uid 550); 26 Jun 2015 05:01:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32447 invoked from network); 26 Jun 2015 02:28:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=DgcJf4mFCa9i8zlw4cU2PhyAuSU89ntCDpLsTO4oWA0=;
        b=Vk9CRLSnJUEga0bfl7fCsBS5TlzDzNF1luPp+wJ5IjdcWOZYrIJGNxE88jFhRPfNOf
         udzGF+HVO0JnhXrXf4Xlgvv2Dat03uNHYoNdE+FFwQ8rjMdtGFnAVinIaNVbTFl/2lmc
         e3ReDR3Q5eJGrZXPVe2EdzLJgP0kJ4OqpOiNldpHMGOxHN6p44uGrdkoJZO2RPYm0mG0
         GJfM0aNjd24qeftlUf8RxmF2NEgZHsKT7IeLSlKC8l++yrnF/IOoTaQfieHmm582IZD8
         xUX1F+JPb1d5dhC4z+N2rOpTLP2Gc2nytNBfSg5LKO8vBp5/jFwrNTtA+9gozPs5gjL1
         2fVg==
MIME-Version: 1.0
X-Received: by 10.182.199.34 with SMTP id jh2mr8035669obc.48.1435285692100;
 Thu, 25 Jun 2015 19:28:12 -0700 (PDT)
Message-ID: <CAOSkqBXYWzB3tzKQX6RRDLw89optSnphk18d50hPvXpB8V86bw@mail.gmail.com>
Content-Type: multipart/alternative; boundary=e89a8ff1ccd6d436280519627ddd
Date: Fri, 26 Jun 2015 10:28:12 +0800
From: Guanxing Wen <wengx522@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability in find_fixedlength()
To: oss-security@lists.openwall.com

--e89a8ff1ccd6d436280519627ddd
Content-Type: text/plain; charset=UTF-8

Hi,

PCRE is a regular expression C library inspired by the regular expression
capabilities in the Perl programming language.
The PCRE library is incorporated into a number of prominent programs, such
as Adobe Flash, Apache, Nginx, PHP.

PCRE library is prone to a vulnerability which leads to Heap Overflow.
During subpattern calculation of a malformed regular expression, an offset
that is used as an array index is fully controlled and can be large enough
so that unexpected heap memory regions are accessed.
One could at least exploit this issue to read objects nearby of the
affected application's memory.
Such information discloure may also be used to bypass memory protection
method such as ASLR.

Reference:
https://bugs.exim.org/show_bug.cgi?id=1651

Would you please allocate a CVE-ID for this?

Thank you.
----

Wen Guanxing from Venustech ADLAB

--e89a8ff1ccd6d436280519627ddd--
