X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["357" "Thursday" "16" "July" "2015" "11:36:13" "-0500" "Mark Felder" "feld@feld.me" "<1437064573.2531367.325509785.6E701247@webmail.messagingengine.com>" "16" "Re: [oss-security] CVE Request: use after free in PHP 5.6 and 7 (possibly others)" nil nil nil "7" "2015071616:36:13" "[oss-security] CVE Request: use after free in PHP 5.6 and 7 (possibly others)" (number mark "        feld@feld.me Jul 16   16/357   " thread-indent "\"Re: [oss-security] CVE Request: use after free in PHP 5.6 and 7 (possibly others)\"\n") "<CANMVOuxUyP_6479fSMMQsWbK1iSywX8OzMC9Px1+wa+3k9jjZg@mail.gmail.com>" ("<CANMVOuxUyP_6479fSMMQsWbK1iSywX8OzMC9Px1+wa+3k9jjZg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3286 invoked by uid 550); 16 Jul 2015 16:36:28 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3263 invoked from network); 16 Jul 2015 16:36:27 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=o3GCubm8rAfPkUyNi/Y6c+xnpso=; b=a2waeG
	lZgcUMuAlU6PlGZPcxA0DzT5Ab7pPDxzh97JPaiT4JL8BeAfE5SLI0UH9g2Qw9BM
	pexumBECJYYhJtUtZsTHUY4zS5kttOTGPh+eYsN7uwdLjuOuk/CkAzRqlmFdu+7m
	bP0vr6bwFDVQ26pkoq5qsdNODirjXm31IAGR0=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=o3GCubm8rAfPkUy
	Ni/Y6c+xnpso=; b=FHGAnvXK7HIGTU2/FF6zMtWLj2HodtEiJl6Hr6kOnPWnBb6
	WiIGGJTG20yCMu5Xpjdh6hi1k7ArzVxa28WKH/O/9u6yhLBN7eM3JnLTjcg4/+fa
	uaf46jACylc6XbEURqjC9QiFOj83iU9dwY9io7hVBSS2H4uwhO3mTjOrwcFU=
Message-Id: <1437064573.2531367.325509785.6E701247@webmail.messagingengine.com>
X-Sasl-Enc: VYfCdzLjDlJw/2GS/Q9WaWHr6WhNAruXcm7sjUjcvFsJ 1437064573
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-63a5d8c6
In-Reply-To: <CANMVOuxUyP_6479fSMMQsWbK1iSywX8OzMC9Px1+wa+3k9jjZg@mail.gmail.com>
References: <CANMVOuxUyP_6479fSMMQsWbK1iSywX8OzMC9Px1+wa+3k9jjZg@mail.gmail.com>
Date: Thu, 16 Jul 2015 11:36:13 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: use after free in PHP 5.6 and 7
 (possibly others)
To: oss-security@lists.openwall.com



On Thu, Jul 16, 2015, at 01:24, Brian Carpenter wrote:
> Bug Report:
> https://bugs.php.net/bug.php?id=70083
> 

> -Type: Security 
> +Type: Bug

Interesting that they removed the Security label

> PHP 5.5 and below are in sec-fixes only mode. I fixed the bug in PHP 5.6 though;

They seem to think it's not a security issue and won't be patching < 5.6
?
