X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["963" "Wednesday" "2" "September" "2015" "16:08:43" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55E702EB.4040607@redhat.com>" "26" "[oss-security] Factoring RSA Keys With TLS Perfect Forward Secrecy" nil nil nil "9" "2015090214:08:43" "[oss-security] Factoring RSA Keys With TLS Perfect Forward Secrecy" (number mark "U       fweimer@redh Sep  2   26/963   " thread-indent "\"[oss-security] Factoring RSA Keys With TLS Perfect Forward Secrecy\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19522 invoked by uid 550); 2 Sep 2015 14:08:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19502 invoked from network); 2 Sep 2015 14:08:57 -0000
From: Florian Weimer <fweimer@redhat.com>
To: oss-security@lists.openwall.com
X-Enigmail-Draft-Status: N1110
Message-ID: <55E702EB.4040607@redhat.com>
Date: Wed, 2 Sep 2015 16:08:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Subject: [oss-security] Factoring RSA Keys With TLS Perfect Forward Secrecy

It turns out that Lenstra's 1996 side-channel attack on the RSA-CRT
optimization still works against some TLS servers:

<https://securityblog.redhat.com/2015/09/02/factoring-rsa-keys-with-tls-perfect-forward-secrecy/>
<https://people.redhat.com/~fweimer/rsa-crt-leaks.pdf>

Fortunately, none of the key leaks were attributed to publicly available
free software.  OpenSSL upstream and NSS already have RSA-CRT hardening.
 OpenJDK was updated in April 2015, as CVE-2015-0478.

libgcrypt upstream received the hardening very recently:

<http://lists.gnupg.org/pipermail/gcrypt-devel/2015-September/003553.html>

For Go, I opened an issue: <https://github.com/golang/go/issues/12453>

Nettle would also benefit from RSA-CRT hardening.  I started a
discussion here:

<http://thread.gmane.org/gmane.comp.encryption.nettle.bugs/1359>

I don't think CVE assignments are needed (although the OpenJDK hardening
received one).

-- 
Florian Weimer / Red Hat Product Security
