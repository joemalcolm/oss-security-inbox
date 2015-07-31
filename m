X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["416" "Friday" "31" "July" "2015" "12:04:05" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<55BB16DD.2000206@redhat.com>" "13" "[oss-security] CVE Request: freeradius: the EAP-PWD module performs insufficient validation on packets received from an EAP peer" nil nil nil "7" "2015073106:34:05" "[oss-security] CVE Request: freeradius: the EAP-PWD module performs insufficient validation on packets received from an EAP peer" (number mark "        huzaifas@red Jul 31   13/416   " thread-indent "\"[oss-security] CVE Request: freeradius: the EAP-PWD module performs insufficient validation on packets received from an EAP peer\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9551 invoked by uid 550); 31 Jul 2015 06:21:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9520 invoked from network); 31 Jul 2015 06:21:21 -0000
Message-ID: <55BB16DD.2000206@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Fri, 31 Jul 2015 12:04:05 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: freeradius: the EAP-PWD module performs insufficient
 validation on packets received from an EAP peer
To: oss-security@lists.openwall.com

The FreeRADIUS project has reported a flaw that affects the EAP-PWD
module of the freeradius package versions 3.0 up to 3.0.8. This module
is not enabled by default, so administrators must have manually enabled
it for their servers to be vulnerable.

Reference:
http://freeradius.org/security.html#eap-pwd-2015

Can a CVE id be please assigned to this flaw?


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
