X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1532" "Wednesday" "2" "November" "2016" "16:58:53" "-0700" "Cedric Staub" "css@css.bio" "<1478131133.3496639.775671145.5782B090@webmail.messagingengine.com>" "51" "[oss-security] CVE request: multiple issues in go-jose package" nil nil nil "11" "2016110223:58:53" "[oss-security] CVE request: multiple issues in go-jose package" (number mark "U       css@css.bio  Nov  2   51/1532  " thread-indent "\"[oss-security] CVE request: multiple issues in go-jose package\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 30377 invoked by uid 550); 3 Nov 2016 00:04:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28233 invoked from network); 2 Nov 2016 23:59:05 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=css.bio; h=
	x-me-sender:message-id:from:to:mime-version
	:content-transfer-encoding:content-type:date:subject; s=mesmtp;
	 bh=RPSmN6Y44EQfnCUSo/krFyXd2bk=; b=ikzzP8oCAjDR2w2/PfTo0yh3dRFC
	L2LR3hS8ulWRwe+466aHx5gqesl+lk1FgbtfpraXkUqB8rEGJ8dJxong4ooslZ/z
	j8yFpzxdSECn+mnPln8/OgQ6JsGTOQ9mCVsqC751f7nSbgBmeKMOg/w43C4RacrJ
	seCqNXMp+QKeDpk=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=x-me-sender:message-id:from:to
	:mime-version:content-transfer-encoding:content-type:date
	:subject; s=smtpout; bh=RPSmN6Y44EQfnCUSo/krFyXd2bk=; b=MmtQUaQI
	zmy43Yz8BxHFaAA3LLBsIUKMEHHpIJixT/qqGG76Am4kePinQ6XEiDJX+jDdcpbM
	0Lz2PYFhxJBGYJKdKobrLOhcbTcxpEmi0u98D9kO4S3fuXJ27Pmem8VRJMzM4yEL
	7usHzqhi81JsXyfLTXYo/B5ZBOheeO0thtc=
X-ME-Sender: <xms:vX0aWH4k6WitEO299dH3BOX-FL9CgbscmkTIWq8JttU-f_MQS7ERCA>
Message-Id: <1478131133.3496639.775671145.5782B090@webmail.messagingengine.com>
From: Cedric Staub <css@css.bio>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative; boundary="_----------=_147813113334966391";
 charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-037c6db9
Date: Wed, 02 Nov 2016 16:58:53 -0700
Subject: [oss-security] CVE request: multiple issues in go-jose package

--_----------=_147813113334966391
Content-Transfer-Encoding: 7bit
Content-Type: text/plain

Hello,

I'd like to request CVE numbers for three issues in go-jose
(https://github.com/square/go-jose):


1. Invalid curve attack for ECDH-ES algorithm

When deriving a shared key using ECDH-ES for an encrypted message, go-
jose neglected to check that the received public key on a message is on
the same curve as the static private key of the receiver, thus making it
vulnerable to an invalid curve attack.

Upstream patch:
https://github.com/square/go-jose/commit/c7581939a3656bb65e89d64da0a52364a33d2507


2. Exploiting multiple signatures

The go-jose library supports messages with multiple signatures. However,
when validating a signed message the API did not indicate which
signature was valid, which could potentially lead to confusion. For
example, users of the library might mistakenly read protected header
values from an attached signature that was different from the one
originally validated.

Upstream patch:
https://github.com/square/go-jose/commit/2c5656adca9909843c4ff50acf1d2cf8f32da7e6


3. CBC-HMAC integer overflow on 32-bit architectures

An integer overflow could lead to authentication bypass for CBC-HMAC
encrypted ciphertexts on 32-bit architectures.

Upstream patch:
https://github.com/square/go-jose/commit/789a4c4bd4c118f7564954f441b29c153ccd6a96


All of the above issues were reported by Quan Nguyen from Google's
Information Security Engineering Team.
 
Thanks,
Cedric

--_----------=_147813113334966391--

