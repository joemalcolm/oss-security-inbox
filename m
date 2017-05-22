X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["30133" "Monday" "22" "May" "2017" "07:54:27" "-0500" "Brandon Perry" "bperry.volatile@gmail.com" "<BF31B87E-F34A-4206-961A-8B80B7AFCA54@gmail.com>" "783" "Re: [oss-security] Multiple crashes in OpenEXR" nil nil nil "5" "2017052212:54:27" "[oss-security] Multiple crashes in OpenEXR" (number mark "U       bperry.volat May 22  783/30133 " thread-indent "\"Re: [oss-security] Multiple crashes in OpenEXR\"\n") "<4DB80547-81B4-4091-BEDD-ADFF17ADAE6B@gmail.com>" ("<6543F18F-81C2-492A-917E-6F331F917D02@gmail.com>" "<20170512184509.GA30373@tunkki>" "<4DB80547-81B4-4091-BEDD-ADFF17ADAE6B@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30670 invoked by uid 550); 22 May 2017 12:54:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 30652 invoked from network); 22 May 2017 12:54:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references;
        bh=hVvYye2tXQt1OlITXEOX7VPu3z2tyGGC1BcJGl2TmCI=;
        b=uWZ5xZlAsf7Qgj5oN+X4QEr9dDS4MA9B+pZ8vryI2+tLDptQuHhkMmuiiqK01QJfdv
         pDJ3dWBk/hvAgZe4pk8Ic28VOj44XlLT/Y3Mgn4/g6KW+ROMV5FyrpnB7T3tOJPkgj4+
         15iAMUbelyRtq+HKiQQG4qhuPFuK9JhOOKw56zqWuxhjEYSp2+e7jPhWsVN5JuvxYy83
         eVlgXnNr0ErrwtZRqJci7wppXWAgWvIy0Lcps72zet3eaQTt6dmv1JbYLzMHfnFLsBCv
         9u21+eH0ItQUTFkAnChBl0jIbyi89p4Gq98taq1ok3Nwnk+5CNdKROlC2SH6JHYiXQvK
         H33A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references;
        bh=hVvYye2tXQt1OlITXEOX7VPu3z2tyGGC1BcJGl2TmCI=;
        b=pfBvwScO0Pvs2Xxuj3uwviAPfowrS9WGa1fGqO0c5WPEWXe4es42rBhtMmhbDErZpc
         3GbKOC7WpvPjv43DjqLF0VS6jHFx+FJL9lXQXJYtzmOGMMFvWENj4jPKiIKToqRBVBZh
         awYRR94JJNXJF0VaS/N/pCpV6gMzwsjGMmsluDKygpFIOd5gTQZhNo9Gdd53IEtn8ajp
         8JL78g7Hwr1D0XhI9Uhk+00mprScUKb6u1wNjqzTMERt3Br5I75oUvDSppoYxYZYyM2w
         4vMCQdbEkkteYR9Tmfu4I1aohqJfEXpags3FxgiRVj5ewEk/4LKa4bClHDooWAsTfrv8
         4skA==
X-Gm-Message-State: AODbwcC1/YvEvjaWN0VxtAYm7Tr1aI/n2VIR+/uYV/Q/ypvzzQvuP2Al
	kWBQY5w85OR5/w==
X-Received: by 10.157.11.34 with SMTP id a31mr14562865ota.114.1495457677562;
        Mon, 22 May 2017 05:54:37 -0700 (PDT)
From: Brandon Perry <bperry.volatile@gmail.com>
Message-Id: <BF31B87E-F34A-4206-961A-8B80B7AFCA54@gmail.com>
Content-Type: multipart/signed;
 boundary="Apple-Mail=_C13DD170-1827-4674-94C3-717A75C983AD";
 protocol="application/pgp-signature"; micalg=pgp-sha512
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Mon, 22 May 2017 07:54:27 -0500
In-Reply-To: <4DB80547-81B4-4091-BEDD-ADFF17ADAE6B@gmail.com>
Cc: fulldisclosure@seclists.org
To: oss-security@lists.openwall.com
References: <6543F18F-81C2-492A-917E-6F331F917D02@gmail.com>
 <20170512184509.GA30373@tunkki>
 <4DB80547-81B4-4091-BEDD-ADFF17ADAE6B@gmail.com>
X-Mailer: Apple Mail (2.3273)
Subject: Re: [oss-security] Multiple crashes in OpenEXR

--Apple-Mail=_C13DD170-1827-4674-94C3-717A75C983AD
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_02D557F5-D887-4BDD-8B01-F4D77AEB8585"


--Apple-Mail=_02D557F5-D887-4BDD-8B01-F4D77AEB8585
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On May 12, 2017, at 1:48 PM, Brandon Perry <bperry.volatile@gmail.com> wr=
ote:
>=20
>=20
>> On May 12, 2017, at 1:45 PM, Henri Salo <henri@nerv.fi> wrote:
>>=20
>> On Fri, May 12, 2017 at 12:09:30PM -0500, Brandon Perry wrote:
>>> As of this writing, <snip>. No CVEs have been requested.
>>=20
>> Why not?
>=20
> I=E2=80=99m lazy. I might this weekend.
>=20

Attached is the email from MITRE regarding the 7 CVE allocations.



--Apple-Mail=_02D557F5-D887-4BDD-8B01-F4D77AEB8585
Content-Disposition: attachment;
	filename="Re_ [scr336814] OpenEXR - 2.2.0.eml"
Content-Type: message/rfc822;
	x-unix-mode=0644;
	name="Re_ [scr336814] OpenEXR - 2.2.0.eml"
Content-Transfer-Encoding: binary

Delivered-To: bperry.volatile@gmail.com
Received: by 10.176.66.225 with SMTP id j88csp1056743uaj;
        Sun, 21 May 2017 10:48:49 -0700 (PDT)
X-Received: by 10.55.69.67 with SMTP id s64mr16566451qka.221.1495388929424;
        Sun, 21 May 2017 10:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1495388929; cv=none;
        d=google.com; s=arc-20160816;
        b=cN+EPVkROteWecsGztJw5/zBKAEPNyZShIM+o0aTPTmpTOjUKuNlQOKF82oEKYLrsw
         LF/j5ogRi7mlJM7+rl2q+ppREaUQWEFo2rL8yaUI9l6rherQNxuhfYF8tfKDui0Nl+72
         zPAb30IuV9LBEa9dLMQLbHOkbNaXJBBuVBSqEhEwuG8owbUUm71Bqdh3c+IkTbR1/sz0
         51p5017NFH+/geYhXsXy+djovq2dsPVR/OalWFFC84okamjKYz3C2btKavBQxm/EA5Xd
         2kfzUwDOZWnfk8gFIPjSzqKTcT5nAMX6dyJbheA6L6b4dP4/d5bKKhcdVd+fwk0OcBdj
         4nkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:date:message-id:subject:cc:to:from
         :arc-authentication-results;
        bh=xUUdd+ax3JXXHy/F4LMxy9cBkp2rmQqFaSShvPAZKr4=;
        b=XfWTbCiwv93e84P+lXTPKm0xNnxOQEgRFgujb4vlzJ9Nh8bNwpedKMUuPwf2p76UA1
         /R0bwMziaPRZMajL9rFyAknNtxN1XJMstByG6U2vCpFpIKfvBuAi8NoTEBGeZ9EFFia0
         35twpoOourU09nN8VjPYkwnMGsfS3iLdGf6VchL4/Venl4HxdYwjP1zhq54EhPYiJtTP
         qFzeokw2j/UBL4Kb/Tiyp1k93Fr5afRu7lIW7pv/NrMmTMATARfCX/3fWAoFlDfm7tAL
         NkeReo7kYp8i8+oJSVsGKxFUrIdVTBwSAeMgiNq9jxOtz98rV0d8fxRg9espg7rzUpgT
         W/Vw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of cve-request@mitre.org designates 192.52.194.136 as permitted sender) smtp.mailfrom=CVE-Request@mitre.org
Return-Path: <CVE-Request@mitre.org>
Received: from smtpvmsrv1.mitre.org (smtpvmsrv1.mitre.org. [192.52.194.136])
        by mx.google.com with ESMTP id 125si15433037qkg.36.2017.05.21.10.48.49
        for <bperry.volatile@gmail.com>;
        Sun, 21 May 2017 10:48:49 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of cve-request@mitre.org designates 192.52.194.136 as permitted sender) client-ip=192.52.194.136;
