X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["353" "Thursday" "17" "September" "2015" "11:41:44" "-0500" "Mark Felder" "feld@feld.me" "<1442508104.707732.386478233.2DF9FB74@webmail.messagingengine.com>" "16" "Re: [oss-security] Heap overflow and DoS in unzip 6.0" nil nil nil "9" "2015091716:41:44" "[oss-security] Heap overflow and DoS in unzip 6.0" (number mark "        feld@feld.me Sep 17   16/353   " thread-indent "\"Re: [oss-security] Heap overflow and DoS in unzip 6.0\"\n") "<20150915183842.6e72c05b@pc1>" ("<CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>" "<20150915180357.7a0097a4@redhat.com>" "<CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>" "<20150915183842.6e72c05b@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15436 invoked by uid 550); 17 Sep 2015 16:41:57 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15411 invoked from network); 17 Sep 2015 16:41:56 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=7mxJDq+l5RU0FNOLtb7188q6AqY=; b=I+OrKP
	tTQ82OxM+gk/fNNytYAp1eQz/TRvSM8oaxFUBHpYknJfaFAkoZIiY2rfEob/64MF
	DNX6m6yD1R9iUK/venLeegJlDUYaYgxcZedeT9LaFgYtu46aKUawmJDq3HJkEzik
	HFhQMkEABKeR+CrvqkCrSB5n+G6Jxvz4edER8=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=7mxJDq+l5RU0FNO
	Ltb7188q6AqY=; b=GN6sCtxia+uYm9m7COdcUPFpGrq96TSDqpGsSUEjVoyI2Rt
	4Tabr2TLkShKf641CsT5Xqa9xa8M92ez6jMdgA+sTbJxrgq7nP45Rzi5+GFjJMe/
	Z59ZluB+N+SrW28FXf/fV6T2OabQOg6HvaMJf8xFeKinkEiBzG7dF2kRD7fY=
Message-Id: <1442508104.707732.386478233.2DF9FB74@webmail.messagingengine.com>
X-Sasl-Enc: NfNWaITLqEq/ytbVZqEK18QA4vNe8kC+27g4L0MHhKzo 1442508104
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-746d2121
In-Reply-To: <20150915183842.6e72c05b@pc1>
References: <CACn5sdRQaUEHfde5QzqnOSv829baMEgDBCN7n8rzzrb+1s2uMw@mail.gmail.com>
 <20150915180357.7a0097a4@redhat.com>
 <CACn5sdScL+e_x+QH4wS-cUKaEAMhSSy-jjeKufXu53j6-as_HA@mail.gmail.com>
 <20150915183842.6e72c05b@pc1>
Date: Thu, 17 Sep 2015 11:41:44 -0500
From: Mark Felder <feld@feld.me>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Heap overflow and DoS in unzip 6.0
To: oss-security@lists.openwall.com



On Tue, Sep 15, 2015, at 11:38, Hanno B=F6ck wrote:
>=20
> There are issues from 2009(!) that haven't seen a fix yet, at least
> not in a release:
> http://www.info-zip.org/phpBB3/viewtopic.php?f=3D7&t=3D267
>=20

Are any distros shipping patches to solve these issues? I'd import them
into FreeBSD ports if so...


--=20
  Mark Felder
  feld@feld.me
