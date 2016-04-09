X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["841" "Sunday" "10" "April" "2016" "00:29:48" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<5709825C.8090807@vorlons.info>" "28" "[oss-security] CVE request: imlib2 integer overflow" nil nil nil "4" "2016040922:29:48" "[oss-security] CVE request: imlib2 integer overflow" (number mark "U       matthias@vor Apr 10   28/841   " thread-indent "\"[oss-security] CVE request: imlib2 integer overflow\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 8183 invoked by uid 550); 9 Apr 2016 22:30:01 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8162 invoked from network); 9 Apr 2016 22:30:01 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1460240989;
	bh=xF1tBdwX2eegNDNkMO6RdzGGLbldqjrn9kCzQVvnBto=;
	h=From:Subject:To:Date:From;
	b=t7N3Gq0+JuGXWKLR6qp2l8TQP0VACTnYlzuOsxelzFTmP9GvHXqg8JesGjIDcG30N
	 tcOiCee22VFYWGCc9eMi1ql4Q7vWaSFp5NLEEDZbBDlVZ5XaHS1u75KKnOynvm4M3s
	 ThyuTpsn97q1EzDFuHfyUoXItKhrQ81YQTArNAn0=
From: Matthias Geerdsen <matthias@vorlons.info>
X-Enigmail-Draft-Status: N1110
To: oss-security@lists.openwall.com
Message-ID: <5709825C.8090807@vorlons.info>
Date: Sun, 10 Apr 2016 00:29:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: imlib2 integer overflow

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please assign a CVE ID for the following integer overflow issue in
imlib2:
<https://git.enlightenment.org/legacy/imlib2.git/commit/?id=143f299>

Debian bug report:
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=820206>

RedHat bug report:
<https://bugzilla.redhat.com/show_bug.cgi?id=1324774>

Cheers
Matthias
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXCYJWAAoJEDVYuxv9Aw7qI6EH/3WeMQrJQFAvCoOZxbn3vBD6
WMbfW0blNxl0pWcf3aUwiGgP6wFKRA9qk0FXuOCFckWD37Pcj8/nRZjsJHe+uPP1
nlOeBx54wIRL6I8lekHlbFk638RtXXt5iEptAlB96DzfkW0Fpjwdr+TOq5Dt/6yW
ZrsyM1P03ctDHCehkkckUbFruDInP/hzHepGky6Zrb8R30PsTASj3fyci4X9X4V5
J4RSKAh++a3SyyLD83H6N5GeckKKwEnXe5b1NqUe+YcCqu86pmM4PQIbgyR/Y0iI
PmldH5ztWgMhOEikis0N2QIgYDSyAb/6Yfu3krQW3Tt/6GBPk9J/WLlK5WbNvQk=
=M0bU
-----END PGP SIGNATURE-----