Authentication-Results: mx.google.com;
       spf=pass (google.com: best guess record for domain of cve-request@mitre.org designates 192.52.194.136 as permitted sender) smtp.mailfrom=CVE-Request@mitre.org
Received: from smtpvmsrv1.mitre.org (localhost.localdomain [127.0.0.1])
	by localhost (Postfix) with SMTP id BE3C86C01C4;
	Sun, 21 May 2017 13:49:05 -0400 (EDT)
Received: from imshyb02.MITRE.ORG (imshyb02.mitre.org [129.83.29.3])
	by smtpvmsrv1.mitre.org (Postfix) with ESMTP id AC7866C01BF;
	Sun, 21 May 2017 13:49:05 -0400 (EDT)
Received: from imshyb01.MITRE.ORG (129.83.29.2) by imshyb02.MITRE.ORG
 (129.83.29.3) with Microsoft SMTP Server (TLS) id 15.0.1263.5; Sun, 21 May
 2017 13:48:48 -0400
Received: from rcf-smtp.mitre.org (10.140.19.249) by imshyb01.MITRE.ORG
 (129.83.29.2) with Microsoft SMTP Server id 15.0.1263.5 via Frontend
 Transport; Sun, 21 May 2017 13:48:48 -0400
Received: from cvecmssrv1.mitre.org (cvecmssrv1.mitre.org [129.83.19.107])
	by rcf-smtp.mitre.org (Postfix) with SMTP id 9183D18002E;
	Sun, 21 May 2017 13:48:19 -0400 (EDT)
