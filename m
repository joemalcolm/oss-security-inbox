X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["506" "Thursday" "27" "October" "2016" "08:35:01" "-0700" "Andy Lutomirski" "luto@kernel.org" "<CALCETrUyZyOgMNC7sN0s6+jfzZbou+butapbyu-PFev3GJgiww@mail.gmail.com>" "11" "[oss-security] CVE-2016-5195 test case" nil nil nil "10" "2016102715:35:01" "[oss-security] CVE-2016-5195 test case" (number mark "U       luto@kernel. Oct 27   11/506   " thread-indent "\"[oss-security] CVE-2016-5195 test case\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7755 invoked by uid 550); 27 Oct 2016 15:57:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24042 invoked from network); 27 Oct 2016 15:35:41 -0000
X-Gm-Message-State: ABUngvd9qHoWRgYrYXCSM0BPUSsBgxiZGy3nhmNpQRp1WnIzqmmTULCPu/9nszfIX1DlSJfak40hpvqAvXep+TOD
X-Received: by 10.31.82.129 with SMTP id g123mr6728519vkb.55.1477582521776;
 Thu, 27 Oct 2016 08:35:21 -0700 (PDT)
MIME-Version: 1.0
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 27 Oct 2016 08:35:01 -0700
X-Gmail-Original-Message-ID: <CALCETrUyZyOgMNC7sN0s6+jfzZbou+butapbyu-PFev3GJgiww@mail.gmail.com>
Message-ID: <CALCETrUyZyOgMNC7sN0s6+jfzZbou+butapbyu-PFev3GJgiww@mail.gmail.com>
To: oss security list <oss-security@lists.openwall.com>
Content-Type: text/plain; charset=UTF-8
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [oss-security] CVE-2016-5195 test case

I sat on this longer than makes any sense given how easy to reproduce
CVE-2016-5195 is, but here's a reasonably portable reproducer.  It's
intended to have no side effects, but your mileage may vary.

https://github.com/amluto/vulnerabilities/blob/master/others/CVE-2016-5195/test_CVE-2016-5195.c

This will use /proc/self/mem or ptrace automatically, and it's
intended to be portable to a wide range of kernels.  It's an improved
version of the test case I originally sent out to distros (oops!).

--Andy
