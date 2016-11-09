X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1663" "Wednesday" "9" "November" "2016" "00:44:42" "-0500" "cve-assign@mitre.org" "cve-assign@mitre.org" "<fc81166c6bd64f25b3de82878a578fba@imshyb02.MITRE.ORG>" "42" "[oss-security] Re: CVE Request: Cryptography 1.5.3: HKDF might return an empty byte-string" nil nil nil "11" "2016110905:44:42" "[oss-security] Re: CVE Request: Cryptography 1.5.3: HKDF might return an empty byte-string" (number mark "U       cve-assign@m Nov  9   42/1663  " thread-indent "\"[oss-security] Re: CVE Request: Cryptography 1.5.3: HKDF might return an empty byte-string\"\n") "<58beef31-d838-42a0-cafc-85221417785c@redhat.com>" ("<58beef31-d838-42a0-cafc-85221417785c@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10082 invoked by uid 550); 9 Nov 2016 05:44:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10064 invoked from network); 9 Nov 2016 05:44:54 -0000
From: <cve-assign@mitre.org>
To: <anemec@redhat.com>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <58beef31-d838-42a0-cafc-85221417785c@redhat.com>
Message-ID: <fc81166c6bd64f25b3de82878a578fba@imshyb02.MITRE.ORG>
Date: Wed, 9 Nov 2016 00:44:42 -0500
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: CVE Request: Cryptography 1.5.3: HKDF might return an empty byte-string

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> 1.5.3 - 2016-11-05
> 
> * Security issue: Fixed a bug where HKDF would return an empty
> byte-string if used with a length less than algorithm.digest_size.
> Credit to Markus Doering for reporting the issue.
> 
> https://cryptography.io/en/latest/changelog/#id1
> https://github.com/pyca/cryptography/issues/3211
> https://github.com/pyca/cryptography/commit/b924696b2e8731f39696584d12cceeb3aeb2d874

>> hazmat/primitives/kdf/hkdf.py
>> 
>> -  while (self._algorithm.digest_size // 8) * len(output) < self._length:
>> +  while self._algorithm.digest_size * (len(output) - 1) < self._length:

Use CVE-2016-9243.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYIrdLAAoJEHb/MwWLVhi20v8P/12FFKS4lmHBohPiqZfVYIVf
FVVBabdQeQKkm/T/zs+Dn0itq4FZX/jo3GYiJfC9zX7EPtmOq6QQQmKZImDeD72m
Tt3eMzUCdN5ofWm9+QHzi4Bg9Gh5ZtTQU1VppMslSxKCl5bB5kliEr+KH5iBndCw
ElvNUpqsODuqiajKwY5F+jTu7wazdxbG8vGds2dTy19SsBx+xOTP4wFt5vIKc4TN
s06d5AV7qJ9fZkXQgR62T2+huElM0yCYf7qx7B36YyT8Sj4pKrLAm/QdMx8e5azn
gEmvp6afOtXv+o+lqXQcsExQtHEz3W0ezVCsAZqA4ckGxSxcNZ2JwfQQizO/kHVK
+TMkYnMchlr80ev61VTV7AbXTnn/RHbHkHQA3nRRKXbR+umqzpcrpB4wFELwLqw9
hchlE5DebRoYGVSiFPTKsTmYca2OelbmEQcz7fRbaha1g2G6BoR9/bRPfZTj7PBk
J1yHdJqfF15EQUamOUpzSAzNubHly0jdOKNSE2kUMWZFCsDcvbsC/Hsvn2YXn7We
KlMWBZ7z1BdC7UEuNpDozVG9Dc62gX187+czppqmAaw9BD9cGH92QVghTsZ5Zxj3
UXrP0nt96ImQC/OlDVcdpUvqKE77K2Zb5OVFWLgU69VyaUc/oRMch6TgJ4VpCm6/
elSR/llcBZcHjvKLrYwP
=4CW6
-----END PGP SIGNATURE-----
