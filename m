X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1635" "Monday" "1" "June" "2015" "06:07:13" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20150601100713.3985DB2E03F@smtpvbsrv1.mitre.org>" "54" "[oss-security] Re: CVE Request: PHP SoapClient's __call() type confusion through unserialize()" nil nil nil "6" "2015060110:07:13" "[oss-security] Re: CVE Request: PHP SoapClient's __call() type confusion through unserialize()" (number mark "        cve-assign@m Jun  1   54/1635  " thread-indent "\"[oss-security] Re: CVE Request: PHP SoapClient's __call() type confusion through unserialize()\"\n") "<550C769F.5010801@truel.it>" ("<550C769F.5010801@truel.it>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18409 invoked by uid 550); 1 Jun 2015 10:07:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18385 invoked from network); 1 Jun 2015 10:07:25 -0000
In-Reply-To: <550C769F.5010801@truel.it>
Message-Id: <20150601100713.3985DB2E03F@smtpvbsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Mon,  1 Jun 2015 06:07:13 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: PHP SoapClient's __call() type confusion through unserialize()
To: andrea.palazzo@truel.it

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

> SoapClient's __call() method

> https://bugs.php.net/bug.php?id=69085

Use CVE-2015-4147 for:

  In soap.c:2906

  if (zend_hash_find(Z_OBJPROP_P(this_ptr), "__default_headers",
      sizeof("__default_headers"), (void **) &tmp)==SUCCESS) {
         HashTable *default_headers = Z_ARRVAL_P(*tmp);

  the Z_ARRVAL_P macro is called on __default_headers assuming that it
  is an array without any actual check about it.



Use CVE-2015-4148 for:

  very similiar issue located in do_soap_call() (called by __call(),
  indeed).

  soap.c:2754, in do_soap_call()

  if (call_uri == NULL) {
     call_uri = Z_STRVAL_PP(uri);
  }

  where uri comes from zend_hash_find(Z_OBJPROP_P(this_ptr), "uri",
  sizeof("uri"), (void *)&uri), line 2748.

  If the "uri" field has been previously unserialized as an int, this
  could still result in an info leak whereas the attacker would be able
  to control a str.val field of a zval.

- -- 
CVE assignment team, MITRE CVE Numbering Authority
M/S M300
202 Burlington Road, Bedford, MA 01730 USA
[ PGP key available through http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.14 (SunOS)

iQEcBAEBAgAGBQJVbC37AAoJEKllVAevmvmsAGAH/0VAsTceI7ulrHeNae0vC1oA
S9oLx+y5HHec8FbcuEpV+ZGT+8CtQWLLsspujjSp6ZFkPcuYgnM3nBsP9cPqrgpv
KJXHhoFfiaFCHIbX+SJxrd7ChHk/CFvqYK21h8PQEz/L16D86pk+wXieSXhkHUJY
E90jG2pHKlJBQk0PCzipc3wQ7IbSrP71jIbxOJJ5f1PdIbeK838G80/XacpIE4Tn
sR6qD+ICRW5OfT/Go1emFE8AngHT9yyAPPmeuc0FrzgumgsCJXdE9idR4cJby076
8w9C/mZ3G0Gwx5DL13s4Z7Q+DEZhwvDrqyh+zcdjz16hj76b1bfWizkfKfKf5vQ=
=jLhj
-----END PGP SIGNATURE-----
