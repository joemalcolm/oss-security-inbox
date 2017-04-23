X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["893" "Sunday" "23" "April" "2017" "12:52:16" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<6637563.hSMPS8suxu@arcadia>" "40" "[oss-security] imageworsener: multiple vulnerabilities" nil nil nil "4" "2017042310:52:16" "[oss-security] imageworsener: multiple vulnerabilities" (number mark "U       ago@gentoo.o Apr 23   40/893   " thread-indent "\"[oss-security] imageworsener: multiple vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25977 invoked by uid 550); 23 Apr 2017 10:52:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25955 invoked from network); 23 Apr 2017 10:52:30 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: oss-security@lists.openwall.com
Date: Sun, 23 Apr 2017 12:52:16 +0200
Message-ID: <6637563.hSMPS8suxu@arcadia>
User-Agent: KMail/4.14.10 (Linux/4.4.39-gentoo; KDE/4.14.29; x86_64; ; )
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: [oss-security] imageworsener: multiple vulnerabilities

There are some other vulnerabilities discovered by 'bestshow' and fixed in 
imageworsener:

CVE-2017-7452
NULL pointer dereference in iwbmp_read_info_header
https://github.com/jsummers/imageworsener/issues/8


CVE-2017-7453
NULL pointer dereference in iwgif_record_pixel
https://github.com/jsummers/imageworsener/issues/9


CVE-2017-7454
heap-buffer-overflow in iwgif_record_pixel
https://github.com/jsummers/imageworsener/issues/11


CVE-2017-7623
heap-buffer-overflow in iwmiffr_convert_row32
https://github.com/jsummers/imageworsener/issues/12


CVE-2017-7624
memory leak in imagew-cmd
https://github.com/jsummers/imageworsener/issues/10


CVE-2017-7939
stack buffer overflow in read_next_pam_token
https://github.com/jsummers/imageworsener/issues/13


CVE-2017-7940
memory leak in imagew-cmd
https://github.com/jsummers/imageworsener/issues/18

-- 
Agostino Sarubbo
Gentoo Linux Developer
