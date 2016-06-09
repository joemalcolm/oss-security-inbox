X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3841" "Thursday" "9" "June" "2016" "13:16:09" "+0200" "Andreas Stieger" "astieger@suse.com" "<d4e09ddf-9ef2-1c39-61a4-33f58bd7a25e@suse.com>" "109" "Re: [oss-security] CVE Request: wireshark releases" nil nil nil "6" "2016060911:16:09" "[oss-security] CVE Request: wireshark releases" (number mark "U       astieger@sus Jun  9  109/3841  " thread-indent "\"Re: [oss-security] CVE Request: wireshark releases\"\n") "<20160608072829.GA3711@suse.de>" ("<20160608072829.GA3711@suse.de>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 17574 invoked by uid 550); 9 Jun 2016 11:16:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 17547 invoked from network); 9 Jun 2016 11:16:45 -0000
To: oss-security@lists.openwall.com
References: <20160608072829.GA3711@suse.de>
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Cc: cve-assign@mitre.org
Message-ID: <d4e09ddf-9ef2-1c39-61a4-33f58bd7a25e@suse.com>
Date: Thu, 9 Jun 2016 13:16:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20160608072829.GA3711@suse.de>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] CVE Request: wireshark releases

Hello,

On 06/08/2016 09:28 AM, Marcus Meissner wrote:
> Please assign CVEs to the current wireshark releases (if not done so).
>
> Wireshark 2.0.4
> https://www.wireshark.org/lists/wireshark-announce/201606/msg00000.html
>
> Wireshark 1.12.12
> https://www.wireshark.org/lists/wireshark-announce/201606/msg00001.html

Specifically:


https://www.wireshark.org/security/wnpa-sec-2016-29
<https://www.wireshark.org/security/wnpa-sec-2016-29.html>
SPOOLS infinite loop. Fixed in 2.0.4, 1.12.12.
https://github.com/wireshark/wireshark/commit/b4d16b4495b732888e12baf5b8a7e=
9bf2665e22b


https://www.wireshark.org/security/wnpa-sec-2016-30
<https://www.wireshark.org/security/wnpa-sec-2016-30.html>
IEEE 802.11 dissector crash. Fixed in 2.0.4, 1.12.12.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D11585
https://github.com/wireshark/wireshark/commit/9b0b20b8d5f8c9f7839d58ff6c590=
0f7e19283b4


https://www.wireshark.org/security/wnpa-sec-2016-31
<https://www.wireshark.org/security/wnpa-sec-2016-31.html>
IEEE 802.11 dissector crash, different from wpna-sec-2016-30. Fixed in
2.0.4.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12175
https://github.com/wireshark/wireshark/commit/b6d838eebf4456192360654092e55=
87c5207f185


https://www.wireshark.org/security/wnpa-sec-2016-32
<https://www.wireshark.org/security/wnpa-sec-2016-32.html>
UMTS FP crash. Fixed in 2.0.4, 1.12.12.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12191
https://github.com/wireshark/wireshark/commit/7d7190695ce2ff269fdffb04e8713=
9995cde21f4


https://www.wireshark.org/security/wnpa-sec-2016-33
<https://www.wireshark.org/security/wnpa-sec-2016-33.html>
USB dissector crash. Fixed in 2.0.4, 1.12.12.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12356
https://github.com/wireshark/wireshark/commit/2cb5985bf47bdc8bea78d28483ed2=
24abdd33dc6


https://www.wireshark.org/security/wnpa-sec-2016-34
<https://www.wireshark.org/security/wnpa-sec-2016-34.html>
Toshiba file parser crash. Fixed in 2.0.4, 1.12.12.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12394
https://github.com/wireshark/wireshark/commit/3270dfac43da861c714df76513456=
b46765ff47f
https://github.com/wireshark/wireshark/commit/5efb45231671baa2db2011d8f67f9=
d6e72bc455b


https://www.wireshark.org/security/wnpa-sec-2016-35
<https://www.wireshark.org/security/wnpa-sec-2016-35.html>
CoSine file parser crash. Fixed in 2.0.4, 1.12.12.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12395
https://github.com/wireshark/wireshark/commit/a66628e425db725df1ac52a3c573a=
03357060ddd
https://github.com/wireshark/wireshark/commit/f5ec0afb766f19519ea9623152cca=
3bbe2229500


https://www.wireshark.org/security/wnpa-sec-2016-36
<https://www.wireshark.org/security/wnpa-sec-2016-36.html>
NetScreen file parser crash. Fixed in 2.0.4, 1.12.12.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12396
https://github.com/wireshark/wireshark/commit/11edc83b98a61e890d7bb01855389=
d40e984ea82
https://github.com/wireshark/wireshark/commit/6a140eca7b78b230f1f90a739a322=
57476513c78


https://www.wireshark.org/security/wnpa-sec-2016-37
<https://www.wireshark.org/security/wnpa-sec-2016-37.html>
Ethernet dissector crash. Fixed in 2.0.4.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12440
https://github.com/wireshark/wireshark/commit/2c13e97d656c1c0ac4d76eb9d3076=
64aae0e0cf7


https://www.wireshark.org/security/wnpa-sec-2016-38
<https://www.wireshark.org/security/wnpa-sec-2016-38.html>
WBXML infinite loop. Fixed in 1.12.12.
https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3D12408
https://github.com/wireshark/wireshark/commit/b8e0d416898bb975a02c1b5588334=
2edc5b4c9c0


Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=FCrnberg)


