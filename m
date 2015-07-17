X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3797" "Friday" "17" "July" "2015" "10:09:48" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150717140948.49FE46C0802@smtpvmsrv1.mitre.org>" "103" "[oss-security] Re: Squid HTTP proxy CVE request" nil nil nil "7" "2015071714:09:48" "[oss-security] Re: Squid HTTP proxy CVE request" (number mark "        cve-assign@m Jul 17  103/3797  " thread-indent "\"[oss-security] Re: Squid HTTP proxy CVE request\"\n") "<559A65F3.80103@treenet.co.nz>" ("<559A65F3.80103@treenet.co.nz>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11509 invoked by uid 550); 17 Jul 2015 14:10:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11486 invoked from network); 17 Jul 2015 14:10:00 -0000
In-Reply-To: <559A65F3.80103@treenet.co.nz>
Message-Id: <20150717140948.49FE46C0802@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Fri, 17 Jul 2015 10:09:48 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Squid HTTP proxy CVE request
To: squid3@treenet.co.nz

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> Due to incorrect handling of peer responses in a hierarchy of 2 or
> more proxies remote clients (or scripts run on a client) are able to
> gain unrestricted access through a gateway proxy to its backend proxy.

Use CVE-2015-5400.


> This months release of Squid HTTP proxy, version 3.5.6, contains fixes
> for two security issues.

> Squid up to and including 3.5.5 are apparently vulnerable to DoS
> attack from malicious clients using repeated TLS renegotiation
> messages.

We have a few questions about this.

First, we probably don't understand your build process. The only
mentions of the substring "renegotiate" in squid-3.5.6.tar.bz2 are:

    - TLS: Disable client-initiated renegotiation
  
  #if defined(TLSEXT_TYPE_renegotiate)
              TLSEXT_TYPE_renegotiate,
  #endif
  
  #if defined(SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS)
  static void
  ssl_info_cb(const SSL *ssl, int where, int ret)
  [ ... ]
  #endif
  
  configureSslContext
  ...
  #if defined(SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS)
      SSL_CTX_set_info_callback(sslContext, ssl_info_cb);
  #endif
  
  sslCreateClientContext
  ...
  #if defined(SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS)
      SSL_CTX_set_info_callback(sslContext, ssl_info_cb);
  #endif

The only mention of the substring "renegotiate" in squid-3.5.5.tar.bz2
is:

  #if defined(TLSEXT_TYPE_renegotiate)
              TLSEXT_TYPE_renegotiate,
  #endif

http://wiki.squid-cache.org/SquidFaq/CompilingSquid doesn't seem to
mention the change.

How do these 3.5.6 changes disable anything, or serve as one of two
"fixes for two security issues"? Are you just providing a (not widely
documented) build option so that a repackager or end user could define
SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS if desired?

In that situation, we don't believe there should be a CVE ID for the
official Squid distribution, because the change is about adding
functionality in the form of a new, non-default option. If a
repackager decided to build with SSL3_FLAGS_NO_RENEGOTIATE_CIPHERS and
then announce their 3.5.6 renegotiation change as a required security
update for their customers, then the repackager could have a CVE ID.

Second, we don't know what you mean by "CVE-2009-3555 ... was clearly
assigned for server-initiated renegotiation." This statement is,
however, not critical to CVE assignment, so we won't try to start a
discussion of that. The principal reason that CVE-2009-3555 can't be
correct is that CVE-2009-3555 isn't about resource-consumption DoS.

> CVE-2011-1473 which is for the library itself and disputed

Right, in a case where there should be a CVE ID, we feel that the
vulnerable product would be specific server-side code, not a
general-purpose library.

To conclude, if the position of the Squid developers is that
client-initiated renegotiation must be denied (e.g., because it can
lead to resource-consumption DoS, and there aren't any supported Squid
use cases where you feel it's important to let a client renegotiate),
and you have changed your code to take this position by default, then
you can have a CVE ID. Otherwise, we think not.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVqQvwAAoJEKllVAevmvmsKM0H/3NFKlaW2JsWkkbS0w72I/nB
7Me13orID9RNAObpG8uvErgYddBxlSQ2tNaswogWGEqnZXBONIDoka5ED5e+vc2J
mQ8NTElkelNidzeeGpeUzDo4AH1WuHI8QOO1jEhODwPWrFfhOUJhCCvngnyrQ324
yzg3Z3e5uMqR8mLv908JBYele/ggrZZ5cVQW5bAUqWH6yeVvbGlAAoY5xsUVPirw
nlSEgZ3YtmXh5sj6IFnkoNwmjlPq5d4qg3d67J8Fwg2rqXnTNmvlSbM5bu2BsuSx
svWrbI8KfKDkSez8pKP3DFUUMh9D2hZW10hoisXYscbxun7omNukzBAtEIwIyz4=
=w9Eq
-----END PGP SIGNATURE-----
