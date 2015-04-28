X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["606" "Monday" "27" "April" "2015" "22:02:10" "-0400" "Wade Mealing" "wmealing@redhat.com" "<802401219.7793841.1430186530208.JavaMail.zimbra@redhat.com>" "20" "[oss-security] CVE request: kernel overestimates the available entropy in random pools" nil nil nil "4" "2015042802:02:10" "[oss-security] CVE request: kernel overestimates the available entropy in random pools" (number mark "        wmealing@red Apr 27   20/606   " thread-indent "\"[oss-security] CVE request: kernel overestimates the available entropy in random pools\"\n") "<1516477121.7790170.1430184468415.JavaMail.zimbra@redhat.com>" ("<1516477121.7790170.1430184468415.JavaMail.zimbra@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30542 invoked by uid 550); 28 Apr 2015 02:02:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30521 invoked from network); 28 Apr 2015 02:02:23 -0000
Message-ID: <802401219.7793841.1430186530208.JavaMail.zimbra@redhat.com>
In-Reply-To: <1516477121.7790170.1430184468415.JavaMail.zimbra@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.64.50.203]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC42 (Mac)/8.0.6_GA_5922)
Thread-Topic: CVE request: kernel overestimates the available entropy in random pools
Thread-Index: r+YvXPc/neUoL/6VDv+YYS4g4NohVA==
Cc: cve-assign@mitre.org
Date: Mon, 27 Apr 2015 22:02:10 -0400 (EDT)
From: Wade Mealing <wmealing@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: kernel overestimates the available entropy in random
 pools
To: oss-security@lists.openwall.com

Gday All,

I'm chasing up a CVE number for an issue that was discovered/brought to
light by H. Peter Anvin, on LKML ( see https://lkml.org/lkml/2013/4/24/5 )

To quote:

"When we write entropy into a non-empty pool, we currently don't
account at all for the fact that we will probabilistically overwrite
some of the entropy in that pool.  This means that unless the pool is
fully empty, we are currently *guaranteed* to overestimate the amount
of entropy in the pool!"

The impact of this issue could be to a downgrade the kernels true
RNG to a pseudo-RNG. 

Thanks,

Wade Mealing
Red Hat Product Security
