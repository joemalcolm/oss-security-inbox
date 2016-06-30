X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1687" "Thursday" "30" "June" "2016" "15:25:16" "+0800" "=?utf-8?B?TWFyY2VsIELDtmhtZQ==?=" "boehme.marcel@gmail.com" "<9BC348CE-0958-4F38-A0DB-D228EE0D9E27@gmail.com>" "44" "[oss-security] CVE Request: No demangling of untrusted binaries (2)" nil nil nil "6" "2016063007:25:16" "[oss-security] CVE Request: No demangling of untrusted binaries (2)" (number mark "U       boehme.marce Jun 30   44/1687  " thread-indent "\"[oss-security] CVE Request: No demangling of untrusted binaries (2)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12125 invoked by uid 550); 30 Jun 2016 07:47:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1948 invoked from network); 30 Jun 2016 07:25:34 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-transfer-encoding:subject:date:message-id:cc:to
         :mime-version;
        bh=SSuNT/m/rh3jBa85ZCDUQo4ahdQcIGWT8JMOix2isZQ=;
        b=vSHJwBw458cJzQO/JdM7Yc3D1KEswhr0fnBrK2AFjcXHM68VGFuUAgTmNpjatgDWyU
         dUVAavwpQf+KyKAn8gBELW8c7GdnW7LZAMXtVyg/7HeYB19X5jxy3fUjXtJ0hDe2/jlX
         Y3MOJhn75lGG3feQHKgcUwtG66oV9WwjN4K1rIf2lbykZou+7bl+zT/Zm+lBym1wwtV9
         NkENf/+LV/buypeQKAxMLv5fA081e2T9TusZibs29SutGvmPGkIOtYmd6hOzkl96D2BM
         5+KO+6wAKJqikYHcIDmsAin4p8syex1heNHG3Zb0Xk0W2G4Y0bEIxtj2ieU1m+hwbrdT
         Ow8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:content-transfer-encoding:subject:date
         :message-id:cc:to:mime-version;
        bh=SSuNT/m/rh3jBa85ZCDUQo4ahdQcIGWT8JMOix2isZQ=;
        b=MBjKsQybtqZG9fE/wtwztN0nR7MPkpIcCRwsTwLYmPR6ZAdpN0OKv+/6SMWYtNv3RH
         VbSZkDtfAsQP6M1MvTOh4jyTbc7CXpCds9LviO9rig41XtzHIMBwd0KokKCbMJTSjA8s
         d5+c2p79kchBpQeUOKNWDjprn+2kujhZucl/AgndHeBdImYq97y7PyYhabJ9x9MiMzFw
         8waeaoxBoEcWswzDqW92pxECy+Ii1oUSFBEqhJEvWOtsjmqMJdku/CoN7higOoJ71uxw
         GZNFSClJXDYmpZGKCNSBmpRkxdYZMPnz29KC/6R60YwVBUTSUHFipQkXYVJ39buOb7pL
         umag==
X-Gm-Message-State: ALyK8tILGd2Sinkh+4irx2WLLWsL3fB6BGqaLPuh9NRUAYjJ0rraA52HiwQoEsRiytv90Q==
X-Received: by 10.66.43.240 with SMTP id z16mr19045373pal.114.1467271522976;
        Thu, 30 Jun 2016 00:25:22 -0700 (PDT)
From: =?utf-8?Q?Marcel_B=C3=B6hme?= <boehme.marcel@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 30 Jun 2016 15:25:16 +0800
Message-Id: <9BC348CE-0958-4F38-A0DB-D228EE0D9E27@gmail.com>
Cc: florian@eich-krohm.de,
 nickc@redhat.com,
 Bernd Schmidt <bschmidt@redhat.com>
To: oss-security@lists.openwall.com
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: [oss-security] CVE Request: No demangling of untrusted binaries (2)

Hi all,

Another vulnerability in GNU Libiberty was found that impacts the security =
of binary analysis tools, such as Valgrind, GDB, Binutils (e.g., objdump, n=
m, ..), Gcov, or other LibBFD-based tools. An attacker might modify a progr=
am binary such that it executes malicious code upon *analysis* of the binar=
y (e.g., to find whether it is malicious in the first place) or during the =
attempt to reverse-engineer an untrusted binary.

Workaround: Until the patches propagate to the vulnerable tools, switch off=
 default demangling! E.g.,
$ echo "set demangle-style none"  >>  ~/.gdbinit
$ echo "--demangle=3Dno" >> ~/.valgrindrc

A stackoverflow in the libiberty demangler causes its host application to c=
rash on a tainted branch instruction. The problem is caused by a self-refer=
ence in a mangled type string that is "remembered" for later reference. Thi=
s leads to an infinite recursion during the demangling.
* GDB exploitable classifies the stack overflow as exploitable.
* Bug Report: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D71696
* Patch under review: https://gcc.gnu.org/ml/gcc-patches/2016-06/msg02030.h=
tml

All vulnerabilities were found with a more efficient version of the AFL fuz=
zer, called AFLFast.

Update on the previously reported, related vulnerabilities:
CVE-2016-2226: Fixed in trunk
CVE-2016-4487: Fixed in trunk
CVE-2016-4488: Fixed in trunk
CVE-2016-4489: Fixed in trunk
CVE-2016-4490: Fixed in trunk
CVE-2016-4491: Patch under review
CVE-2016-4492: Patch accepted
CVE-2016-4493: Patch accepted

Best regards,
- Marcel

---
Marcel B=C3=B6hme
Post-doctoral Research Fellow
TSUNAMi Security Research Center
National University of Singapore=
