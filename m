X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["955" "Monday" "24" "August" "2015" "09:36:52" "+0800" "Guanxing Wen" "wengx522@gmail.com" "<CAOSkqBVzdK-qB-hWiQz+od4M1h5=HskE-MGfYx6CyiiXYZv-6g@mail.gmail.com>" "32" "[oss-security] CVE Request: PCRE Library Heap Overflow in compile_regex()" nil nil nil "8" "2015082401:36:52" "[oss-security] CVE Request: PCRE Library Heap Overflow in compile_regex()" (number mark "        wengx522@gma Aug 24   32/955   " thread-indent "\"[oss-security] CVE Request: PCRE Library Heap Overflow in compile_regex()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30566 invoked by uid 550); 24 Aug 2015 01:37:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30545 invoked from network); 24 Aug 2015 01:37:04 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=mZSCOkjIlKEj8OlvZpc2Ay73STrh6wE9feaTv5LgI3E=;
        b=0BUp2qlhmxfO1QPiv9uNNHaZ9o3WdBLr2kYZXVCXOekAcsMMAzbH92f068vTXOesc1
         x04t3RnpykkDNrZGm+EBFje0nND/7WpPZtMSVfI8rwvqGcOa9+3FM6rQdTgqtKmAyJTY
         5+WdgnWFmzm/q/FnTjwOyIglRLe8VjjU/yEKZ39XB8B8R9048U0pJ6qri1aR4FCsp+ba
         cpoEQKDT1nOVUu5RKl0wv9dGP4ekIKXsGRhzHEEKp/nm8s0udAvW9wvdCfUyfHGPBeMd
         poASuOvv5gv7wB17r28tvF5ObDNXvk2sNGDKagVOLDy1hhz+s9Ya4W1wMXtDOp3Ab+JX
         qGFw==
MIME-Version: 1.0
X-Received: by 10.50.30.197 with SMTP id u5mr13506219igh.9.1440380212448; Sun,
 23 Aug 2015 18:36:52 -0700 (PDT)
Message-ID: <CAOSkqBVzdK-qB-hWiQz+od4M1h5=HskE-MGfYx6CyiiXYZv-6g@mail.gmail.com>
Content-Type: multipart/alternative; boundary=047d7bdc11bee79568051e04a6a1
Date: Mon, 24 Aug 2015 09:36:52 +0800
From: Guanxing Wen <wengx522@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PCRE Library Heap Overflow in compile_regex()
To: oss-security@lists.openwall.com

--047d7bdc11bee79568051e04a6a1
Content-Type: text/plain; charset=UTF-8

Hi, MITRE

PCRE library is prone to a vulnerability which leads to Heap Overflow.
During the compilation of a malformed regular expression, more data is
written on the malloced block than the expected size output by
compile_regex().
The Heap Overflow vulnerability is caused by the following regular
expression.

/(?J:(?|(:(?|(?'R')(\z(?|(?'R')(\k'R')|((?'R')))k'R')|((?'R')))H'Ak'Rf)|s(?'R')))/

A dry run of this particular regular expression with pcretest will reports
"double free or corruption (!prev)".
But it is actually a heap overflow problem.
The overflow only affects pcre 8.x branch, pcre2 branch is not affected.

This is a different issue from
http://www.openwall.com/lists/oss-security/2015/08/05/3

Reference:
https://bugs.exim.org/show_bug.cgi?id=1672

Please allocate a CVE-ID for this.

Thanks.

Wen Guanxing from Venustech ADLAB

--047d7bdc11bee79568051e04a6a1--
