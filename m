X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["844" "Wednesday" "29" "July" "2015" "07:26:31" "+0300" "Solar Designer" "solar@openwall.com" "<20150729042631.GA6537@openwall.com>" "15" "Re: [oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause named to exit with a REQUIRE assertion failure" nil nil nil "7" "2015072904:26:31" "[oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause named to exit with a REQUIRE assertion failure" (number mark "        solar@openwa Jul 29   15/844   " thread-indent "\"Re: [oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause named to exit with a REQUIRE assertion failure\"\n") "<55B84E15.4010402@isc.org>" ("<55B84E15.4010402@isc.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19540 invoked by uid 550); 29 Jul 2015 04:26:34 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19521 invoked from network); 29 Jul 2015 04:26:34 -0000
Message-ID: <20150729042631.GA6537@openwall.com>
References: <55B84E15.4010402@isc.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55B84E15.4010402@isc.org>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Wed, 29 Jul 2015 07:26:31 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] [BIND] CVE-2015-5477: An error in handling TKEY queries can cause named to exit with a REQUIRE assertion failure
To: Michael McNally <mcnally@isc.org>

On Tue, Jul 28, 2015 at 11:52:53PM -0400, Michael McNally wrote:
> A deliberately constructed packet can exploit an error in the
> handling of queries for TKEY records, permitting denial of service.

As an attack surface reduction measure for a subset of builds/users,
would it make sense to exclude the corresponding code and functionality
from --without-openssl builds (which effectively lack DNSSEC support
anyway, and often deliberately so)?  If so, I wish this had been done by
now, thereby mitigating this bug for those builds and users, but perhaps
it still makes sense to do so now (upstream?) in case there are more
bugs "like this" in code that is DNSSEC-related yet doesn't directly
depend on OpenSSL (hence, isn't excluded in --without-openssl builds
yet).  Security aside, this would also reduce the (binary) code size.

Alexander
