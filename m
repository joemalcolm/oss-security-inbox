X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1587" "Thursday" "14" "April" "2016" "15:49:11" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160414194911.B5BA16C0485@smtpvmsrv1.mitre.org>" "44" "[oss-security] Re: CVE Request: imlib2: integer overflow resulting in insufficient heap allocation" "^Cc:" nil nil "4" "2016041419:49:11" "[oss-security] Re: CVE Request: imlib2: integer overflow resulting in insufficient heap allocation" (number mark "        cve-assign@m Apr 14   44/1587  " thread-indent "\"[oss-security] Re: CVE Request: imlib2: integer overflow resulting in insufficient heap allocation\"\n") "<20160414172353.GA5117@eldamar.local>" ("<20160414172353.GA5117@eldamar.local>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26120 invoked by uid 550); 14 Apr 2016 19:49:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26102 invoked from network); 14 Apr 2016 19:49:23 -0000
In-Reply-To: <20160414172353.GA5117@eldamar.local>
Message-Id: <20160414194911.B5BA16C0485@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com
Date: Thu, 14 Apr 2016 15:49:11 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE Request: imlib2: integer overflow resulting in insufficient heap allocation
To: carnil@debian.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> an integer overflow in imlib2, which result in insufficient heap
> allocation.
> 
> https://git.enlightenment.org/legacy/imlib2.git/commit/?id=7eba2e4c8ac0e20838947f10f29d0efe1add8227

>> there are a lot of code that allocates image data with something like
>> 
>>     malloc(w * h * sizeof(DATA32));
>> 
>> Obviously, on 32-bit machines this results in integer overflow,
>> insufficient heap allocation, with [massive] out-of-bounds heap
>> overwrite.

>> -  #define X_MAX_DIM 46340

>> +  #define X_MAX_DIM 32767

Use CVE-2016-4024.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXD/NlAAoJEL54rhJi8gl5RfQQAL/khJP7I45NWzsmfikEOqry
5+/yWayIM27k/4YauR/ijslSeQB6yH/qhqha0Xai2mMxJovHGOoY0fdMSyNLCqrG
EkuGVhKk3mNo98jNUyUEGFNfYJwg5TuQyzXZi/qSrsaQLZ5IGZO3O9K+Io3xrbqb
Qescx6U9+0V8H8UoSNNYmawYwCD/Iw1U05b4e8HI2eWg50NW/75GPO0mCyB+ymyr
KCIsF69/iWft+i8JRZ1yvivL3QSb22ltwsxDXsZgtPedxW14MBlzakJ/HZOfkhV/
/efcM/4jWyg48SxvBS+4JsaXuabH5xBrvq7OahABZrIL2EnDthe0MMUvEqgXS4im
yiwzyPbZYubo0CBFMLCRrhdOE6MSUPEQnZM58jWfHSTzO9XOTHgFwCafRaocTw63
Q6I7lW15ofV8xncQorRYzFhxxYp2aNFDgfGvYEUUQOUdKDtoDDNKWZIifZd/eZYj
+noTSvwIZv5lQUQkJdRQWlFCnkJC+sfkmZYGpbtCQgg0qq1pp5vifTeJ17lAlVQh
Cv838A3tnimTqg1HKpATjY+rgm+Pdu14oTypcBHz3a0BEPfFqf6MMrS+oaCEyheX
UehdlrK4HVJ9tDsZjQk4To0ouBXtmvkvLMCyY/AF9FR7maQykgtSArbTkHiyF75F
aVqw/STiET+EoipSAhhm
=3vdb
-----END PGP SIGNATURE-----