From: <cve-request@mitre.org>
To: <bperry.volatile@gmail.com>
CC: <cve-request@mitre.org>
Subject: Re: [scr336814] OpenEXR - 2.2.0
Message-ID: <a1cd5ef6f1e84bd9a5b974d8fd05bc10@imshyb01.MITRE.ORG>
Return-Path: cve-request@mitre.org
Date: Sun, 21 May 2017 13:48:48 -0400
MIME-Version: 1.0
Content-Type: text/plain

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

The 7 CVE IDs are below. In our web form, the field sizes are
unfortunately not large enough for the full Valgrind output; however,
we understand that the intention was to send the Valgrind output in
the attached ZIP file of the
http://marc.info/?l=oss-security&m=149460897719400&w=2 post.


> [Suggested description]
> In OpenEXR 2.2.0,
> an invalid read of size 2 in the hufDecode function in ImfHuf.cpp
> could cause the application to crash.
> 
> ------------------------------------------
> 
> [Additional Information]
> ==25145== Memcheck, a memory error detector
> ==25145== Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward et al.
> ==25145== Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyright info
> ==25145== Command: /root/openexr/OpenEXR/exr2aces/build/exr2aces id:000012,sig:11,src:000328+001154,op:splice,rep:16 /dev/null
> ==25145== 
> ==25145== Invalid read of size 2
> ==25145==    at 0x4EDC452: hufDecode (ImfHuf.cpp:898)
> ==25145==    by 0x4EDC452: Imf_2_2::hufUncompress(char const*, int, unsigned short*, int) (ImfHuf.cpp:1101)
> ==25145==    by 0x4EE5680: Imf_2_2::PizCompressor::uncompress(char const*, int, Imath_2_2::Box<Imath_2_2::Vec2<int> >, char const*&) (ImfPizCompressor.cpp:576)
> ==25145==    by 0x4EE4E9D: Imf_2_2::PizCompressor::uncompress(char const*, int, int, char const*&) (ImfPizCompressor.cpp:284)
> ==25145==    by 0x4F5F4A3: Imf_2_2::(anonymous namespace)::LineBufferTask::execute() (ImfScanLineInputFile.cpp:540)
> ==25145==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThread_2_2::Task*) (IlmThreadPool.cpp:433)
> ==25145==    by 0x4F58B47: Imf_2_2::ScanLineInputFile::readPixels(int, int) (ImfScanLineInputFile.cpp:1612)
> ==25145==    by 0x4EB603F: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:815)
> ==25145==    by 0x4ED4C42: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1302)
> ==25145==    by 0x4FB2416: Imf_2_2::AcesInputFile::readPixels(int, int) (ImfAcesFile.cpp:509)
> ==25145==    by 0x40283D: exr2aces (main.cpp:128)
> ==25145==    by 0x40283D: main (main.cpp:220)
> ==25145==  Address 0x717c03e is 2 bytes before a block of size 8,356,352 alloc'd
> ==25145==    at 0x4C2E80F: operator new[](unsigned long) (in /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> ==25145==    by 0x4EE26EA: Imf_2_2::PizCompressor::PizCompressor(Imf_2_2::Header const&, unsigned long, unsigned long) (ImfPizCompressor.cpp:193)
> ==25145==    by 0x4EE0767: Imf_2_2::newCompressor(Imf_2_2::Compression, unsigned long, Imf_2_2::Header const&) (ImfCompressor.cpp:148)
> == ...
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> Industrial Light & Magic
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> OpenEXR - 2.2.0
> 
> ------------------------------------------
> 
> [Affected Component]
> ImfHuf.cpp, hufDecode function
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Impact Information Disclosure]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Someone must open a crafted
> 
> ------------------------------------------
> 
> [Reference]
> http://www.openwall.com/lists/oss-security/2017/05/12/5
> 
> ------------------------------------------
> 
> [Discoverer]
> Brandon Perry

Use CVE-2017-9110.


