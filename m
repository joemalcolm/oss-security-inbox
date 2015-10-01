X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["526" "Thursday" "1" "October" "2015" "07:52:25" "+0530" "Huzaifa Sidhpurwala" "huzaifas@redhat.com" "<560C98E1.10503@redhat.com>" "18" "[oss-security] CVE Request: squid: Nonce replay vulnerability in Digest authentication" nil nil nil "10" "2015100102:22:25" "[oss-security] CVE Request: squid: Nonce replay vulnerability in Digest authentication" (number mark "        huzaifas@red Oct  1   18/526   " thread-indent "\"[oss-security] CVE Request: squid: Nonce replay vulnerability in Digest authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27720 invoked by uid 550); 1 Oct 2015 02:08:49 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27696 invoked from network); 1 Oct 2015 02:08:49 -0000
Message-ID: <560C98E1.10503@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.26
Date: Thu, 1 Oct 2015 07:52:25 +0530
From: Huzaifa Sidhpurwala <huzaifas@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: squid: Nonce replay vulnerability in Digest
 authentication
To: oss-security@lists.openwall.com

Hello MITRE,

Upstream fixed a security issue in digest_authentication [1] that can
allow disabled user or users with changed password to access the squid
service with old credentials.
Upstream patch for Squid 3.4:
http://bazaar.launchpad.net/~squid/squid/3.4/revision/13211
Upstream patch for Squid 3.5:
http://bazaar.launchpad.net/~squid/squid/3.5/revision/13735

[1]: http://bugs.squid-cache.org/show_bug.cgi?id=4066


Can you please assign a CVE id to this issue?


-- 
Huzaifa Sidhpurwala / Red Hat Product Security Team
