X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["541" "Tuesday" "8" "September" "2015" "12:05:34" "+0200" "Marcus Meissner" "meissner@suse.de" "<20150908100534.GC18322@suse.de>" "15" "[oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak" nil nil nil "9" "2015090810:05:34" "[oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak" (number mark "        meissner@sus Sep  8   15/541   " thread-indent "\"[oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8024 invoked by uid 550); 8 Sep 2015 10:05:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8006 invoked from network); 8 Sep 2015 10:05:46 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20150908100534.GC18322@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Tue, 8 Sep 2015 12:05:34 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: libgcrypt hardening for RSA-CRT leak
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org

Hi,

Redhat has published a paper on RSA-CRT keyleakage.

https://securityblog.redhat.com/2015/09/02/factoring-rsa-keys-with-tls-perfect-forward-secrecy/

There was a CVE assigned for this issue CVE-2015-5738, but the software scope of this assigned is not clear.

libgcrypt has published a hardening fix for the same issue.
https://lists.gnupg.org/pipermail/gnupg-announce/2015q3/000370.html
http://git.gnupg.org/cgi-bin/gitweb.cgi?p=libgcrypt.git;a=commit;h=b85c8d6645039fc9d403791750510e439731d479

Should it get a new CVE?

Ciao, Marcus
