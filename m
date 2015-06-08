X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2779" "Monday" "8" "June" "2015" "17:34:55" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150608213455.CB1E7B2E059@smtpvbsrv1.mitre.org>" "61" "[oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured" nil nil nil "6" "2015060821:34:55" "[oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured" (number mark "        cve-assign@m Jun  8   61/2779  " thread-indent "\"[oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured\"\n") "<1433781982.9986.17.camel@igalia.com>" ("<1433781982.9986.17.camel@igalia.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 17537 invoked by uid 550); 8 Jun 2015 21:35:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17514 invoked from network); 8 Jun 2015 21:35:07 -0000
In-Reply-To: <1433781982.9986.17.camel@igalia.com>
Message-Id: <20150608213455.CB1E7B2E059@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon,  8 Jun 2015 17:34:55 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: WebKitGTK+ performs DNS prefetch when a proxy is configured
To: mcatanzaro@igalia.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> https://bugs.webkit.org/show_bug.cgi?id=145542

> Complaint: "Apparently it seems that even when configured to use Tor
> as proxy, epiphany is so "smart" to send DNS queries directly to the
> wire, thus making any effort of Tor useless."

> Note: This is not really exploitable per se and it's public in three
> downstream bugtrackers, so no point in trying to hide this -> public
> intentionally.

> All reviewed patches have been landed.

We're not sure that this can be considered a vulnerability fix; it
seems more like a feature addition. The
platformProxyIsEnabledInSystemPreferences "return false" code seems to
mean that the the product's development status was that ascertaining a
proxy setting was an unimplemented capability, and therefore any
proxy-specific DNS behavior was an unimplemented feature.

Admittedly, never making direct DNS queries during proxy use may be
the new preferred behavior in this product. However, sometimes people
want to make direct DNS queries during proxy use. For example,
suppose that a company requires all outbound HTTP requests to go
through a proxy server at the company's headquarters office. However,
branch offices can make outbound DNS queries from their own networks,
possibly in other countries. Some DNS servers respond with different A
records based on an estimate of the geographical location of the DNS
client (or did historically). These different A records may ultimately
be useful in obtaining HTTP responses that are more geographically
appropriate for a branch office.

Some web pages possibly related to how DNS should work with a proxy:

  https://www.chromium.org/developers/design-documents/network-stack/socks-proxy
  https://bugzilla.mozilla.org/show_bug.cgi?id=134105
  https://trac.torproject.org/projects/tor/ticket/5741

There could be a CVE ID if a product were specifically trying to
detect a proxy setting (in order to avoid direct DNS in that case) but
failing because of a coding error. There typically can't be a CVE ID
for addition of new code to satisfy a requested behavior change.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVdgk1AAoJEKllVAevmvmsaCcH/0fjW1seLtzPcRTOXVSWOsUO
rzlRBh+ci0g+GTdQTHsCmEQAIbvs0s582TblHh6ks4deNR5rNGDR81W63leQxSi0
PBNclQMnHbJCTN5AjJy89OIxzx++lwcCnazccfWdXEZcSGtm1vA1TJptP17Cb9LQ
w+2ZfzhLKVPJ90zL+LiEN/VaHo8FzFFUWfLvzJnKQFRQMiWfTByQS/J4yezWsRE+
cqEsr+5ZLxcDlpQSQFlhNG/BEKKt/byzJrkUzXz6OKGwnbwamMalv9CuCa7fcPQT
/ukwm7sG1x/xucaMKVVTz7WGZ89vA1fxS/VxLyJCaxbqGBrqhvSmaKSdegLU9ic=
=Mg5H
-----END PGP SIGNATURE-----
