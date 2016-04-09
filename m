X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["797" "Sunday" "10" "April" "2016" "01:13:52" "+0200" "Matthias Geerdsen" "matthias@vorlons.info" "<57098CB0.1000806@vorlons.info>" "27" "[oss-security] CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()" nil nil nil "4" "2016040923:13:52" "[oss-security] CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()" (number mark "U       matthias@vor Apr 10   27/797   " thread-indent "\"[oss-security] CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14178 invoked by uid 550); 9 Apr 2016 23:14:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14158 invoked from network); 9 Apr 2016 23:14:05 -0000
X-Virus-Scanned: Debian amavisd-new at mail.vorlons.info
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vorlons.info;
	s=mail; t=1460243633;
	bh=VgLC1ejS9Y9VByZNQbYWCczwidVRpX+/GTDZZhzSkh4=;
	h=To:From:Subject:Date:From;
	b=h9k0/qkcsjEkYxBzNRabyum8AZAiMTFcbcR8nlmHM7D5mPP3OddHnlzwAvaFzHC/G
	 XwY7TBKxhR2DBbrUNQN7fxs0bglcPvk2hCz+3Bi44cF0cooXWZ19rTdet7kW32/efM
	 5Y4nCdinQTBSxH4f2C43iVWQgE5d79JyBMwupZKA=
To: oss-security@lists.openwall.com
From: Matthias Geerdsen <matthias@vorlons.info>
Message-ID: <57098CB0.1000806@vorlons.info>
Date: Sun, 10 Apr 2016 01:13:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Icedove/38.7.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Subject: [oss-security] CVE request: imlib2 - off-by-one OOB read in __imlib_MergeUpdate()

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

please provide a CVE ID for this OOB read im imlib2.

upstream commit:
<https://git.enlightenment.org/legacy/imlib2.git/commit/?id=ce94edca1ccf
be314cb7cd9453433fad404ec7ef>

Debian bug report:
<https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=819818>

Cheers
Matthias
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJXCYynAAoJEDVYuxv9Aw7qwBMH/0nS/UoDHHfGflwqdHXvlEJv
3thOfAYNmojCrrSUkqr8dKbHHltcDShTfmyfQVf8/S+l+aWe7z+K/d9osSI9Vkhw
VWD44KaDfCTsjYwGxFpxPGneeBe2ZqX9WFJsaxofJUByKJzIILtf0y7m010/EZLP
Rep3nO9W7xu7GV/FUjFopzqedDLOTYqDcvrmgsPzSKoycDGXmNB3Rltm1xCJEWka
2yuGin4dB7YcQwAkOmjTZvsRTNg0sFocVWQoyfpQIpkHTJHRXRviUElSuP3dPnXm
Xx2E8n6eemAGqgSKXtvcmIk78FYLEBxk8+w/ioTJH1jV4s2rrkQgnRFuH0YyiPo=
=/orZ
-----END PGP SIGNATURE-----
