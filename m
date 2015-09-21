X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["977" "Monday" "21" "September" "2015" "11:18:33" "+0100" "Dominic Cleal" "dominic@cleal.org" "<55FFD979.3040203@cleal.org>" "34" "[oss-security] CVE-2015-5282: Foreman stored XSS in parameter hide checkbox" nil nil nil "9" "2015092110:18:33" "[oss-security] CVE-2015-5282: Foreman stored XSS in parameter hide checkbox" (number mark "U       dominic@clea Sep 21   34/977   " thread-indent "\"[oss-security] CVE-2015-5282: Foreman stored XSS in parameter hide checkbox\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 20344 invoked by uid 550); 21 Sep 2015 10:28:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7507 invoked from network); 21 Sep 2015 10:18:46 -0000
To: oss-security@lists.openwall.com
From: Dominic Cleal <dominic@cleal.org>
X-Enigmail-Draft-Status: N1210
Cc: foreman-security@googlegroups.com
Message-ID: <55FFD979.3040203@cleal.org>
Date: Mon, 21 Sep 2015 11:18:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2015-5282: Foreman stored XSS in parameter hide checkbox

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2015-5282: Foreman is affected by a stored XSS vulnerability in
its parameter key/value web UI.

A checkbox exists to hide the values of parameters stored in the
application to mask them from casual viewing.  When changing the
hide/show checkbox, the value is masked/unmasked in the UI, but the
parameter value was not properly escaped when updating the UI which
allowed stored HTML/JS etc. to be evaluated.

Affects: Foreman 1.7.0 or higher
Fix to be released in Foreman 1.10.0

Patch:
https://github.com/theforeman/foreman/commit/4f3555b217be8723e8045f9816d
147b5f684ec57

More information:
http://theforeman.org/security.html#2015-5282
http://projects.theforeman.org/issues/11859
http://theforeman.org/

- -- 
Dominic Cleal
dominic@cleal.org
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlX/2XMACgkQfH0ybywrcsxlNACeJ/9XQm9eMcXf+xw3JFCSf5vY
VN0An1WwmASbhE0cci+no2LUO0fIpiOV
=V/Ke
-----END PGP SIGNATURE-----
