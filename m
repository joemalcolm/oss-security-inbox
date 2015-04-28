X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["697" "Tuesday" "28" "April" "2015" "09:15:29" "+0200" "J. M. Bogaard" "martijn@bogaard.eu" "<3D99FF28-9D4E-415F-BAB6-8F55FBC3CFDB@bogaard.eu>" "20" "[oss-security] CVE request libaxl <= 0.6.9" nil nil nil "4" "2015042807:15:29" "[oss-security] CVE request libaxl <= 0.6.9" (number mark "        martijn@boga Apr 28   20/697   " thread-indent "\"[oss-security] CVE request libaxl <= 0.6.9\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9767 invoked by uid 550); 28 Apr 2015 07:48:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20388 invoked from network); 28 Apr 2015 07:15:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable
Message-Id: <3D99FF28-9D4E-415F-BAB6-8F55FBC3CFDB@bogaard.eu>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Date: Tue, 28 Apr 2015 09:15:29 +0200
From: "J. M. Bogaard" <martijn@bogaard.eu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request libaxl <= 0.6.9
To: oss-security@lists.openwall.com

Hi,

I would like to request a CVE for an issue I have found some time ago. I=92=
m coordinating this together with the developers of libaxl (which will rele=
ase a fix later today).

Because of a bug in the memory allocator of libaxl can the parsing of a spe=
cially crafted xml document result in a heap overflow.

There is at least 1 known case where an application uses libaxl to parse in=
coming user supplied xml data, unauthenticated and over the network. In the=
 best situation this results in DoS by memory corruption, but RCE is for a =
(skilled) attacker most likely within range.

I hope this is all the information you need, as this is my first CVE reques=
t ;-)

Regards,

Martijn=
