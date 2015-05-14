X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1818" "Thursday" "14" "May" "2015" "19:55:08" "+0300" "DaKnOb" "daknob.mac@gmail.com" "<22512F4A-315E-40A6-825C-C61DEC4FC14E@gmail.com>" "43" "[oss-security] Re: Request 2 CVE-IDs for Zeus Voting System" nil nil nil "5" "2015051416:55:08" "[oss-security] Re: Request 2 CVE-IDs for Zeus Voting System" (number mark "        daknob.mac@g May 14   43/1818  " thread-indent "\"[oss-security] Re: Request 2 CVE-IDs for Zeus Voting System\"\n") "<63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com>" ("<63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24203 invoked by uid 550); 14 May 2015 16:55:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 24138 invoked from network); 14 May 2015 16:55:22 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:content-type:message-id:mime-version:subject:date:references
         :to:in-reply-to;
        bh=wTWwKcc63zHsyhpC49hC3uh7665hyxusapKswprjeAY=;
        b=iRRzslRpXj0+bgsqPLvZkJt21ZAVorDW2brAJQoSZhBG+8CywUPRFqlH8Et7S9cvHJ
         j3BLTsgxyZbfFW/R6Y60oPqUa2eZ5dAd6Np2nURYuAfjUAZB/wZiccYJomY1oZK2xtvD
         sq9exS/xXEU1D4SeSyt6r3KVBcSm1J8E/X56KbLUki0FYLVkY/pxhBzFwWcqg13DUhZ+
         iEqv5J/r5sCjeUliH0PZR89ZhMZ52Mxcc4WxSwk1IEd7zOYPBm8gXseHq5ZOInYfKVSf
         eQuE2Rjh7oRORHoQxyZ7TxJpnI157zxxv/cH/B6ZB3YVG2A9qHgLsNN0O6sfgxlUWstI
         o5IA==
X-Received: by 10.180.78.65 with SMTP id z1mr8684053wiw.14.1431622511083;
        Thu, 14 May 2015 09:55:11 -0700 (PDT)
Content-Type: multipart/alternative; boundary="Apple-Mail=_31BA3057-52E6-479C-A086-BBA8322520D0"
Message-Id: <22512F4A-315E-40A6-825C-C61DEC4FC14E@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
References: <63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com>
In-Reply-To: <63E299CE-40BE-4F1D-BFC0-5278B8E51C57@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
Date: Thu, 14 May 2015 19:55:08 +0300
From: DaKnOb <daknob.mac@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Request 2 CVE-IDs for Zeus Voting System
To: OSS Security List <oss-security@lists.openwall.com>

--Apple-Mail=_31BA3057-52E6-479C-A086-BBA8322520D0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252

I would like to update the topic below on some information I got.
I admit that it was a mistake of me saying that the developers said some th=
ings, mainly because I read really quickly a related blog post somewhere by=
 a person working in the same company, so after a talk with the blog post a=
uthor and the development team of Zeus, I=92d like to let you know that Zeu=
s development team does not consider the mathematical proof of the technolo=
gy the same as the implementation and additionally:

=93We have not requested real security audits because there are not funds f=
or Zeus, so no money to pay for the auditor. Of course we welcome work pro =
bono. Our argument is that you can have verifiable elections by using stron=
g cryptography, but of course algorithms may be perfect but systems are not=
, and humans even less so=94.

Additionally, the two XSS vulnerabilities have been patched in the master b=
ranch in less than 24 hours.

Sincerely,
Antonios A. Chariton

On May 13, 2015, at 19:09, DaKnOb <daknob.mac@gmail.com> wrote:

> Zeus (https://github.com/grnet/zeus) is a fork of Helios that is actively=
 developed by GRNET (http://www.grnet.gr/) and is considered to be used in =
Greek Elections (starts with small and rolls out to larger elections).=20
>=20
> Two XSS vulnerabilities that allow JavaScript Execution have been found, =
one of which has a PoC running JavaScript / Modifying HTML in the voter=92s=
 browser during the voting process.
>=20
> XSS #1 - https://github.com/grnet/zeus/issues/28
> XSS #2 - https://github.com/grnet/zeus/issues/29
>=20
> Thank you,
> Antonios A. Chariton


--Apple-Mail=_31BA3057-52E6-479C-A086-BBA8322520D0--
