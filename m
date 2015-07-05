X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["482" "Sunday" "5" "July" "2015" "18:51:37" "-0500" "Mark Felder" "feld@feld.me" "<1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>" "13" "[oss-security] node.js out of band write" nil nil nil "7" "2015070523:51:37" "[oss-security] node.js out of band write" (number mark "        feld@feld.me Jul  5   13/482   " thread-indent "\"[oss-security] node.js out of band write\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7779 invoked by uid 550); 5 Jul 2015 23:52:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7644 invoked from network); 5 Jul 2015 23:51:51 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=/KV
	Bi2oVH5yHYPLPDsMVaeINclo=; b=HFqcvJWDlAnddS3A+S3FB1P0QWFyZ6lMWzt
	vuh3CnxhqyoExXfUaFedbB4gVVA9YXtI5IvG+AIwvF8Igitpt1g7PNKIkakA4DIO
	laUlaW8FBaqrOOPwtpJTQH7YJ1l6qxVVVZACGxZxOavJIu2zaP0SfTa1ObNqlVr7
	o+Ln4RkA=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=/KVBi2oVH5yHYPLPDsMVaeINclo=; b=ox3M6
	9yWpsCr8rK9M3bRtz4vH6ND36P7F2MxjaqP3O42UkmlGE9fmsupzwrAEFj6rCPwf
	rPcZ8UAk6f6RiQ4VtMbn5tEl1fHL3zP+2FpDTD/hRPse6TZmTvGnqO5v2M6nxW34
	uRlkq5O2zdHriyrOLMNDKFZBNzL0qfzFO9lSTk=
Message-Id: <1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>
X-Sasl-Enc: sCjPBl5MXeFypuWKsOaiyCoxSIjmME7vpn39AFg7B3W5 1436140297
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-eecef38c
Date: Sun, 05 Jul 2015 18:51:37 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] node.js out of band write
To: oss-security@lists.openwall.com

Node has resolved a security vulnerability in their most recent release
but do not appear to have requested a CVE ID.

http://blog.nodejs.org/2015/07/03/node-v0-12-6-stable/

Node v0.12.6 (Stable)
Sat, 04 Jul 2015 02:34:23 UTC - release

This release of Node.js fixes a bug that triggers an out-of-band write
in V8's utf-8 decoder. This bug impacts all Buffer to String
conversions. This is an important security update as this bug can be
used to cause a denial of service attack.

