X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["639" "Tuesday" "11" "August" "2015" "11:48:02" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20150811114801.GA2731@yuggoth.org>" "14" "Re: [oss-security] CVE for crypto_get_random() from libsrtp" nil nil nil "8" "2015081111:48:02" "[oss-security] CVE for crypto_get_random() from libsrtp" (number mark "        fungi@yuggot Aug 11   14/639   " thread-indent "\"Re: [oss-security] CVE for crypto_get_random() from libsrtp\"\n") "<55C9A996.5090705@redhat.com>" ("<55BB6E77.1070007@redhat.com>" "<CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>" "<55C9A996.5090705@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15767 invoked by uid 550); 11 Aug 2015 11:48:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15743 invoked from network); 11 Aug 2015 11:48:15 -0000
Message-ID: <20150811114801.GA2731@yuggoth.org>
References: <55BB6E77.1070007@redhat.com>
 <CACYkhxiBvVbV-Xg-gM7ZdJzR=xaR2ta_OA-K6Lvftxvo9j3=uA@mail.gmail.com>
 <55C9A996.5090705@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55C9A996.5090705@redhat.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Tue, 11 Aug 2015 11:48:02 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE for crypto_get_random() from libsrtp
To: oss-security@lists.openwall.com

On 2015-08-11 09:51:50 +0200 (+0200), Adam Maris wrote:
[...]
> Unless CVE is assigned, we don't plan to ship any patch at the moment.

I find this an interesting stance. Don't you decide on your own
whether your customers are impacted by a bug sufficiently to require
a fix (security vulnerability or otherwise)? It seems reasonable to
me that you would choose whether or not to ship a patch
independently of how MITRE chooses to classify (or not) the
associated bug... and vice versa, if a CVE is assigned for a bug you
consider to have minimal impact, do you release a patch for it
anyway just because there's a CVE?
-- 
Jeremy Stanley