> [Suggested description]
> In OpenEXR 2.2.0,
> an invalid write of size 8 in the storeSSE function in
> ImfOptimizedPixelReading.h could cause the application to crash or
> execute arbitrary code.
> 
> ------------------------------------------
> 
> [Additional Information]
> ==1726== Memcheck, a memory error detector
> ==1726== Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward et al.
> ==1726== Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyright info
> ==1726== Command: /root/openexr/OpenEXR/exr2aces/build/exr2aces id:000087,sig:11,src:000562+000300,op:splice,rep:2 /dev/null
> ==1726== 
> ==1726== Invalid write of size 8
> ==1726==    at 0x4F5C940: storeSSE<true> (ImfOptimizedPixelReading.h:125)
> ==1726==    by 0x4F5C940: writeToRGBASSETemplate<false, true> (ImfOptimizedPixelReading.h:166)
> ==1726==    by 0x4F5C940: optimizedWriteToRGBA (ImfOptimizedPixelReading.h:248)
> ==1726==    by 0x4F5C940: Imf_2_2::(anonymous namespace)::LineBufferTaskIIF::execute() (ImfScanLineInputFile.cpp:959)
> ==1726==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThread_2_2::Task*) (IlmThreadPool.cpp:433)
> ==1726==    by 0x4F58B47: Imf_2_2::ScanLineInputFile::readPixels(int, int) (ImfScanLineInputFile.cpp:1612)
> ==1726==    by 0x4EB603F: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:815)
> ==1726==    by 0x4ED4C42: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1302)
> ==1726==    by 0x4FB2416: Imf_2_2::AcesInputFile::readPixels(int, int) (ImfAcesFile.cpp:509)
> ==1726==    by 0x40283D: exr2aces (main.cpp:128)
> ==1726==    by 0x40283D: main (main.cpp:220)
> ==1726==  Address 0x4fd0070ea9f0 is not stack'd, malloc'd or (recently) free'd
> ==1726== 
> ==1726== 
> ==1726== Process terminating with default action of signal 11 (SIGSEGV)
> ==1726==  Access not within mapped region at address 0x4FD0070EA9F0
> ==1726==    at 0x4F5C940: storeSSE<true> (ImfOptimizedPixelReading.h:125)
> ==1726==    by 0x4F5C940: writeToRGBASSETemplate<false, true> (ImfOptimizedPixelReading.h:166)
> ==1726==    by 0x4F5C940: optimizedWriteToRGBA (ImfOptimizedPixelReading.h:248)
> ==1726==    by 0x4F5C940: Imf_2_2::(anonymous namespace)::LineBufferTaskIIF::execute() (ImfScanLineInputFile.cpp:959)
> ==1726==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThread_2_2::Task*)
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> Industrial Light & Magic
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> OpenEXR - 2.2.0
> 
> ------------------------------------------
> 
> [Affected Component]
> ImfOptimizedPixelReading.h, storeSSE function
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Code execution]
> true
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Someone must open a crafted EXR image
> 
> ------------------------------------------
> 
> [Reference]
> http://www.openwall.com/lists/oss-security/2017/05/12/5
> 
> ------------------------------------------
> 
> [Discoverer]
> Brandon Perry

Use CVE-2017-9111.


