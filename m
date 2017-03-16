X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2583" "Friday" "17" "March" "2017" "00:58:05" "+0800" "Thuan Pham" "thuanpv@comp.nus.edu.sg" "<CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>" "67" "[oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities" nil nil nil "3" "2017031616:58:05" "[oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities" (number mark "U       thuanpv@comp Mar 17   67/2583  " thread-indent "\"[oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22430 invoked by uid 550); 16 Mar 2017 17:13:10 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32040 invoked from network); 16 Mar 2017 16:58:17 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=Syga7X5K1NUMNvgGKViXVcEq3dmj999KFWb/ExnOO0M=;
        b=ti2cgrAD2iM6SRmZNF92DianpC/SW5ICyX8LDCMFXLeUlrxMUTOKB7MdDlxPzYvAYU
         pPKpuhA5Kkkj9G2fErX3Hys/cgScK2IJxCiy2Ga/2TePzAOMPF6h6Uehh2xJ6KBENHkq
         OJcxA0RnnNgXOe3cORfRZxhnvUxmT+piQWPXVrTp8fa27VKhLB3Ur67BAR3qLhYqGyZt
         DeLOilrb8OXsj18bXh3EoU8wYGjMetwUMc0BdI1vY6M00uA+uijeBcDGX5mOSw0rN7zp
         2FFFESqsx4x2Bakn3+ZsmRF2XIkjottWyI1fv/QvppkfSqmOPZzqjWqVF5xM8QcIghqQ
         s9HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=Syga7X5K1NUMNvgGKViXVcEq3dmj999KFWb/ExnOO0M=;
        b=oXW89Yk0BuI1xKmRI30grggq+QjivBmam7p66LHMSp95o+JaxcGavh7lFnQjvVysZG
         e+mLjLNs/+NlMpAmqZIriBRpWNCTHrSDojfQs5SNpiIv2i+Rm63xQ69QXMg2w6dEgSC2
         oMOAKgXfRlYwULfQTlUsVkg04K27w2yyCJVwUSDTVubEc2sMNCNy43ewWlbCp9F3k+fz
         xSMLakCbKTevGo61PfJ3JSsEsOBxEv6FbC4JRujtAwvyPwN1/4z1hLtmJpLBUNGZ4cfA
         x9nUztatzBGDTAYDgtOzJTs3WAcyaFpfMs8MgzPjz9Uq6PFCjF/xrlYYYe+ZgpFmIzUH
         rkdg==
X-Gm-Message-State: AFeK/H0fDWtCvU8dr0cVPDoQ+zZAmzdPTkGo3kcYTTJN9EZmuMvTFZbFJpJ7SDeSG/UXnq8GP178SCmEnJQN1Q==
X-Received: by 10.13.212.18 with SMTP id w18mr8760991ywd.180.1489683485893;
 Thu, 16 Mar 2017 09:58:05 -0700 (PDT)
MIME-Version: 1.0
Sender: thuanpv.nus@gmail.com
From: Thuan Pham <thuanpv@comp.nus.edu.sg>
Date: Fri, 17 Mar 2017 00:58:05 +0800
X-Google-Sender-Auth: oof8NiAn-DUmwVp4Sj6_0cFCoto
Message-ID: <CAMNd5sthm7v3xxeZvpd6WBXQoM8OJsst+AWK9jQinzkM-VbZiw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a114fa458018368054adbf7c3
Subject: [oss-security] CVE Request: multiple bugs found in BFD libraries and Binutils' utilities

--001a114fa458018368054adbf7c3
Content-Type: text/plain; charset=UTF-8

Dear all,

Using AFLGo, a directed version of AFL/AFLFast fuzzing tool, we found
several bugs in the Binutils' utilities such as readelf, objdump, nm and
the BFD library (DWARF and STABS parsers).

Binary File Descriptor (BFD) library is a GNU library to manipulate object
files of many processor architecture (>=25) in a variety of formats (>=50).
The library is used by several widely-used tools like GNU Assembler (GAS),
GNU Linker (GLD), GNU Binary Utilities ("binutils") tools, and the GNU
Debugger (GDB). Binutils' utilities like readelf, objdump and nm are common
tools to analyze program objects..

Here is the list of bug reports & bug fixes. All of them have been
confirmed and fixed by Binutils' maintainers.

1) Heap Buffer Overflow - Invalid Write in Readelf
https://sourceware.org/bugzilla/show_bug.cgi?id=21137
https://sourceware.org/bugzilla/show_bug.cgi?id=21155 (bug still exists
because of incomplete fix in PR Binutils/21137)

2) Heap Buffer Overflow - Invalid Read in BFD library's DWARF
https://sourceware.org/bugzilla/show_bug.cgi?id=21151

3) Heap Buffer Overflow - Invalid Read in BFD library's handling of STABS
debug information causing Objdump to crash
https://sourceware.org/bugzilla/show_bug.cgi?id=21157

4) Global Buffer Overflow - Invalid Read in BFD library's handling of STABS
debug information
https://sourceware.org/bugzilla/show_bug.cgi?id=21158

5) Use after free in Readelf
https://sourceware.org/bugzilla/show_bug.cgi?id=21139

6) Heap buffer overflow - invalid read of size 4 in Readelf
https://sourceware.org/bugzilla/show_bug.cgi?id=21156

7) Heap buffer overflow in Readelf (Invalid Read of size 1)
https://sourceware.org/bugzilla/show_bug.cgi?id=21135
https://sourceware.org/bugzilla/show_bug.cgi?id=21159 (bug still exists due
to incomplete fix in PR Binutils/21135)

8) Heap buffer overflow in Readelf (Invalid Read of size 1)
https://sourceware.org/bugzilla/show_bug.cgi?id=21147

9) Heap buffer overflow in Readelf (Multiple Invalid Read of size 1)
https://sourceware.org/bugzilla/show_bug.cgi?id=21148

10) Heap buffer overflow in Readelf (Multiple Invalid Read of size 1)
https://sourceware.org/bugzilla/show_bug.cgi?id=21149

11) Global buffer overflow in Nm (Invalid Read of size 1)
https://sourceware.org/bugzilla/show_bug.cgi?id=21150

Could you please check whether these bugs are suitable for CVEs?
Many thanks,

----------------------------
Thuan Pham
TSUNAMi Security Research Center
National University of Singapore

--001a114fa458018368054adbf7c3--
