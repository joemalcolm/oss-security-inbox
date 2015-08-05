X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["866" "Thursday" "6" "August" "2015" "00:55:09" "+0800" "Guanxing Wen" "wengx522@gmail.com" "<CAOSkqBX5jfLVM972TzNnmg_AQXwV8z4Jb-yp4WPCErAgbrrygQ@mail.gmail.com>" "25" "[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability" nil nil nil "8" "2015080516:55:09" "[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability" (number mark "        wengx522@gma Aug  6   25/866   " thread-indent "\"[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30493 invoked by uid 550); 5 Aug 2015 16:55:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30382 invoked from network); 5 Aug 2015 16:55:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=E3r4hcTv40RvsYriHe8ge3VxEZQfqRJ2IHfzW8XasDI=;
        b=at9k9dQRg4xNw/BpXPh12QsRs/rfB8LbEBMdSVsOJBufb8pp+ZvecnlsmcK/xW+v05
         SF7ytEw6+NyWifJ4HNi3/WU6A4vSVeOh52R5g0qtUsY5J/XmMQ4yBrA/20AKcTGIQEsI
         wh6wFao3/MsNW1OHyatgNCtV67q6t2JXORTkLKZdVtgDZuKIkvyaj/sz7aq1fAF7eqTz
         UE+veqgD1XfZilLM9jA7km/1KO4AS0uWLGolV1eteDOPhWl8ddZ7Br3abeLBxtyKAQmZ
         QQ66E9ZRuqgbualR53GFo7asUUf6UwLkUAWj3pJDIqS8mJbWIO2CWPnoHPDIz8zJjf99
         FreA==
MIME-Version: 1.0
X-Received: by 10.107.151.75 with SMTP id z72mr10373515iod.46.1438793709883;
 Wed, 05 Aug 2015 09:55:09 -0700 (PDT)
Message-ID: <CAOSkqBX5jfLVM972TzNnmg_AQXwV8z4Jb-yp4WPCErAgbrrygQ@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a11406ee6fb9a66051c93435c
Date: Thu, 6 Aug 2015 00:55:09 +0800
From: Guanxing Wen <wengx522@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability
To: oss-security@lists.openwall.com

--001a11406ee6fb9a66051c93435c
Content-Type: text/plain; charset=UTF-8

PCRE is a regular expression C library inspired by the regular expression
capabilities in the Perl programming language. The PCRE library is
incorporated into a number of prominent programs, such as Adobe Flash,
Apache, Nginx, PHP.

PCRE library is prone to a vulnerability which leads to Heap Overflow.
During the compilation of a malformed regular expression, more data is
written on the malloced block than the expected size output by
compile_regex. Exploits with advanced Heap Fengshui techniques may allow an
attacker to execute arbitrary code in the context of the user running the
affected application.

Reference:
https://bugs.exim.org/show_bug.cgi?id=1667

Could you assign a CVE-ID for this?

Thank you && Regards.

Wen Guanxing from Venustech ADLAB

--001a11406ee6fb9a66051c93435c--
