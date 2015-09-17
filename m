X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["534" "Thursday" "17" "September" "2015" "09:54:59" "-0500" "Mark Felder" "feld@feld.me" "<1442501699.676512.386375017.1A1FC407@webmail.messagingengine.com>" "18" "Re: [oss-security] CVE Request: Use-after-free in optipng 0.6.4" nil nil nil "9" "2015091714:54:59" "[oss-security] CVE Request: Use-after-free in optipng 0.6.4" (number mark "        feld@feld.me Sep 17   18/534   " thread-indent "\"Re: [oss-security] CVE Request: Use-after-free in optipng 0.6.4\"\n") "<CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>" ("<CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27866 invoked by uid 550); 17 Sep 2015 14:55:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27843 invoked from network); 17 Sep 2015 14:55:12 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=/t2Ts3boqIPh5YaWWSmUG3zE6HE=; b=wvfYHg
	cw1fgvFF2M7l8B1OOVcePWYGUqUznVaPsXM3Jt6O0nwZIfeYar7grsd5UsZqm3EZ
	brcU21/p7lwe19E+VCe5NetBwcd3MKxruaukOxJu6SxPzKV11KPhcP7Ahhu8EHDA
	29iA7lV0WegLfzZhtZyD24JxNWaM469ZOS75E=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=/t2Ts3boqIPh5Ya
	WWSmUG3zE6HE=; b=SWDz7VfNQdmen68HDto0+LwQAHlZVZCwwMnemA9Kr0m2+YU
	pmfTBaWlo9CpsmklBf8OXPDCJ72+802jNGGuMatX2Xlc4PRAqjhuG8Dgf+LQO9Lo
	CU0X+jZI+LPAzhYk/XR81dLso7rALT1uqy+xBfFJ8ub1E4sIriFgD8ifj1ho=
Message-Id: <1442501699.676512.386375017.1A1FC407@webmail.messagingengine.com>
X-Sasl-Enc: +EIrEvo/IZHDvE3ZoVyXXSN8lhpRYW8k8mKVir2J5suG 1442501699
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-746d2121
In-Reply-To: <CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>
References: <CACn5sdQQeaNj1dwaDP7mgZq0EOx4esNoJwJ7VCicVFjdueWp7w@mail.gmail.com>
Date: Thu, 17 Sep 2015 09:54:59 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: Use-after-free in optipng 0.6.4
To: oss-security@lists.openwall.com



On Wed, Sep 16, 2015, at 06:11, Gustavo Grieco wrote:
> We found a use-after-free causing an invalid/double free in optipng
> 0.6.4.
> Upstream is working in fixing it but keep in mind that optipng 0.6.x is
> officially unsupported. A CVE will be useful since such version is
> included
> in distros like Debian and Ubuntu. Please find attached the test case to
> trigger it. The valgrind report is here:
> 

Is 0.6.5 affected? I would assume it is since you said upstream is
working on a patch...

-- 
  Mark Felder
  feld@feld.me
