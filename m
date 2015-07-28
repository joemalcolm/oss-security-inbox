X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1106" "Tuesday" "28" "July" "2015" "10:40:37" "+0200" "Benjamin Randazzo" "benjamin@randazzo.fr" "<F696688A-7DBF-4218-9FDB-C73194148E93@randazzo.fr>" "29" "[oss-security] CVE request: Linux kernel - information leak in md driver" nil nil nil "7" "2015072808:40:37" "[oss-security] CVE request: Linux kernel - information leak in md driver" (number mark "        benjamin@ran Jul 28   29/1106  " thread-indent "\"[oss-security] CVE request: Linux kernel - information leak in md driver\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3846 invoked by uid 550); 28 Jul 2015 10:39:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 16176 invoked from network); 28 Jul 2015 08:40:51 -0000
Content-Type: multipart/alternative; boundary="Apple-Mail=_11442596-748D-402D-8F98-44A163227B5C"
Message-Id: <F696688A-7DBF-4218-9FDB-C73194148E93@randazzo.fr>
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2102\))
X-Mailer: Apple Mail (2.2102)
X-Provags-ID:  V03:K0:baeAKFvSkBmR8TXotJPFzBzJzRcBNvodEhJmM4+0LlprTwfjLkE
 N1zWfI5ejw4ql0lZlUwJF1uuouDAWH79XwD/2SjTj9H7ilHPxGL5zbkDWYEFTeBMjv7Sdlb
 1YdezeD1ztF72bGOqA536gwMT1fpU4cJ5L4wbdoMujS0uTJlmvqjTpjj1iBRe7im5rspiXX
 h77bOeP7CVR+RqRtD4jsQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:eG/dkuyX+2c=:B+Y1aUc/m5xSAC59n117Fn
 3D7FmbXvZO8YrxOcHnMbDJS/ElyfDrL9nMVAryj6VNvVQfMdmSfpqBoJ7r9IZZtzyAWJ3ljJe
 nrLNqvy+0XpFYL1LFwxfzWXlMaGKpswBqHQ87/eMHwOn8ewBhM1ggEllaJKkuMeFdLcmrDyC+
 sHTncYkr4+FiQnbUoAxTVIOW4YhrXnaTgZBaCG28CkK1o+/POn5YVaXaN0NynM51SmRWt4xr5
 SxeAGmQtjZMU0L4J5p4lh9i5GP0MJPZbMTXUuKnQgmeuyUbOyI0FfBVd5uYktVDaFAt7sjD2z
 Snq1SBcot5GFOhR45pQkCf6J0kpj1qXBDJFbPXxo4/DawkWzlouMGDxl6NOjXPPJiOLzTmDEW
 Qgb3nfo9n4HtwAq8ZFVRgxGTVR8BGwlDAm8genItx5xqrSjLhzuXscNUzltejECTibCjBD8A9
 9BJ+VOmtFfYbikKNPKSUjHoz8rBY0KNekuiTDY2rWyfvlAZ87sWsTf4uHNFBLMxLb9hPYSKxL
 5WrXgArKOM7IZLOb/08g1TNLnRItUzvGrdPGPrYKvuGsSlImkf43jWa9RRc1kvcBkhCcqUw3H
 xiP6OxMD4xMhvVRWxOcHE66knSOxfG155Ri66oDxatF+lFDYZnLM8K01O5QJzA0Tef4EPUDOj
 ufMd8jpE5zAyHufplmHd92RYorSc3vP9G3ygUju9e+67w+Q==
Date: Tue, 28 Jul 2015 10:40:37 +0200
From: Benjamin Randazzo <benjamin@randazzo.fr>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: Linux kernel - information leak in md driver
To: oss-security@lists.openwall.com

--Apple-Mail=_11442596-748D-402D-8F98-44A163227B5C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello,

In the md driver of the Linux kernel it=E2=80=99s possible to request a bit=
map file for a device, but when bitmap is disabled only the first byte of t=
he buffer is initialized to zero, and then it is copied in user space. This=
 results in an information leak.

The patch for this issue was applied and committed in linux-next :
http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/commit/?id=
=3D77ba0569d4c8389c0a2162ab0c7c16a6f3b199e4 <http://git.kernel.org/cgit/lin=
ux/kernel/git/next/linux-next.git/commit/?id=3D77ba0569d4c8389c0a2162ab0c7c=
16a6f3b199e4>
(+ merged: http://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git/=
commit/?id=3D348470064e7c42cb08f1c9d6e9f0a7d2865b3b79 <http://git.kernel.or=
g/cgit/linux/kernel/git/next/linux-next.git/commit/?id=3D348470064e7c42cb08=
f1c9d6e9f0a7d2865b3b79>)

Could you please generate a CVE id for this?

Thanks.

Benjamin Randazzo=

--Apple-Mail=_11442596-748D-402D-8F98-44A163227B5C--
