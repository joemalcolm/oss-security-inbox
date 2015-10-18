X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1199" "Sunday" "18" "October" "2015" "12:21:59" "-0700" "robert@robert.io" "robert@robert.io" "<1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>" "27" "Re: [oss-security] CVE request for sqlalchemy-utils" nil nil nil "10" "2015101819:21:59" "[oss-security] CVE request for sqlalchemy-utils" (number mark "U       robert@rober Oct 18   27/1199  " thread-indent "\"Re: [oss-security] CVE request for sqlalchemy-utils\"\n") "<1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>" ("<1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29917 invoked by uid 550); 18 Oct 2015 19:22:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 29886 invoked from network); 18 Oct 2015 19:22:14 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=robert.io; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=SocKaVUTG3UamzrlqiUf8vtt5dM=; b=TEZELu
	Z6FkS5Kj/2jVjXsXtKghvdO6HYY6RDkSQ1HzFbu8AXUoWvSZvxJJah2TKLohj9lP
	NbfmO3qVvAKJAjEduTbOS8Mdk6sLn8M6zGt0LeVhU76Ns+h+3L7jMZKJoY7Z7ND3
	AuCgJB7zCaBMOSJST12D34/iSF/c0OqLBHmjs=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=SocKaVUTG3Uamzr
	lqiUf8vtt5dM=; b=WQcj/nrH7siEQy2EBlBHz7UHuEPsMWiSX9WnjM8T4D1VG5/
	imvkiMAZ9uVvxgtXB8hf1xZnc8B0YwCtTalVS0y2oWuHwW3Q1R1SBC43IlqgbGea
	FENpLPzd3LW/Ly8IGOEB1hSjTcMQKCMmpZahdgCi9ErJsBvxfMEkKt7vg/Hc=
Message-Id: <1445196119.3560107.413423481.7C9B0859@webmail.messagingengine.com>
X-Sasl-Enc: Thrt6Z6J8RVITUo+OQGlgFdrOo2ODogUJXG6zWDDK3/+ 1445196119
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-25d3ec43
In-Reply-To: <1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>
References: <1444165809.2991126.403145441.2CAE05C4@webmail.messagingengine.com>
Cc: cve-assign@mitre.org
Date: Sun, 18 Oct 2015 12:21:59 -0700
From: robert@robert.io
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request for sqlalchemy-utils
To: oss-security@lists.openwall.com

I've been told I should check-in after a couple of weeks without a
response. Is there any more information I can provide to help you make a
decision?

>From the discussion on the bug tracker, this was a design decision, but
at least some users of the library weren't aware of it. As far as I know
it wasn't / isn't documented. I noticed the issue when reviewing the
code for Netflix's Lemur tool and they were not previously aware of the
issue: https://github.com/Netflix/lemur/issues/117
 
- Robert

On Tue, Oct 6, 2015, at 02:10 PM, robert@robert.io wrote:
> Description: I noticed that the sqlalchemy-utils package's EncryptedType
> does not use a random IV when encrypting with AES in CBC mode. It
> generates a SHA256 hash of the user's key and uses the first 16 bytes of
> that hash as the IV (and the full hash as the encryption key). The
> result is that for a given key, the IV will always be the same.
> 
> Reported here: https://github.com/kvesteri/sqlalchemy-utils/issues/166
> Version: Current. I'm not sure what the version history of this package
> looks like, though.
> Reporter: Robert Picard
> 
> Please assign a CVE if you feel it would be appropriate for this bug.
> 
> - Robert
