X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["799" "Sunday" "3" "January" "2016" "06:08:35" "+0800" "Guanxing Wen" "wengx522@gmail.com" "<CAOSkqBWUb9ri_NaQqRfKi=Gz-rDRB28K7LcGincXgR6hHji+mw@mail.gmail.com>" "24" "[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability" nil nil nil "1" "2016010222:08:35" "[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability" (number mark "U       wengx522@gma Jan  3   24/799   " thread-indent "\"[oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19615 invoked by uid 550); 2 Jan 2016 22:08:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19597 invoked from network); 2 Jan 2016 22:08:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=on9hEqwR/UxslcaXLlh2EOi65nNvo6BmcJAj13HmM9k=;
        b=060JfmmO4YKyR78WNIozR01GcjPGJ8zHcEuEWHZP6nx2ohQ+sWGdL8NSGyPs6KBS3f
         ukUVfy+dTlZWt8s+K9Qfl3gqG7rLQ13mk49pJr19pLGZqBdztkLoLlOEEQNcnRTzMudK
         E4lBvOkPWABtuMGSKEaD9UNn3Fy+wxqMJgAAHYWbiUwVQPsjT4GLxE/5KVTcbyW7WRYH
         MStTbmwkxW9Gu2D/tb/Sul6Bkk0thSPxeA5eTU0mlA02JIUCRi0fqeczr3xs5BzHYa+C
         3xSD1fvUkBZCtvS0z/DW0tmwIMQFtpX6rhdD77XPhUqiNrSYbHlnlBbg3JM+97+dyAXO
         60rA==
MIME-Version: 1.0
X-Received: by 10.50.142.37 with SMTP id rt5mr41600328igb.9.1451772515995;
 Sat, 02 Jan 2016 14:08:35 -0800 (PST)
Date: Sun, 3 Jan 2016 06:08:35 +0800
Message-ID: <CAOSkqBWUb9ri_NaQqRfKi=Gz-rDRB28K7LcGincXgR6hHji+mw@mail.gmail.com>
From: Guanxing Wen <wengx522@gmail.com>
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
Cc: "cve-assign@mitre.org" <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a11c3b5421c545e05286121ce
Subject: [oss-security] CVE Request: PCRE Library Heap Overflow Vulnerability

--001a11c3b5421c545e05286121ce
Content-Type: text/plain; charset=UTF-8

Hello MITRE,

PCRE is a regular expression C library inspired by the regular expression
capabilities in the Perl programming language. The PCRE library is
incorporated into a number of prominent programs, such as Adobe Flash,
Apache, Nginx, PHP, KDE/Konqueror.

PCRE library is prone to a vulnerability which leads to Heap Overflow.
During the compilation of a malformed regular expression, more data is
written on the malloced block than the expected size output by
compile_regex. Carefully crafted my lead to code execution in the context
of affected applications.

Reference:
https://bugs.exim.org/show_bug.cgi?id=1767

Please allocate a CVE-ID for this.

Wen Guanxing from Venustech ADLAB

--001a11c3b5421c545e05286121ce--
