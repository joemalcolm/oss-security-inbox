X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1338" "Monday" "16" "January" "2017" "19:10:08" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<09d7ec25ba894f319c2e8257965b0ea0@imshyb01.MITRE.ORG>" "35" "[oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)" nil nil nil "1" "2017011700:10:08" "[oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)" (number mark "U       cve-assign@m Jan 16   35/1338  " thread-indent "\"[oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)\"\n") "<2287406.W50YOaXYaS@blackgate>" ("<2287406.W50YOaXYaS@blackgate>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15724 invoked by uid 550); 17 Jan 2017 00:10:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15508 invoked from network); 17 Jan 2017 00:10:20 -0000
From: <cve-assign@mitre.org>
To: <ago@gentoo.org>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <2287406.W50YOaXYaS@blackgate>
Message-ID: <09d7ec25ba894f319c2e8257965b0ea0@imshyb01.MITRE.ORG>
Date: Mon, 16 Jan 2017 19:10:08 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: jasper: invalid memory read in jpc_undo_roi (jpc_dec.c)

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [] https://blogs.gentoo.org/ago/2017/01/16/jasper-invalid-memory-read-in-jpc_undo_roi-jpc_dec-c
> 
> AddressSanitizer: SEGV on unknown address
> The signal is caused by a READ memory access.
> 
> jpc_undo_roi ... jasper-1.900.27/src/libjasper/jpc/jpc_dec.c:1925:10

Use CVE-2017-5504.


- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYfV+TAAoJEHb/MwWLVhi2BnoP/iX2MWVoRd5spNVOMwFfsnw+
RzFqjbJfb9tiiVrUkmsvadvJ65waV8WYhiUag9eWzSi0NboaY0P4CtybFbPr2jf6
W7hZXmbxVqUgKLnOi3dwc5L2wHedMAe2BN0euz/Grh3jgCVdw0vT8GA5L+i/+jMG
j6J1JV5JhMlsqdLC3BnzBLvxXVkY3ctUMaoVf74WZiA2l9unsQDHqRo3Kuya4v6A
lDOYbkEkO1DQqkmxURhxKIfGJM0a4hUNzB4WtJjoq2L3UGq+gTuvxzwcEuBOBZuf
rnLjPKaAaLISAMU3hzlvWcMcGag16YvT78OAaY7szurBcl+BPPJeJqe9tFxQZ/cf
HrYEdF/Xr/lTD2T/s7JsxaNtJ2mnnVWB4OzJLCE0EuZtoD6/C1OiH5T5mPPbix2v
Vm1EEHhx/CiFUvtCS8e8ZirGfSRklJGqgjimBMgM/3cheGVgIzVKdxyD07WQCITV
kY1Q4FFCE2vDZ8boFRWcsJnuae7kJ/kRn4/9G3oYB1XygH6GZ+RB1TG0dF1qYW2z
uum/6YYhhAX4G7xX/DeUoUcaqzC4nuB8TRmVmm05TW8pr/NL0d68KZN1Bjm3eipa
/bf/MQP5hE3fkpEBYYTJMaaaVZBBw8PzvWbE54ncqvZ3a+Q/bfq7JM3uMHZmeIuQ
yRP72ZaDoxvPZvugXtsr
=RGe1
-----END PGP SIGNATURE-----
