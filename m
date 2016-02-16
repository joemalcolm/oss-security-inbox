X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["441" "Tuesday" "16" "February" "2016" "15:17:05" "+0100" "Florian Weimer" "fweimer@redhat.com" "<56C32F61.1010306@redhat.com>" "16" "[oss-security] CVE-2015-7547: stack-based buffer overflow in glibc's getaddrinfo function" nil nil nil "2" "2016021614:17:05" "[oss-security] CVE-2015-7547: stack-based buffer overflow in glibc's getaddrinfo function" (number mark "U       fweimer@redh Feb 16   16/441   " thread-indent "\"[oss-security] CVE-2015-7547: stack-based buffer overflow in glibc's getaddrinfo function\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30010 invoked by uid 550); 16 Feb 2016 14:17:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29986 invoked from network); 16 Feb 2016 14:17:19 -0000
To: oss-security@lists.openwall.com
From: Florian Weimer <fweimer@redhat.com>
Message-ID: <56C32F61.1010306@redhat.com>
Date: Tue, 16 Feb 2016 15:17:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Subject: [oss-security] CVE-2015-7547: stack-based buffer overflow in glibc's getaddrinfo
 function

Hi,

today, we are disclosing a vulnerability in the nss_dns backend for
getaddrinfo, related to handling dual A/AAAA queries:

The security impact of this issue was discovered roughly at the same
time by the Google Security Team and Red Hat.

Background information:

  https://sourceware.org/ml/libc-alpha/2016-02/msg00416.html

https://googleonlinesecurity.blogspot.com/2016/02/cve-2015-7547-glibc-getaddrinfo-stack.html

Thanks,
Florian
