X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["203" "Wednesday" "20" "January" "2016" "11:32:39" "-0600" "Mark Felder" "feld@feld.me" "<1453311159.1817542.497713370.3C97F695@webmail.messagingengine.com>" "8" "[oss-security] imlib2 may need some CVEs assigned" "^Date:" nil nil "1" "2016012017:32:39" "[oss-security] imlib2 may need some CVEs assigned" (number mark "        feld@feld.me Jan 20    8/203   " thread-indent "\"[oss-security] imlib2 may need some CVEs assigned\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13846 invoked by uid 550); 20 Jan 2016 17:32:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13792 invoked from network); 20 Jan 2016 17:32:51 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=nVi
	kXkwkPm49sX3EfSe0PBHGoVQ=; b=x2Pqc+9MOe/+DYGxewSkB2Ikmzqg0ktfgk2
	ADsLUbqZbKVUHhCl7dvrSOW+uqHtzrRIroNkx0klTN4duddif60PywY80BnX9l94
	EYWeTfOYbtaFUwDKts97l2OUNK5HDoSaF+GU1uEKWaC2WPk5YTBGccMW9otdyW3F
	94lRW4a0=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=nVikXkwkPm49sX3EfSe0PBHGoVQ=; b=DIA4T
	X8bS8KwLonbO9HGxgPl/tRfVjWg3lYrn2umGPUSgBeXRgq/nAWx7Qn5fWazr9k0n
	g9Top1DtpzxYUdxlb2/liqpaglV+jVfSWFJ2zg1BZPX301ot1dkYLVuaf+h0y9qA
	DhLkAKf/FoY0riYRtjj53zmuMA/C+32caDhHOA=
Message-Id: <1453311159.1817542.497713370.3C97F695@webmail.messagingengine.com>
X-Sasl-Enc: fUM4ei7vLk6B0HSM8tAPuKGE7T4/KEn211GbcSRl6A5F 1453311159
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-6cda141f
Date: Wed, 20 Jan 2016 11:32:39 -0600
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] imlib2 may need some CVEs assigned
To: oss-security@lists.openwall.com

imlib2 1.4.7's changelog seems to indicate fixes for issues that should
probably have some CVEs assigned

https://git.enlightenment.org/legacy/imlib2.git/tree/ChangeLog

-- 
  Mark Felder
  feld@feld.me
