X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["504" "Tuesday" "29" "December" "2015" "07:32:07" "-0600" "Mark Felder" "feld@feld.me" "<1451395927.2773687.478399178.47F1803A@webmail.messagingengine.com>" "15" "[oss-security] Inspircd <2.0.19 DoS" nil nil nil "12" "2015122913:32:07" "[oss-security] Inspircd <2.0.19 DoS" (number mark "U       feld@feld.me Dec 29   15/504   " thread-indent "\"[oss-security] Inspircd <2.0.19 DoS\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24558 invoked by uid 550); 29 Dec 2015 13:32:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24509 invoked from network); 29 Dec 2015 13:32:19 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=feld.me; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to:x-sasl-enc:x-sasl-enc; s=mesmtp; bh=nCX
	a5ugaA8f2938ELsvU9GsWjOc=; b=bqNG6sabaWVNterKFdOriisuZSUj1DHgk1+
	lZszDHgzeMQGcZuJPd39XDfOhV4eXSaEbBHTMPltaq/n6bVUXnK1oyNsouy27xAM
	7JXP2Hz/5b907QXLJfXiqAedV8rkG2lTQ6JWxC4Q3IjoFpFtiEpNmYKg5F0ykQ7l
	oZmRssZQ=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=nCXa5ugaA8f2938ELsvU9GsWjOc=; b=Ia0xl
	vb/cDpg/Vkn3j7phdILZeMyPAmqet0SMlBjEkOJcvwrlTWlrj6CciHan350WMW5G
	JlfMZsI1f//EI35ZnL8RqXdYlVuzzOXuADmTTuwuhmEXp2lLniDdRkN+UBHX3JfS
	Pz9gQ/2D7XZBKeCmfGFRF/t2QM5EWrcW7yhRnE=
Message-Id: <1451395927.2773687.478399178.47F1803A@webmail.messagingengine.com>
X-Sasl-Enc: wQb4VxQLCn1qM4s5s+eAoJ6I+LZ1ghvnNIC0/CJ3IDsA 1451395927
From: Mark Felder <feld@feld.me>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain
X-Mailer: MessagingEngine.com Webmail Interface - ajax-a93c17cb
Date: Tue, 29 Dec 2015 07:32:07 -0600
Subject: [oss-security] Inspircd <2.0.19 DoS

Inspircd <2.0.19 has a DoS caused by PTR lookup of connecting users.

>From their changelog: "...including a fix for a bug which allowed
malformed DNS records to cause netsplits on a network. Triggering this
issue is non-trivial and it may not occur in all circumstances, but all
users are advised to upgrade."

http://www.inspircd.org/2015/04/16/v2019-released.html

Relevant commit:
https://github.com/inspircd/inspircd/commit/6058483d9fbc1b904d5ae7cfea47bfcde5c5b559

-- 
  Mark Felder
  feld@feld.me
