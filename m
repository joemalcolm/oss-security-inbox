X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1114" "Wednesday" "9" "December" "2015" "16:12:01" "+0000" "Dominic Cleal" "dominic@cleal.org" "<566852D1.7000504@cleal.org>" "37" "[oss-security] CVE-2015-7518: Foreman stored XSS in parameter information popup" nil nil nil "12" "2015120916:12:01" "[oss-security] CVE-2015-7518: Foreman stored XSS in parameter information popup" (number mark "U       dominic@clea Dec  9   37/1114  " thread-indent "\"[oss-security] CVE-2015-7518: Foreman stored XSS in parameter information popup\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5344 invoked by uid 550); 9 Dec 2015 16:12:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5249 invoked from network); 9 Dec 2015 16:12:15 -0000
From: Dominic Cleal <dominic@cleal.org>
X-Enigmail-Draft-Status: N1110
To: oss-security@lists.openwall.com
Cc: foreman-security@googlegroups.com
Message-ID: <566852D1.7000504@cleal.org>
Date: Wed, 9 Dec 2015 16:12:01 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] CVE-2015-7518: Foreman stored XSS in parameter information popup

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

CVE-2015-7518: Foreman is affected by a stored XSS vulnerability in
parameter information popups in the web UI.

Extra information stored on parameters inherited by hosts in Foreman
is shown in the web UI, in a popup for users.  The user-editable parts
of this information, such as a description, matcher and source name
can allow stored HTML/JS to be evaluated when a user opens the
information popup for a parameter.

Thanks to Tomer Brisker for reporting it to the foreman-security team,
and for fixing the issue.

Affects: at least Foreman 1.2.0 and higher (all modern versions)
Fix to be released in Foreman 1.10.0

Patch:
https://github.com/theforeman/foreman/commit/32468bce938067b1bbde1c20257
71b5b83ce88ec

More information:
http://theforeman.org/security.html#2015-7518
http://projects.theforeman.org/issues/12611
http://theforeman.org/

- -- 
Dominic Cleal
dominic@cleal.org
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZoUsoACgkQfH0ybywrcszGbACgxVFqMU6/fevuwG8zmxLAHGbU
HzEAn1Rkf4J0rt/GuBGCHC61HX9R+auy
=SfOR
-----END PGP SIGNATURE-----
