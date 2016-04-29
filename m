X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["765" "Friday" "29" "April" "2016" "16:24:52" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87mvocv6ff.fsf@redhat.com>" "22" "[oss-security] CVE request: three issues in libksba" nil nil nil "4" "2016042914:24:52" "[oss-security] CVE request: three issues in libksba" (number mark "U       mprpic@redha Apr 29   22/765   " thread-indent "\"[oss-security] CVE request: three issues in libksba\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7416 invoked by uid 550); 29 Apr 2016 14:25:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7392 invoked from network); 29 Apr 2016 14:25:07 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87mvocv6ff.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]); Fri, 29 Apr 2016 14:24:55 +0000 (UTC)
Date: Fri, 29 Apr 2016 16:24:52 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: three issues in libksba
To: "OSS Security Mailinglist" <oss-security@lists.openwall.com>

Hi,

Can CVEs please be assigned to these three issues (unless they've
already been assigned and I failed to find them):

Denial of Service due to stack overflow in src/ber-decoder.c
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=libksba.git;a=commit;h=07116a314f4dcd4d96990bbd74db95a03a9f650a

Integer overflow in the BER decoder src/ber-decoder.c
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=libksba.git;a=commit;h=aea7b6032865740478ca4b706850a5217f1c3887

Integer overflow in the DN decoder src/dn.c
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=libksba.git;a=commit;h=243d12fdec66a4360fbb3e307a046b39b5b4ffc3

A Gentoo advisory lists them as being fixed in version 1.3.3 and higher:

https://lwn.net/Alerts/685271/

Thank you!

-- 
Martin Prpič / Red Hat Product Security
