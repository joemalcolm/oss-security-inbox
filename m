X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4218" "Tuesday" "5" "May" "2015" "09:19:20" "+0100" "Pedro Ribeiro" "pedrib@gmail.com" "<CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>" "111" "[oss-security] [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL" nil nil nil "5" "2015050508:19:20" "[oss-security] [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL" (number mark "        pedrib@gmail May  5  111/4218  " thread-indent "\"[oss-security] [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24368 invoked by uid 550); 5 May 2015 08:19:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24302 invoked from network); 5 May 2015 08:19:33 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=Ja3dirFGukghGsD0TpRznQBSrA0/IhDzHH0jPZLjhmk=;
        b=HBSC9Gt7dUV9zednskolb3LEJIMlmI5pnlmi6CWS02DagZhycTnBWOJcvqVI/2oxOJ
         /nnaDz5wXtviVnlkdslKczFkdU+4ECmkW1YItrUYWs/njmZ7dkM427WVU0yeKBjbpYh8
         ReBXlW2h0eDxu9GdjK2qsD83R8EppbBmMad5jEhTv84avWNQLjVkvpz7/koKuxeIiLJR
         tFZpR2+qVsRJlPjBZQDY5Ga0x/cJB+DQH6qc50ycBybIpV4Lf+bhMCa5zTHY9qTwND8t
         /LcSIzZYnZHpYGJa9h+cXe2BDkSfvEdO1VG9ktE4uGYEr5IApe+4wTyTWxStflTy5d47
         Gwug==
MIME-Version: 1.0
X-Received: by 10.60.223.228 with SMTP id qx4mr21478043oec.24.1430813960732;
 Tue, 05 May 2015 01:19:20 -0700 (PDT)
Message-ID: <CAEDdjHdR4LYTL_3BUibrYbiBfB2==aJXXLF0RKxcHQgep_SNSw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: Solar Designer <solar@openwall.com>
Date: Tue, 5 May 2015 09:19:20 +0100
From: Pedro Ribeiro <pedrib@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] [CVE-2014-8146/8147] - ICU heap and integer overflows / I-C-U-FAIL
To: oss-security@lists.openwall.com, 
	"fulldisclosure@seclists.org" <fulldisclosure@seclists.org>, bugtraq <bugtraq@securityfocus.com>

tl;dr heap and integer overflows in ICU, many packages affected,
unknown if these can be exploited or not - everyone names vulns
nowadays, so I name these I-C-U-FAIL.

Hi,

I have found two vulnerabilities in the ICU library while fuzzing
LibreOffice, full details in the advisory below.
Disclosure of these was done initially to LibreOffice and then to
distro-security. I then reported it to Chromium, Android and finally
CERT, so I ended up breaking the rules of distro-security which
requires that any vulnerability reported to the list is made public in
14 days. I apologise for this to oss-security, distro-security and
Solar Designer, and will not do it again.

A full copy of the advisory below can be found in my repo at
https://raw.githubusercontent.com/pedrib/PoC/master/generic/i-c-u-fail.txt.

Regards,
Pedro


>> Heap overflow and integer overflow in ICU library
>> Discovered by Pedro Ribeiro (pedrib@gmail.com), Agile Information Security
=================================================================================
Disclosure: 04/05/2015 / Last updated: 04/05/2015

>> Background on the affected products:
ICU is a mature, widely used set of C/C++ and Java libraries providing
Unicode and Globalization support for software applications. ICU is
widely portable and gives applications the same results on all
platforms and between C/C++ and Java software.


>> Summary:
While fuzzing LibreOffice an integer overflow and a heap overflow
where found in the ICU library. This library is used by LibreOffice
and hundreds of other software packages.
Proof of concept files can be downloaded from [1]. These files have
been tested with LibreOffice 4.3.3.2 and LibreOffice 4.4.0-beta2 and
ICU 52.
Note that at this point in time it is unknown whether these
vulnerabilities are exploitable.
Thanks to CERT [2] for helping disclose these vulnerabilities.


>> Technical details:
#1
Vulnerability: Heap overflow
CVE-2014-8146

The code to blame is the following (from ubidi.c:2148 in ICU 52):
    dirProp=dirProps[limit-1];
    if((dirProp==LRI || dirProp==RLI) && limit<pBiDi->length) {
        pBiDi->isolateCount++;
        pBiDi->isolates[pBiDi->isolateCount].stateImp=stateImp;
        pBiDi->isolates[pBiDi->isolateCount].state=levState.state;
        pBiDi->isolates[pBiDi->isolateCount].start1=start1;
    }
    else
        processPropertySeq(pBiDi, &levState, eor, limit, limit);

Under certain conditions, isolateCount is incremented too many times,
which results in several out of bounds writes. See [1] for a more
detailed analysis.


#2
Vulnerability: Integer overflow
CVE-2014-8147

The overflow is on the resolveImplicitLevels function (ubidi.c:2248):
        pBiDi->isolates[pBiDi->isolateCount].state=levState.state;

pBiDi->isolates[].state is a int16, while levState.state is a int32.
The overflow causes an error when performing a malloc on
pBiDi->insertPoints->points because insertPoints is adjacent in memory
to isolates[].

The Isolate struct is defined in ubidiimp.h:184
typedef struct Isolate {
    int32_t startON;
    int32_t start1;
    int16_t stateImp;
    int16_t state;
} Isolate;

LevState is defined in ubidi.c:1748
typedef struct {
    const ImpTab * pImpTab;             /* level table pointer          */
    const ImpAct * pImpAct;             /* action map array             */
    int32_t startON;                    /* start of ON sequence         */
    int32_t startL2EN;                  /* start of level 2 sequence    */
    int32_t lastStrongRTL;              /* index of last found R or AL  */
    int32_t state;                      /* current state                */
    int32_t runStart;                   /* start position of the run    */
    UBiDiLevel runLevel;                /* run level before implicit solving */
} LevState;


>> Fix:
The ICU versions that are confirmed to be affected are 52 to 54, but
earlier versions might also be affected. Upgrade to ICU 55.1 to fix
these vulnerabilities.
Note that there are probably many other software packages that embed
the ICU code and will probably also need to be updated.


>> References:
[1] https://github.com/pedrib/PoC/raw/master/generic/i-c-u-fail.7z
[2] https://www.kb.cert.org/vuls/id/602540
