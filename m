X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["921" "Sunday" "16" "April" "2017" "13:08:27" "+0000" "7b4xrw+5q6jtt69cnwlw@guerrillamail.com" "7b4xrw+5q6jtt69cnwlw@guerrillamail.com" "<7a824313c433c54a212afb25498e8556581@guerrillamail.com>" "33" "[oss-security] MantisBT - Full admin access vulnerability" nil nil nil "4" "2017041613:08:27" "[oss-security] MantisBT - Full admin access vulnerability" (number mark "U       7b4xrw+5q6jt Apr 16   33/921   " thread-indent "\"[oss-security] MantisBT - Full admin access vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 31817 invoked by uid 550); 16 Apr 2017 13:44:51 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 9933 invoked from network); 16 Apr 2017 13:08:42 -0000
MIME-Version: 1.0
Message-ID: <7a824313c433c54a212afb25498e8556581@guerrillamail.com>
Date: Sun, 16 Apr 2017 13:08:27 +0000
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: <7b4xrw+5q6jtt69cnwlw@guerrillamail.com>
X-Originating-IP: [176.10.104.243]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Domain-Signer: PHP mailDomainSigner 0.2-20110415 <http://code.google.com/p/php-mail-domain-signer/>
DKIM-Signature: v=1; a=rsa-sha256; s=highgrade; d=guerrillamail.com; l=997;
	t=1492348110; c=relaxed/relaxed; h=to:from:subject;
	bh=F1l50mlPfk2WYBIxaj0+tDWH1P6nfTiffrMNtOKkK48=;
	b=DP3vQ6/TBhhZn6BWpBoUTp6kmTx960FLQSGq/1Tz+yri+/6cGhp2dJYCzQB4yfBVVx1wVT81BLCG
	cCEACe0bMM4bSJH/wUuYcKcw9vN4L7Bzc+fYZXFAGWMowqfL3+7uX/gU2dSwh+886EEP9V/VfUPN
	Qp5Wo8eV8LGItNlDx1MrSWqiPHNN+kuCIESkB/iCMd6KiLqiT350ZTUKX3KN4tHfRAw9G8ZHn858
	VkgDxDogWz/NsBbLzmwCB0n4dMdYja7KJsriiUvW+NhFnQv5Bj/5IuwfNet3U9GBhBuAvuwLDjv4
	F0B0xeycy6+2ctrfxKWEfPTpglG/2msGm8ikNg==
Subject: [oss-security] MantisBT - Full admin access vulnerability

A vulnerability exists in MantisBT where any users password can be reset:

Visiting /verify.php?id=3DXXX&confirm_hash=3D

where XXX is the userid of the user. id=3D1 is the default 'administrator' =
account if it still exists.

On a unpatched instance of mantisBT, this will provide a form to enter a ne=
w password for a user.

This works on any enabled account (including users with admin access) - pro=
viding an anonymous user with admin access to the system

The issue can be resolved by checking the value of $t_token_confirm_hash is=
 not null in verify.php

i.e. changing the code to read:

if( $f_confirm_hash !=3D=3D $t_token_confirm_hash || null =3D=3D=3D $t_toke=
n_confirm_hash ) {
	trigger_error( ERROR_LOST_PASSWORD_CONFIRM_HASH_INVALID, ERROR );
}





----
Sent using Guerrillamail.com
Block or report abuse: https://www.guerrillamail.com//abuse/?a=3DTlJnSB4FQK=
EHgRqt0HIWYQDUA8WA19lHxqhOMtz5Bg%3D%3D