> [Suggested description]
> In OpenEXR 2.2.0,
> an invalid read of size 1 in the getBits function in ImfHuf.cpp could cause the application to crash.
> 
> ------------------------------------------
> 
> [Additional Information]
> ==7206== Memcheck, a memory error detector
> ==7206== Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward et al.
> ==7206== Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyright info
> ==7206== Command: /root/openexr/OpenEXR/exr2aces/build/exr2aces id:000103,sig:11,src:002037+004745,op:splice,rep:2 /dev/null
> ==7206== 
> ==7206== Invalid read of size 1
> ==7206==    at 0x4EDAA4D: getBits (ImfHuf.cpp:180)
> ==7206==    by 0x4EDAA4D: hufUnpackEncTable (ImfHuf.cpp:543)
> ==7206==    by 0x4EDAA4D: Imf_2_2::hufUncompress(char const*, int, unsigned short*, int) (ImfHuf.cpp:1089)
> ==7206==    by 0x4EE5680: Imf_2_2::PizCompressor::uncompress(char const*, int, Imath_2_2::Box<Imath_2_2::Vec2<int> >, char const*&) (ImfPizCompressor.cpp:576)
> ==7206==    by 0x4EE4E9D: Imf_2_2::PizCompressor::uncompress(char const*, int, int, char const*&) (ImfPizCompressor.cpp:284)
> ==7206==    by 0x4F5BCD1: Imf_2_2::(anonymous namespace)::LineBufferTaskIIF::execute() (ImfScanLineInputFile.cpp:855)
> ==7206==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThread_2_2::Task*) (IlmThreadPool.cpp:433)
> ==7206==    by 0x4F58B47: Imf_2_2::ScanLineInputFile::readPixels(int, int) (ImfScanLineInputFile.cpp:1612)
> ==7206==    by 0x4EB603F: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:815)
> ==7206==    by 0x4ED4C42: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1302)
> ==7206==    by 0x4FB2416: Imf_2_2::AcesInputFile::readPixels(int, int) (ImfAcesFile.cpp:509)
> ==7206==    by 0x40283D: exr2aces (main.cpp:128)
> ==7206==    by 0x40283D: main (main.cpp:220)
> ==7206==  Address 0x6daa4a0 is 0 bytes after a block of size 768 alloc'd
> ==7206==    at 0x4C2FFC6: memalign (in /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> ==7206==    by 0x4C300D1: posix_memalign (in /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> ==7206==    by 0x4F523A2: EXRAllocAligned (ImfSystemSpecific.h:66)
> ==7206==    by 0x4F523A2: Imf_2_2::ScanLineInputFile::initialize(Imf_2_2::Header const&) (ImfScanLineInpu ...
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> Industrial Light & Magic
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> OpenEXR - 2.2.0
> 
> ------------------------------------------
> 
> [Affected Component]
> ImfHuf.cpp, getBits function
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Impact Information Disclosure]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Someone must open a specially crafted EXR image.
> 
> ------------------------------------------
> 
> [Reference]
> http://www.openwall.com/lists/oss-security/2017/05/12/5
> 
> ------------------------------------------
> 
> [Discoverer]
> Brandon Perry

Use CVE-2017-9112.


> [Suggested description]
> In OpenEXR 2.2.0,
> an invalid write of size 1 in the bufferedReadPixels function in
> ImfInputFile.cpp could cause the application to crash or execute
> arbitrary code.
> 
> ------------------------------------------
> 
> [Additional Information]
> ==17324== Memcheck, a memory error detector
> ==17324== Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward et al.
> ==17324== Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyright info
> ==17324== Command: /root/openexr/OpenEXR/exr2aces/build/exr2aces id:000131,sig:11,src:000514+002831,op:splice,rep:16 /dev/null
> ==17324== 
> ==17324== Invalid write of size 1
> ==17324==    at 0x4EB4FBA: bufferedReadPixels (ImfInputFile.cpp:331)
> ==17324==    by 0x4EB4FBA: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:811)
> ==17324==    by 0x4ED4C42: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1302)
> ==17324==    by 0x4FB2416: Imf_2_2::AcesInputFile::readPixels(int, int) (ImfAcesFile.cpp:509)
> ==17324==    by 0x40283D: exr2aces (main.cpp:128)
> ==17324==    by 0x40283D: main (main.cpp:220)
> ==17324==  Address 0xffffffd006dbf6d6 is not stack'd, malloc'd or (recently) free'd
> ==17324== 
> ==17324== 
> ==17324== Process terminating with default action of signal 11 (SIGSEGV)
> ==17324==  Access not within mapped region at address 0xFFFFFFD006DBF6D6
> ==17324==    at 0x4EB4FBA: bufferedReadPixels (ImfInputFile.cpp:331)
> ==17324==    by 0x4EB4FBA: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:811)
> ==17324==    by 0x4ED4C42: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1302)
> ==17324==    by 0x4FB2416: Imf_2_2::AcesInputFile::readPixels(int, int) (ImfAcesFile.cpp:509)
> ==17324==    by 0x40283D: exr2aces (main.cpp:128)
> ==17324==    by 0x40283D: main (main.cpp:220)
> ==17324==  If you believe this happened as a result of a stack
> ==17324==  overflow in your program's main thread (unlikely but
> ==17324==  possible), you can try to increase the size of the
> ==17324==  main thread stack using the --main-stacksize= flag.
> ==17324==  The main thread stack size used in this run was 8388608.
> ==17324== 
> ==17324== HEAP SUMMARY:
> ==17324==     in use at exit: 275,884 bytes in 198 blocks
> ==17324==   total heap usage: 254 allocs, 56 frees, 283,664 bytes allocated
> == ...
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> Industrial Light & Magic
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> OpenEXR - 2.2.0
> 
> ------------------------------------------
> 
> [Affected Component]
> ImfInputFile.cpp, bufferedReadPixels function
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Code execution]
> true
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Someone must open a crafted EXR image
> 
> ------------------------------------------
> 
> [Reference]
> http://www.openwall.com/lists/oss-security/2017/05/12/5
> 
> ------------------------------------------
> 
> [Discoverer]
> Brandon Perry

Use CVE-2017-9113.


