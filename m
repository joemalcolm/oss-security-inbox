X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2323" "Friday" "19" "August" "2016" "09:46:56" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20160819134656.11C416C56A8@smtpvmsrv1.mitre.org>" "60" "[oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening" "^Cc:" nil nil "8" "2016081913:46:56" "[oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening" (number mark "        cve-assign@m Aug 19   60/2323  " thread-indent "\"[oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening\"\n") "<87oa6n9nap.fsf@mid.deneb.enyo.de>" ("<87oa6n9nap.fsf@mid.deneb.enyo.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18017 invoked by uid 550); 19 Aug 2016 13:47:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 17999 invoked from network); 19 Aug 2016 13:47:08 -0000
In-Reply-To: <87oa6n9nap.fsf@mid.deneb.enyo.de>
Message-Id: <20160819134656.11C416C56A8@smtpvmsrv1.mitre.org>
Cc: cve-assign@mitre.org
Date: Fri, 19 Aug 2016 09:46:56 -0400 (EDT)
From: cve-assign@mitre.org
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: MatrixSSL lack of RSA-CRT hardening
To: oss-security@lists.openwall.com

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

>> Date: Mon, 27 Jun 2016 08:08:14 +0200

> MatrixSSL 3.8.3 comes with this fix:
> 
> https://github.com/matrixssl/matrixssl/blob/master/CHANGES.md#validation-of-rsa-signature-creation
> 
> I think this warrants a CVE ID because RSA-CRT key leaks from
> MatrixSSL have been observed in practice.

>> Version 3.8.3 April 2016
>> 
>> BUG FIXES
>> 
>> Validation of RSA Signature Creation

>> An internal RSA validation of created signatures has been added to the
>> library in the psRsaEncryptPriv() function.
>> 
>> Security researcher Florian Weimer has shown it is possible for RSA
>> private key information to leak under some special failure
>> circumstances. Information on the exploit can be found here:
>> https://people.redhat.com/~fweimer/rsa-crt-leaks.pdf
>> 
>> The potential leak is only possible if a DHE_RSA based cipher suite is
>> supported on the server side. This is the only handshake combination
>> in which an RSA signature is sent over the wire (during the
>> SERVER_KEY_EXCHANGE message). The signature itself must have been
>> incorrectly generated for the exploit to be possible.
>> 
>> The additional signature validation test will now cause the TLS
>> handshake to fail prior to a faulty signature being sent to the
>> client.

Use CVE-2016-6882.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJXtwzoAAoJEHb/MwWLVhi2EvwQAJZXlmmNwy/iDHfzIPx4J2Ai
CuAnQ5mrHIACk77z496F8yxyjocM455UuBEaofIACrPbEFzIwV3+6cLPWCY59OcJ
0XJ18AgUVxEYJyKlrIae5O3wTnrPix939TJvhuPn+YnuK6fNXtAk5PVCMWNWMyUD
gCd2c3A2qDVJ+6lLmuTGnitZ8t0m88kUclzCfKMHK5ciYjDa8JcRoE9r45Ue2At0
sRqdJ4OWcvSbIiHWA5zN43GZ13z3fKw2ev1NvWn2pKIhVj9SBzm+6kxzz/jTm5ZW
o4Koam6Y59lspk5yXHCeDWpXuylYwn55pHTBQvTKjRSWh3kMXEx8/RR70qx4Z5Ow
Wok13h9/1U6cn8wrbsJiODtW2eSvY/N/FHdRWlPj5sDR64PntUhxTR3l4WvgT8Pe
ogn9m14ij8uc3/pwXyXECLSqXp8WchMEsmacPEitTxRfsXbA7LoqcuZ6pxxKefVY
yxxmQHDKaoOD4U92hTW8zG+nGn1rMCvmA0lI2irrCthdW5oD929WNYTKPnalZJTe
XPi+TqxyZq1ATJxN2fMtZHoXgtXxepmEeXQK+ZXowT3J7x5eHJ8ij6RKYHK4mW5/
1QGHW0LMrycUgFoggOLPXDFm3Sgh/dOmTngRqR3GXssRPsBpbtBuSBBttwLXYB4o
xLUdsD1hJSQLZkV5232f
=yjNZ
-----END PGP SIGNATURE-----
