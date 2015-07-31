X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["458" "Friday" "31" "July" "2015" "14:47:51" "+0200" "Adam Maris" "amaris@redhat.com" "<55BB6E77.1070007@redhat.com>" "16" "[oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "7" "2015073112:47:51" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        amaris@redha Jul 31   16/458   " thread-indent "\"[oss-security] CVE for crypto_get_random() from libsrtp\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13366 invoked by uid 550); 31 Jul 2015 12:48:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13336 invoked from network); 31 Jul 2015 12:48:05 -0000
Message-ID: <55BB6E77.1070007@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Fri, 31 Jul 2015 14:47:51 +0200
From: Adam Maris <amaris@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com

Hello,

I've got question whether this bug 
(https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=793971) is 
CVE-worthy? Could it be classified as CWE-330: Use of Insufficiently 
Random Values?

According to the SRTP documentation 
(http://srtp.sourcearchive.com/documentation/1.4.2.dfsg/group__SRTP_g1d4c228c6a58096dfab3cefbabd66f17.html), 
it provides 80 bits of random data, which is quite a borderline.

Thanks.

-- 
Adam Maris / Red Hat Product Security