> [Suggested description]
> In OpenEXR 2.2.0,
> an invalid read of size 1 in the refill function in ImfFastHuf.cpp could cause the application to crash.
> 
> ------------------------------------------
> 
> [Additional Information]
> ==21490== Memcheck, a memory error detector
> ==21490== Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward et al.
> ==21490== Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyright info
> ==21490== Command: /root/openexr/OpenEXR/exr2aces/build/exr2aces id:000132,sig:11,src:000895,op:havoc,rep:32 /dev/null
> ==21490== 
> ==21490== Invalid read of size 1
> ==21490==    at 0x50394CB: refill (ImfFastHuf.cpp:491)
> ==21490==    by 0x50394CB: Imf_2_2::FastHufDecoder::decode(unsigned char const*, int, unsigned short*, int) (ImfFastHuf.cpp:643)
> ==21490==    by 0x4EDA77C: Imf_2_2::hufUncompress(char const*, int, unsigned short*, int) (ImfHuf.cpp:1080)
> ==21490==    by 0x4EE5680: Imf_2_2::PizCompressor::uncompress(char const*, int, Imath_2_2::Box<Imath_2_2::Vec2<int> >, char const*&) (ImfPizCompressor.cpp:576)
> ==21490==    by 0x4EE4E9D: Imf_2_2::PizCompressor::uncompress(char const*, int, int, char const*&) (ImfPizCompressor.cpp:284)
> ==21490==    by 0x4F5BCD1: Imf_2_2::(anonymous namespace)::LineBufferTaskIIF::execute() (ImfScanLineInputFile.cpp:855)
> ==21490==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThread_2_2::Task*) (IlmThreadPool.cpp:433)
> ==21490==    by 0x4F58B47: Imf_2_2::ScanLineInputFile::readPixels(int, int) (ImfScanLineInputFile.cpp:1612)
> ==21490==    by 0x4EB603F: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:815)
> ==21490==    by 0x4ED4C42: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1302)
> ==21490==    by 0x4FB2416: Imf_2_2::AcesInputFile::readPixels(int, int) (ImfAcesFile.cpp:509)
> ==21490==    by 0x40283D: exr2aces (main.cpp:128)
> ==21490==    by 0x40283D: main (main.cpp:220)
> ==21490==  Address 0x6dcd950 is 0 bytes after a block of size 49,344 alloc'd
> ==21490==    at 0x4C2FFC6: memalign (in /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> ==21490==    by 0x4C300D1: posix_memalign (in /usr/lib/valgrind/vgpreload_memcheck-amd64-linux.so)
> ==21490==    by 0x4F523A2: EXRAllocAligned (ImfSystemSpecific.h:66)
> ==21490==    by ...
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> Industrial Light & Magic
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> OpenEXR - 2.2.0
> 
> ------------------------------------------
> 
> [Affected Component]
> ImfFastHuf.cpp, refill function
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Impact Information Disclosure]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Someone must open a crafted EXR image.
> 
> ------------------------------------------
> 
> [Reference]
> http://www.openwall.com/lists/oss-security/2017/05/12/5
> 
> ------------------------------------------
> 
> [Discoverer]
> Brandon Perry

Use CVE-2017-9114.


> [Suggested description]
> In OpenEXR 2.2.0,
> an invalid write of size 2 in the = operator function in half.h could
> cause the application to crash or execute arbitrary code.
> 
> ------------------------------------------
> 
> [Additional Information]
> ==12435== Memcheck, a memory error detector
> ==12435== Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward et al.
> ==12435== Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyright info
> ==12435== Command: /root/openexr/OpenEXR/exr2aces/build/exr2aces id:000104,sig:11,src:001329+000334,op:splice,rep:2 /dev/null
> ==12435== 
> ==12435== Invalid write of size 2
> ==12435==    at 0x4F2D1F7: operator= (half.h:574)
> ==12435==    by 0x4F2D1F7: Imf_2_2::copyIntoFrameBuffer(char const*&, char*, char*, unsigned long, bool, double, Imf_2_2::Compressor::Format, Imf_2_2::PixelType, Imf_2_2::PixelType) (ImfMisc.cpp:317)
> ==12435==    by 0x4F5FDC5: Imf_2_2::(anonymous namespace)::LineBufferTask::execute() (ImfScanLineInputFile.cpp:635)
> ==12435==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThread_2_2::Task*) (IlmThreadPool.cpp:433)
> ==12435==    by 0x4F58B47: Imf_2_2::ScanLineInputFile::readPixels(int, int) (ImfScanLineInputFile.cpp:1612)
> ==12435==    by 0x4EB603F: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:815)
> ==12435==    by 0x4ED4C42: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1302)
> ==12435==    by 0x4FB2416: Imf_2_2::AcesInputFile::readPixels(int, int) (ImfAcesFile.cpp:509)
> ==12435==    by 0x40283D: exr2aces (main.cpp:128)
> ==12435==    by 0x40283D: main (main.cpp:220)
> ==12435==  Address 0x4806d9b156 is not stack'd, malloc'd or (recently) free'd
> ==12435== 
> ==12435== 
> ==12435== Process terminating with default action of signal 11 (SIGSEGV)
> ==12435==  Access not within mapped region at address 0x4806D9B156
> ==12435==    at 0x4F2D1F7: operator= (half.h:574)
> ==12435==    by 0x4F2D1F7: Imf_2_2::copyIntoFrameBuffer(char const*&, char*, char*, unsigned long, bool, double, Imf_2_2::Compressor::Format, Imf_2_2::PixelType, Imf_2_2::PixelType) (ImfMisc.cpp:317)
> ==12435==    by 0x4F5FDC5: Imf_2_2::(anonymous namespace)::LineBufferTask::execute() (ImfScanLineInputFile.cpp:635)
> ==12435==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThrea ...
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> Industrial Light & Magic
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> OpenEXR - 2.2.0
> 
> ------------------------------------------
> 
> [Affected Component]
> half.h, operator= function
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Code execution]
> true
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Someone must open a crafted EXR image.
> 
> ------------------------------------------
> 
> [Reference]
> http://www.openwall.com/lists/oss-security/2017/05/12/5
> 
> ------------------------------------------
> 
> [Discoverer]
> Brandon Perry

