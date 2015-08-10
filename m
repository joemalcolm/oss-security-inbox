X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1045" "Monday" "10" "August" "2015" "11:23:02" "+0200" "Martin Prpic" "mprpic@redhat.com" "<87d1yv1oqx.fsf@redhat.com>" "34" "[oss-security] CVE request: GNUTLS-SA-2015-3 double free in certificate DN decoding" nil nil nil "8" "2015081009:23:02" "[oss-security] CVE request: GNUTLS-SA-2015-3 double free in certificate DN decoding" (number mark "        mprpic@redha Aug 10   34/1045  " thread-indent "\"[oss-security] CVE request: GNUTLS-SA-2015-3 double free in certificate DN decoding\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 31928 invoked by uid 550); 10 Aug 2015 09:23:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 31903 invoked from network); 10 Aug 2015 09:23:18 -0000
User-agent: mu4e 0.9.9.5; emacs 24.3.1
Message-ID: <87d1yv1oqx.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.22
Date: Mon, 10 Aug 2015 11:23:02 +0200
From: Martin Prpic <mprpic@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: GNUTLS-SA-2015-3 double free in certificate DN decoding
To: "oss-security\@lists.openwall.com" <oss-security@lists.openwall.com>

Hi,

GnuTLS released versions 3.4.4 and 3.3.17 that fix one security issue:

http://www.gnutls.org/security.html#GNUTLS-SA-2015-3

"Kurt Roeckx reported that decoding a specific certificate with very
long DistinguishedName (DN) entries leads to double free, which may
result to a denial of service. Since the DN decoding occurs in almost
all applications using certificates it is recommended to upgrade the
latest GnuTLS version fixing the issue. Recommendation: Upgrade to
GnuTLS 3.4.4, or 3.3.17."

The upstream patch that fixes this issue is available at:

https://gitlab.com/gnutls/gnutls/commit/272854367efc130fbd4f1a51840d80c630214e12

Can a CVE please be assigned to this issue?

Also, there is still no CVE for the issue before this one. The CVE
request was sent on May 5:

http://seclists.org/oss-sec/2015/q2/367

Can a CVE be assigned to this as well?

Thank you!

Refs:
rhbz GNUTLS-SA-2015-2: https://bugzilla.redhat.com/1218426
rhbz GNUTLS-SA-2015-3: https://bugzilla.redhat.com/1251902

-- 
Martin Prpič / Red Hat Product Security
