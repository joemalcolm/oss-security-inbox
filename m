X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["612" "Tuesday" "6" "October" "2015" "14:10:09" "-0700" "robert@robert.io" "robert@robert.io" "<1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>" "14" "[oss-security] CVE request for sqlalchemy-utils" nil nil nil "10" "2015100621:10:09" "[oss-security] CVE request for sqlalchemy-utils" (number mark "        robert@rober Oct  6   14/612   " thread-indent "\"[oss-security] CVE request for sqlalchemy-utils\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21651 invoked by uid 550); 6 Oct 2015 21:56:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32358 invoked from network); 6 Oct 2015 21:10:20 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=robert.io; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=fYs
	YpprPINiG1oroze8LDKfBWdI=; b=GyJ1+fMJFQK/0fiPqTOfoJfWN0213YhTzqj
	oIkcVVRIBm4TbLBuc9JlaSXDl0TRbkY50i7PLrqORxc8p5AnzjJjdO6A/AHMeI7Y
	tGnXFUGOF0R3L4YZTwZj+r39+HkTWjugSRDjrX+y0DizA+wzbrY7MKOPf4gS7MoC
	0EWo3tbc=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=fYsYpprPINiG1oroze8LDKfBWdI=; b=ghBCA
	cer+wzuNnJ2tMqtJIzzi0R9U+x0Gz55dlw4oLNZFbxh3b1ztdqNQMKotq8ZbZRAW
	xlkZqsv/igp16N/bvYZ72cOawzuhKdvyHpBd3ebjGAXzo0g4jeiG829hVHYvOLQ6
	q9GtPbcqPo7hrPZMgHBpDHYD9Gpp6pT5mTKbyE=
Message-Id: <1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>
X-Sasl-Enc: WBvKuLhNvvFGK/zepxgHEGuFwNMRsWcApqSF8PdyRUzD 1444165809
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-b54601fa
Date: Tue, 06 Oct 2015 14:10:09 -0700
From: robert@robert.io
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request for sqlalchemy-utils
To: oss-security@lists.openwall.com

Description: I noticed that the sqlalchemy-utils package's EncryptedType
does not use a random IV when encrypting with AES in CBC mode. It
generates a SHA256 hash of the user's key and uses the first 16 bytes of
that hash as the IV (and the full hash as the encryption key). The
result is that for a given key, the IV will always be the same.

Reported here: https://github.com/kvesteri/sqlalchemy-utils/issues/166
Version: Current. I'm not sure what the version history of this package
looks like, though.
Reporter: Robert Picard

Please assign a CVE if you feel it would be appropriate for this bug.

- Robert
