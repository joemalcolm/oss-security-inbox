X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1150" "Monday" "6" "July" "2015" "07:46:51" "-0500" "Mark Felder" "feld@feld.me" "<1436186811.3646780.316255217.443EA95A@webmail.messagingengine.com>" "30" "Re: [oss-security] node.js out of band write" nil nil nil "7" "2015070612:46:51" "[oss-security] node.js out of band write" (number mark "        feld@feld.me Jul  6   30/1150  " thread-indent "\"Re: [oss-security] node.js out of band write\"\n") "<559A2F80.5030407@redhat.com>" ("<1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>" "<559A2F80.5030407@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30212 invoked by uid 550); 6 Jul 2015 12:47:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30189 invoked from network); 6 Jul 2015 12:47:03 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=sCFbcH0Ksh9KJTDH53gegHjonac=; b=J6AS6e
	DXnRIp+ffFjLlq54PLwWQwH+5pln1RGCeNs/lz7UhG+ePgfXNFSGQp1Z//cobCrl
	D6oPPSHdP+BrYVxpIBBstTOEUCJLA6OXmJVmq1q8ULLPSfx3ZylHxrHnZANo/29e
	tttTwkVZGiTDCzi8XaZMSL9RBCPcRpMaf4aMo=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=sCFbcH0Ksh9KJTD
	H53gegHjonac=; b=WFN3rRt8DdN24vPUvbl2DD++TfSjYqBc5luBEhKCV7eyHXe
	DmlMMPeIHOERHEP1N26nczTU2FQ6OWVhqnCUrvhHJaVWLFgGQR0G4avl6GxEgoA5
	9tgEDhyE9T0amb8+CaUnpuFVBvQjjXfQgQB4Op5Ph/xfUBfkK3pJimku/Ugc=
Message-Id: <1436186811.3646780.316255217.443EA95A@webmail.messagingengine.com>
X-Sasl-Enc: 8zYVYIZF8N/LR3bKNsjZ1ntsyzDAX62N/251h4DxO6b1 1436186811
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-eecef38c
In-Reply-To: <559A2F80.5030407@redhat.com>
References: <1436140297.2777045.315833937.576534B9@webmail.messagingengine.com>
 <559A2F80.5030407@redhat.com>
Cc: oss-security@lists.openwall.com
Date: Mon, 06 Jul 2015 07:46:51 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] node.js out of band write
To: Florian Weimer <fweimer@redhat.com>



On Mon, Jul 6, 2015, at 02:34, Florian Weimer wrote:
> On 07/06/2015 01:51 AM, Mark Felder wrote:
> > Node has resolved a security vulnerability in their most recent release
> > but do not appear to have requested a CVE ID.
> > 
> > http://blog.nodejs.org/2015/07/03/node-v0-12-6-stable/
> > 
> > Node v0.12.6 (Stable)
> > Sat, 04 Jul 2015 02:34:23 UTC - release
> > 
> > This release of Node.js fixes a bug that triggers an out-of-band write
> > in V8's utf-8 decoder. This bug impacts all Buffer to String
> > conversions. This is an important security update as this bug can be
> > used to cause a denial of service attack.
> 
> I have trouble reconciling this description with the fix in this commit:
> 
> <https://github.com/joyent/node/commit/78b0e30954111cfaba0edbeee85450d8cbc6fdf6>
> 
> Upstream v8 lacks this change.  Is it required in Node.js because
> Node.js pokes at v8 internals in unsupported ways?
> 

I'm not sure; I'm not very familiar with node. I became aware as it was
reported to the FreeBSD Ports Security team. I've also recently been
made aware that the same vulnerability exists in io.js

https://github.com/nodejs/io.js
