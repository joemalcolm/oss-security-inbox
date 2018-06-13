X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1098" "Wednesday" "13" "June" "2018" "20:22:23" "+0200" "Marcus Brinkmann" "marcus.brinkmann@ruhr-uni-bochum.de" "<d51627cd-ceef-bdca-6f4f-52b2edf78d6d@ruhr-uni-bochum.de>" "27" "[oss-security] CVE-2018-12020, CVE-2018-12019 in GnuPG, Enigmails, GPGTools, python-gnupg" nil nil nil "6" "2018061318:22:23" "[oss-security] CVE-2018-12020, CVE-2018-12019 in GnuPG, Enigmails, GPGTools, python-gnupg" (number mark "U       marcus.brink Jun 13   27/1098  " thread-indent "\"[oss-security] CVE-2018-12020, CVE-2018-12019 in GnuPG, Enigmails, GPGTools, python-gnupg\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9478 invoked by uid 550); 13 Jun 2018 18:33:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23681 invoked from network); 13 Jun 2018 18:22:35 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ruhr-uni-bochum.de;
	s=mail-2017; t=1528914144;
	bh=HQ2AHLpfj748KdukiurY5T8b+ZfVPB1kcnuCLaqNIak=;
	h=To:From:Subject:Date:From;
	b=BfkzRC0PMFFs/pR9itWL75cb6zO11KOfrK4c3gOWlsBT6DVRb2+4XcDHalxg82EFs
	 jgPGuLIORIVRK8lQRhjc3+M9RknDHqrnx7djdfVZzawy4c3ePbZY56xIHOdjcJkV04
	 +ahSJ+Pz+aL+ZSmZwK8hR4PQOTVHM++xaRlOaZyc=
X-Envelope-Sender: <marcus.brinkmann@ruhr-uni-bochum.de>
X-RUB-Notes: Internal origin=134.147.42.227
To: oss-security@lists.openwall.com
From: Marcus Brinkmann <marcus.brinkmann@ruhr-uni-bochum.de>
Openpgp: preference=signencrypt
Message-ID: <d51627cd-ceef-bdca-6f4f-52b2edf78d6d@ruhr-uni-bochum.de>
Date: Wed, 13 Jun 2018 20:22:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.99.4 at mail1.mail.ruhr-uni-bochum.de
X-Virus-Status: Clean
Subject: [oss-security] CVE-2018-12020, CVE-2018-12019 in GnuPG, Enigmails, GPGTools,
 python-gnupg

I have published my reports:

CVE-2018-12020: The signature verification routine in Enigmail 2.0.6.1,
GPGTools 2018.2, and python-gnupg 0.4.2 parse the output of GnuPG 2.2.6
with a “--status-fd 2” option, which allows remote attackers to spoof
arbitrary signatures via the embedded “filename” parameter in OpenPGP
literal data packets, if the user has the verbose option set in their
gpg.conf file.

https://neopg.io/blog/gpg-signature-spoof/


CVE-2018-12019: The signature verification routine in Enigmail 2.0.6.1
interprets user ids as status/control messages and does not correctly
keep track of the status of multiple signatures, which allows remote
attackers to spoof arbitrary email signatures via public keys containing
crafted primary user ids.

https://neopg.io/blog/enigmail-signature-spoof/


It would be prudent for developers of GnuPG-based applications to check
for similar issues in their software. I did a lot of due diligence to
check critical infrastructure, but there were several "near misses" that
make me fear that there are still some affected products out there.