Use CVE-2017-9115.


> [Suggested description]
> In OpenEXR 2.2.0,
> an invalid read of size 1 in the uncompress function in ImfZip.cpp could cause the application to crash.
> 
> ------------------------------------------
> 
> [Additional Information]
> ==28224== Memcheck, a memory error detector
> ==28224== Copyright (C) 2002-2015, and GNU GPL'd, by Julian Seward et al.
> ==28224== Using Valgrind-3.11.0 and LibVEX; rerun with -h for copyright info
> ==28224== Command: /root/openexr/OpenEXR/exr2aces/build/exr2aces id:000077,sig:11,src:002575,op:havoc,rep:4 /dev/null
> ==28224== 
> ==28224== Invalid read of size 1
> ==28224==    at 0x6733D3A: inflate (in /lib/x86_64-linux-gnu/libz.so.1.2.8)
> ==28224==    by 0x6738DD4: uncompress (in /lib/x86_64-linux-gnu/libz.so.1.2.8)
> ==28224==    by 0x503C7AD: Imf_2_2::Zip::uncompress(char const*, int, char*) (ImfZip.cpp:148)
> ==28224==    by 0x4F0ABB4: Imf_2_2::DwaCompressor::uncompress(char const*, int, Imath_2_2::Box<Imath_2_2::Vec2<int> >, char const*&) (ImfDwaCompressor.cpp:2592)
> ==28224==    by 0x4F09DF8: Imf_2_2::DwaCompressor::uncompress(char const*, int, int, char const*&) (ImfDwaCompressor.cpp:2312)
> ==28224==    by 0x4F5F4A3: Imf_2_2::(anonymous namespace)::LineBufferTask::execute() (ImfScanLineInputFile.cpp:540)
> ==28224==    by 0x54587BD: IlmThread_2_2::ThreadPool::addTask(IlmThread_2_2::Task*) (IlmThreadPool.cpp:433)
> ==28224==    by 0x4F58B47: Imf_2_2::ScanLineInputFile::readPixels(int, int) (ImfScanLineInputFile.cpp:1612)
> ==28224==    by 0x4EB603F: Imf_2_2::InputFile::readPixels(int, int) (ImfInputFile.cpp:815)
> ==28224==    by 0x4ED2187: Imf_2_2::RgbaInputFile::FromYca::readYCAScanLine(int, Imf_2_2::Rgba*) (ImfRgbaFile.cpp:1126)
> ==28224==    by 0x4ED11F6: Imf_2_2::RgbaInputFile::FromYca::readPixels(int) (ImfRgbaFile.cpp:1050)
> ==28224==    by 0x4ED4CA1: readPixels (ImfRgbaFile.cpp:959)
> ==28224==    by 0x4ED4CA1: Imf_2_2::RgbaInputFile::readPixels(int, int) (ImfRgbaFile.cpp:1298)
> ==28224==  Address 0x6800000006d986d8 is not stack'd, malloc'd or (recently) free'd
> ==28224== 
> ==28224== 
> ==28224== Process terminating with default action of signal 11 (SIGSEGV)
> ==28224==  General Protection Fault
> ==28224==    at 0x6733D3A: inflate (in /lib/x86_64-linux-gnu/libz.so.1.2.8)
> ==28224==    by 0x ...
> 
> ------------------------------------------
> 
> [Vulnerability Type]
> Buffer Overflow
> 
> ------------------------------------------
> 
> [Vendor of Product]
> Industrial Light & Magic
> 
> ------------------------------------------
> 
> [Affected Product Code Base]
> OpenEXR - 2.2.0
> 
> ------------------------------------------
> 
> [Affected Component]
> ImfZip.cpp, uncompress function
> 
> ------------------------------------------
> 
> [Attack Type]
> Local
> 
> ------------------------------------------
> 
> [Impact Denial of Service]
> true
> 
> ------------------------------------------
> 
> [Impact Information Disclosure]
> true
> 
> ------------------------------------------
> 
> [Attack Vectors]
> Someone must open a crafted EXR image.
> 
> ------------------------------------------
> 
> [Reference]
> http://www.openwall.com/lists/oss-security/2017/05/12/5
> 
> ------------------------------------------
> 
> [Discoverer]
> Brandon Perry

