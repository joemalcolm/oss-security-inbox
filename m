X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["488" "Monday" "27" "June" "2016" "08:08:14" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87oa6n9nap.fsf@mid.deneb.enyo.de>" "11" "[oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening" "^Cc:" nil nil "6" "2016062706:08:14" "[oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening" (number mark "        fw@deneb.eny Jun 27   11/488   " thread-indent "\"[oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13759 invoked by uid 550); 27 Jun 2016 06:08:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13741 invoked from network); 27 Jun 2016 06:08:27 -0000
Message-ID: <87oa6n9nap.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Mon, 27 Jun 2016 08:08:14 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: MatrixSSL lack of RSA-CRT hardening
To: cve-assign@mitre.org

MatrixSSL 3.8.3 comes with this fix:

<https://github.com/matrixssl/matrixssl/blob/master/CHANGES.md#validation-of-rsa-signature-creation>

I think this warrants a CVE ID because RSA-CRT key leaks from
MatrixSSL have been observed in practice.  (I'm not sure if the
contributing factor was a bug in the MatrixSSL bignum routines, or
defective hardware.)

(There are some other changes whose description suggests they would
warrant CVE assignment as well, but I have not looked at those.)
