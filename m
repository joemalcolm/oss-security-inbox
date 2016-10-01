X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2332" "Friday" "30" "September" "2016" "23:32:17" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<20161001033217.088D733202F@smtpvbsrv1.mitre.org>" "50" "[oss-security] Re: CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" nil nil nil "9" "2016100103:32:17" "[oss-security] Re: CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode" (number mark "U       cve-assign@m Sep 30   50/2332  " thread-indent "\"[oss-security] Re: CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode\"\n") "<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>" ("<CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 25761 invoked by uid 550); 1 Oct 2016 03:32:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25743 invoked from network); 1 Oct 2016 03:32:28 -0000
From: cve-assign@mitre.org
To: michael.santillana@wework.com
Cc: cve-assign@mitre.org, oss-security@lists.openwall.com, infosec@wework.com
In-Reply-To: <CAARAU46rH-SFtFof=E55kkPY3YyBGOWugZh==qE9zaRCQuPWLg@mail.gmail.com>
Message-Id: <20161001033217.088D733202F@smtpvbsrv1.mitre.org>
Date: Fri, 30 Sep 2016 23:32:17 -0400 (EDT)
Subject: [oss-security] Re: CVE Request - Ruby OpenSSL Library - IV Reuse in GCM Mode

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://github.com/ruby/openssl/issues/49
> https://github.com/ruby/openssl/commit/8108e0a6db133f3375608303fdd2083eb5115062
> http://stackoverflow.com/questions/35991551
> https://github.com/attr-encrypted/attr_encrypted/issues/203
> https://github.com/attr-encrypted/encryptor/pull/22

> A developer that uses the code above may incorrectly assume that their code
> is secure from the pitfalls associated with IV reuse in aes-*-gcm, since
> the 'cipher.random_iv' method is used. According to the documentation, this
> should generate a random IV each time the encryption method is called.

> even though the random_iv method is called, the code is defaulting to
> a static IV.

>> Cipher#iv= does not preserve the IV in gctx->iv because gctx->key_set
>> is already set by the pre-initialization in Cipher#initialize, and the
>> subsequent call of Cipher#key= resets the IV to uninitialized (zeroed
>> by OPENSSL_zalloc() in EVP_CipherInit_ex()) gctx->iv.

Use CVE-2016-7798 for this issue in the openssl gem for Ruby. (Note
that https://github.com/ruby/openssl/blob/master/History.md describes
this as "openssl gem, formerly a standard library of Ruby,
ext/openssl.") The same CVE ID applies to the effects of this
vulnerability on the encryptor gem and the attr_encrypted gem.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJX7y3BAAoJEHb/MwWLVhi2y+AP/2aiU7pR293xXNVq9qmU0Rzi
9DuMjQ4w9XA97ngKxzqt+ehdfcQDI/ZkDf/bH24d3VF5wQWjW6VmQ7xFIcnGADj1
tPrl8RiiPP2d9vzNjihalCUDoQ5GpTsAM3GFylZa81mAFAQ76ZmoxHPCzd9yzWbc
u+r71UfcawiU67LTggIZP4ods8elCHMWFUPriWOML8uXDjYYlaUwWdip0jIsgqNC
S74Txv4GwhBtA+Pj/3Tsv9eXZ1OzcwoOa0c9rJYwlNRWUEQB5IX9sZSLN2SlTxcO
yf8VSXBCKqx+4/zJHTeeIVZvSt/4p9uGhJiHpLHaNyZicD7sYbKYDJuY+zaMYc5e
6r3QE1X5JT9zxjIVKYny0BcXnrSPBhp3is7orTDr0Uc26Hnn6jxraHwLlEBkF19f
GofQxRj3cLPrS7tChacYp7qYTvmahNaQZWC6ei76+ulZDkL28xkto0QWf8CNo2eX
x1nS0B1hDXwH314APoxY1+pKoHGFbXqAFE6yqhWB77SLZWYVlT4ixqvv7w/fIM7N
Me8bbpeC9e3o31tE4qv2fqvytOZw9h/LdTwoGBToWhfOkK7jGwOti8SE24pb2hOC
hx+G4eswZOiwkqJiU4gmN+eljOQwdUD92BzklwCxLA0V1D8KxSyILkWgEHgJMuL/
LkjwXsTybnRdUMr+IAVC
=FWLM
-----END PGP SIGNATURE-----
