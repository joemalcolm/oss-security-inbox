X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1058" "Thursday" "9" "June" "2016" "10:06:13" "+0200" "Marcus Meissner" "meissner@suse.de" "<20160609080613.GA3694@suse.de>" "29" "[oss-security] CVE Request: ruby openssl hostname verification issue" nil nil nil "6" "2016060908:06:13" "[oss-security] CVE Request: ruby openssl hostname verification issue" (number mark "U       meissner@sus Jun  9   29/1058  " thread-indent "\"[oss-security] CVE Request: ruby openssl hostname verification issue\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29934 invoked by uid 550); 9 Jun 2016 08:06:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 29907 invoked from network); 9 Jun 2016 08:06:25 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Date: Thu, 9 Jun 2016 10:06:13 +0200
From: Marcus Meissner <meissner@suse.de>
To: OSS Security List <oss-security@lists.openwall.com>,
	cve-assign@mitre.org
Message-ID: <20160609080613.GA3694@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Organization: SUSE Linux GmbH, GF: =?iso-8859-1?Q?Felix_?=
 =?iso-8859-1?Q?Imend=F6rffer=2C_Jane_Smithard=2C_Graham_Norton=2C_HRB_212?=
 =?iso-8859-1?Q?84_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: [oss-security] CVE Request: ruby openssl hostname verification issue

Hi,

This probably warrants a CVE:

https://github.com/ruby/openssl/issues/8

quoting:

Even if OpenSSL::SSL::VERIFY_PEER is configured, I/O is allowed with a
remote server before the subject has been verified. VERIFY_PEER only
checks the cert chain is rooted in the local truststore. It does not
check if the subject is valid in and of itself.

My understanding is the ssl_socket.post_connection_check(hostname) method
must be called to ensure the subject is correctly verified. However,
communication is allowed to remote services without verifying the subject.

I would suggest throwing an exception if VERIFY_PEER is configured and
I/O is attempted without first calling post_connection_check

It would also be nice if this all happened automatically simply by
passing hostname into OpenSSL::SSL::SSLSocket (which AFAICT only affects
SNI presently, and not subject verification)

----

Ciao, Marcus
-- 
Marcus Meissner,SUSE LINUX GmbH; Maxfeldstrasse 5; D-90409 Nuernberg; Zi. 3.1-33,+49-911-740 53-432,,serv=loki,mail=wotan,type=real <meissner@suse.de>