Use CVE-2017-9116.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJZIdKJAAoJEHb/MwWLVhi2T7YP/ijc5bTN+xxbTDjtpeaC9Df/
TVK5YsN9Q9chEGnL/Fv3saCBZc36IMF3NIdxUDDFrpLLFj62aQF9dJnObasgobDJ
NFxu5vcGaHRrGO5oDFpnjONKo+mcc1uX7c89ALf7XpaIBtBZdGanAZf+mwBTDCye
ihjE4OjaeB+qWxHg9VfgTjMWUffY28D93zimyWJZXUK49NlgCxgLLW1FAWdpvC6i
e9mjayHcAtrsMhqJJgkfCrf12q2ybHcaDQCY0n95pOp8BO99Z0PQ8s0GGCq59ZVj
1vvWD/0QN3O+nqTvwYI3BaYplPWRLa6g4W4EcLYwSzkOlgjIniKzEjEebcx8XJkh
HwdTz1I4d0o00Jfkgw+FU3w1BbfNQeBmD+2YNJk6aQr990Ls6nTyr1G81Yjvm9fF
m5ANEEjswRcUJ+cQuqdfCKZ/mPT6SfOIldDGbMXLXtRA+qaCeNhVTtcu1jYRdL+Z
lvoGZKqTLLTXoK0jA9wZSUdDsISbxaI9F8MImhlenLyNWXjHnjSXk4REh7Xzem+9
EDyCMs4faueoseDekX2b9oPt9LsITb73HBVfBSEgh8PcIwLTBjpCY+N84YvAaXBC
yx3Hr62tRRveWKIVqT9K/NqqC4b5ng4aQpNY0TsTLVmwFEfumCzzjGrbANSXWptT
I+fb15b8cl+e7h4STff4
=UzO0
-----END PGP SIGNATURE-----

--Apple-Mail=_02D557F5-D887-4BDD-8B01-F4D77AEB8585
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


>> 
>> --
>> Henri Salo
> 


--Apple-Mail=_02D557F5-D887-4BDD-8B01-F4D77AEB8585--

--Apple-Mail=_C13DD170-1827-4674-94C3-717A75C983AD
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJZIt+JAAoJEKJq8VjVbt2ptPkQAI+jUYpSPPXZu5gCA15tyT4A
SiSSYG/o3ggHiwNNrGJqiEH8KAPrR+GH4vtVx4BpPFkizzIWyauKBv3r1XHtckTH
2RTP8EEABgZfy46kyS8nUp30i7LQgb93/xUQrVKASk3sR6UjEOZcO7j28raiRdcw
i/P7nv8Ubuo32mrRjmavUcrzkfPshFloAwAYDH0ihWATHAMBwxhDzjs3u/YXnJRj
HVVNzFxS+51RfqES0EiHa2EZBVBdRCIciFwU3NAzAw2Y/rHpFnl2j+jRg42IX30k
UMwacz/9i2k6UIKumTV4SUzz4yApty3FOwFg4zc7l8xNRHyQHCkoKgThxegRRfTK
ueDPGCoZyGUNaxau+9rG3MbNKV16RQnB8CzjQaWCaxHF3tj+nTucYBxT9sk3wH6S
aSiiYFi0nVVT2nt3/pukYk9rHQgLu/2bfhvhWuke+csvVJBxGvISO0liIVrtkANB
trz4aLoww/fNJXz4TstdhTm386wpNFG67cA9BqLQE0JW+WVV7EdBscSXahDZZrbK
p3yY6pDeviQ0kLdd6E26GYRwgtXnKGe9q203NTEkSFnyTT6UFlmcwTOcm1MEwPih
LVoC5NPgBsQbl1wPQlIa80L0a/qzuxS7v2dQf0HdeawAkqq/46j5JJu23j5/Du5t
CPwTKg/5W+fjONsP3iTD
=YezH
-----END PGP SIGNATURE-----

--Apple-Mail=_C13DD170-1827-4674-94C3-717A75C983AD--
