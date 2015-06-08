X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1151" "Monday" "8" "June" "2015" "17:44:45" "-0500" "Michael Catanzaro" "mcatanzaro@igalia.com" "<1433803485.16305.3.camel@igalia.com>" "30" "[oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured" nil nil nil "6" "2015060822:44:45" "[oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured" (number mark "        mcatanzaro@i Jun  8   30/1151  " thread-indent "\"[oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured\"\n") "<20150608213455.CB1E7B2E059@smtpvbsrv1.mitre.org>" ("<20150608213455.CB1E7B2E059@smtpvbsrv1.mitre.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30028 invoked by uid 550); 8 Jun 2015 22:45:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30010 invoked from network); 8 Jun 2015 22:45:22 -0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AkoFALgadlVbdWOb/2dsb2JhbABcgxCBMoMewzgCgTFMAQEBAQEBgQuEIgEBAQECASNWBQsLGAICJgICVxmIJQgEAaoEpAABAQEBBgIBH4EhgSyIdoUGBxaCUoFFBYxNjXSEF41LihIkYYM0UYJHAQEB
X-IPAS-Result: AkoFALgadlVbdWOb/2dsb2JhbABcgxCBMoMewzgCgTFMAQEBAQEBgQuEIgEBAQECASNWBQsLGAICJgICVxmIJQgEAaoEpAABAQEBBgIBH4EhgSyIdoUGBxaCUoFFBYxNjXSEF41LihIkYYM0UYJHAQEB
X-IronPort-AV: E=Sophos;i="5.13,576,1427752800"; 
   d="scan'208";a="366037676"
Message-ID: <1433803485.16305.3.camel@igalia.com>
In-Reply-To: <20150608213455.CB1E7B2E059@smtpvbsrv1.mitre.org>
References: <20150608213455.CB1E7B2E059@smtpvbsrv1.mitre.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.16.2.1 (3.16.2.1-1.fc22) 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com
Date: Mon, 08 Jun 2015 17:44:45 -0500
From: Michael Catanzaro <mcatanzaro@igalia.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is
 configured
To: cve-assign@mitre.org

On Mon, 2015-06-08 at 17:34 -0400, cve-assign@mitre.org wrote:
> 
> We're not sure that this can be considered a vulnerability fix; it
> seems more like a feature addition. The
> platformProxyIsEnabledInSystemPreferences "return false" code seems 
> to
> mean that the the product's development status was that ascertaining 
> a
> proxy setting was an unimplemented capability, and therefore any
> proxy-specific DNS behavior was an unimplemented feature.

Yes, but it should have been a "return true" to fail-safe instead.

> Admittedly, never making direct DNS queries during proxy use may be
> the new preferred behavior in this product. However, sometimes people
> want to make direct DNS queries during proxy use.

I don't think we intend to support this level of configurability.

> There could be a CVE ID if a product were specifically trying to
> detect a proxy setting (in order to avoid direct DNS in that case) 
> but
> failing because of a coding error. There typically can't be a CVE ID
> for addition of new code to satisfy a requested behavior change.

OK, no need for a CVE then.

Thanks for the good response and the links,

Michael
