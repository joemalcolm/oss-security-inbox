X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["360" "Friday" "27" "November" "2015" "15:12:18" "+0100" "Adam Maris" "amaris@redhat.com" "<565864C2.6070208@redhat.com>" "8" "[oss-security] CVE-2015-5327 kernel: User triggerable out-of-bounds read" nil nil nil "11" "2015112714:12:18" "[oss-security] CVE-2015-5327 kernel: User triggerable out-of-bounds read" (number mark "U       amaris@redha Nov 27    8/360   " thread-indent "\"[oss-security] CVE-2015-5327 kernel: User triggerable out-of-bounds read\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9768 invoked by uid 550); 27 Nov 2015 14:12:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9750 invoked from network); 27 Nov 2015 14:12:32 -0000
To: oss-security@lists.openwall.com
From: Adam Maris <amaris@redhat.com>
Message-ID: <565864C2.6070208@redhat.com>
Date: Fri, 27 Nov 2015 15:12:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.3.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Subject: [oss-security] CVE-2015-5327 kernel: User triggerable out-of-bounds read

An out-of-bounds memory read was found, affecting kernels from 4.3-rc1 onwards.
This vulnerability was caused by incorrect X.509 time validation in x509_decode_time() function in x509_cert_parser.c.

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=cc25b994acfbc901429da682d0f73c190e960206

-- 
Adam Maris / Red Hat Product Security

