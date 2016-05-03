X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["814" "Tuesday" "3" "May" "2016" "20:35:26" "+0300" "Solar Designer" "solar@openwall.com" "<20160503173526.GA6669@openwall.com>" "18" "Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]" "^Date:" nil nil "5" "2016050317:35:26" "[oss-security] OpenSSL Security Advisory [3rd May 2016]" (number mark "        solar@openwa May  3   18/814   " thread-indent "\"Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]\"\n") "<52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>" ("<20160503152100.GA4790@openwall.com>" "<52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1348 invoked by uid 550); 3 May 2016 17:35:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1327 invoked from network); 3 May 2016 17:35:28 -0000
Message-ID: <20160503173526.GA6669@openwall.com>
References: <20160503152100.GA4790@openwall.com> <52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <52f58a81-5a5a-005d-cc87-27f1cce0379e@gmail.com>
User-Agent: Mutt/1.4.2.3i
Date: Tue, 3 May 2016 20:35:26 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] OpenSSL Security Advisory [3rd May 2016]
To: oss-security@lists.openwall.com

On Tue, May 03, 2016 at 06:52:43PM +0200, Gsunde Orangen wrote:
> * Padding oracle in AES-NI CBC MAC check (CVE-2016-2107)
> The advisory says: "This issue was introduced as part of the fix for
> Lucky 13 padding attack (CVE-2013-0169)".
> So the following versions should be affected (ref.
> https://openssl.org/news/vulnerabilities.html#y2013):
>  - 1.0.2 through 1.02g
>  - 1.0.1d through 1.0.1s
>  - 1.0.0k and all later versions
>  - 0.9.8y and all later versions

You're assuming that all versions with the fix for CVE-2013-0169 are
affected, but the description also says that the new bug is in AES-NI
specific code.  AES-NI support appears to be missing in 1.0.0 and older.
I've just tried grepping 1.0.0t for aesenc (one of the AES-NI mnemonics,
present in the 1.0.1 tree) - it isn't in there.

Alexander
