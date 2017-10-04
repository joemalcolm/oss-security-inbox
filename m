X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["515" "Wednesday" "4" "October" "2017" "11:28:38" "-0400" "Joel Esler" "joel.esler@me.com" "<9F893C48-015F-4A88-92F0-A75B731F3ABB@me.com>" "19" "Re: [oss-security] clamav: md5 collision based detection avoidance, Was: Out of bounds read and segfault in xar parser" nil nil nil "10" "2017100415:28:38" "[oss-security] clamav: md5 collision based detection avoidance, Was: Out of bounds read and segfault in xar parser" (number mark "U       joel.esler@m Oct  4   19/515   " thread-indent "\"Re: [oss-security] clamav: md5 collision based detection avoidance, Was: Out of bounds read and segfault in xar parser\"\n") "<071bacf8-a762-f4f1-39d8-f2e286413ea6@xiscosoft.es>" ("<20170929150922.15b800f8@pc1>" "<1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>" "<FBF3AE41-DB79-43A7-A4FB-806C3702EC7E@me.com>" "<071bacf8-a762-f4f1-39d8-f2e286413ea6@xiscosoft.es>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32460 invoked by uid 550); 4 Oct 2017 15:38:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24345 invoked from network); 4 Oct 2017 15:28:53 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=me.com; s=04042017;
	t=1507130921; bh=x4dSc6bADWv0R1Ir/1opHeYO3IohOIZ5+rRvjPTwsZI=;
	h=From:Content-type:MIME-version:Subject:Date:To:Message-id;
	b=MnI0vwQO8PqRgjn4FeVBRDcREBQ6yE8jz60Oic6mFbQjTNbuwUsMIO0VcqCm1tycI
 oCcirxE1iMPC/QOv/LsxTFXeWzzp5sTcJdvQbgjtue5/ihbettItF8Cwx9DX8R/v5I
 XpEUXwWPU5qVdmlMiqwPQuwysnJdcetKOLhuEGHXAuHS/0OyBCewFdwcvShxMBdWVL
 4CdBg6d3HDCM/oyyPhseB/Cuk58EaO0e3QCSq5Xnkl1LNhde0jEh4PUdea1wp3r5zv
 qdOAe3LMKUV/7lPqWjupzj55N612jbjjtnvDHsfWQ+y2Bn8mOYcKztx8Sn1CuW0xoR
 u7dyQew3ZzQgg==
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,,
 definitions=2017-10-04_07:,, signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 clxscore=1015 suspectscore=1 malwarescore=0 phishscore=0 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1707230000 definitions=main-1710040217
From: Joel Esler <joel.esler@me.com>
Content-type: multipart/alternative;
 boundary="Apple-Mail=_0657EEB4-A0CD-4DDF-8EAB-B63AE76561B3"
MIME-version: 1.0 (Mac OS X Mail 11.0 \(3445.1.6\))
Date: Wed, 04 Oct 2017 11:28:38 -0400
References: <20170929150922.15b800f8@pc1>
 <1e5a78ac-a93f-f4cf-b8a2-25fde5189a63@ehuk.net>
 <FBF3AE41-DB79-43A7-A4FB-806C3702EC7E@me.com>
 <071bacf8-a762-f4f1-39d8-f2e286413ea6@xiscosoft.es>
To: oss-security@lists.openwall.com
In-reply-to: <071bacf8-a762-f4f1-39d8-f2e286413ea6@xiscosoft.es>
Message-id: <9F893C48-015F-4A88-92F0-A75B731F3ABB@me.com>
X-Mailer: Apple Mail (2.3445.1.6)
Subject: Re: [oss-security] clamav: md5 collision based detection avoidance,
 Was: Out of bounds read and segfault in xar parser

--Apple-Mail=_0657EEB4-A0CD-4DDF-8EAB-B63AE76561B3
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii

> On Oct 3, 2017, at 2:54 PM, klondike <klondike@xiscosoft.es> wrote:
> 
> There is also another fun issue with the way caching works (which is
> enabled by default) that allows avoiding detection by ClamAV.

I will ensure this is prioritized for a future release.


--
Joel Esler
Manager
Talos Group
http://www.talosintelligence.com
--Apple-Mail=_0657EEB4-A0CD-4DDF-8EAB-B63AE76561B3--
