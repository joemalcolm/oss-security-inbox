X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1615" "Wednesday" "11" "July" "2018" "13:40:05" "+0200" "Dave Cottlehuber" "dch@apache.org" "<1531309205.1550229.1437139664.5E02F186@webmail.messagingengine.com>" "40" "[oss-security] CVE-2018-8007: Apache CouchDB administrative privilege escalation" nil nil nil "7" "2018071111:40:05" "[oss-security] CVE-2018-8007: Apache CouchDB administrative privilege escalation" (number mark "U       dch@apache.o Jul 11   40/1615  " thread-indent "\"[oss-security] CVE-2018-8007: Apache CouchDB administrative privilege escalation\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3978 invoked by uid 550); 11 Jul 2018 11:41:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3492 invoked from network); 11 Jul 2018 11:40:18 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=0dR6sBlgzmbfEhChicU3tT2vxyThy
	7y+Kbs6to74xBk=; b=AQ7NItlSWeotA9/WFTi2vk+FRvJpz+boqAV3cn4HLhgNs
	whVPKrTJZh3E+jkRGuulvj+0VG48jAmb4Wllgfto9vNrtUijKPg3l6csGasKlINh
	lKDBs8gN42iIPyAY/S9ZZPN/92jBJUAxCEECntiEBi5/mVu/GPVXrNLW0cWNvFlJ
	BHENS1duHVMtta2ltzjdIQdrM4D6NTZHUmJaSTfS9IrMEE2x0r819WAEYRVgavWC
	25ZFBwuYtHGOZ39BtqWjc6t0C8MSD9koMismbYDHcfaRsn0AiJNI91lkiI3GADYn
	W3iug7MitvKnDnolWcpoqrJi6StAQXXFy+21Kytyg==
X-ME-Proxy: <xmx:lexFW9qYMdJximpM54JPLJelITbN-o8xMy6Rt8s5BGfPHJCIoFjJYA>
    <xmx:lexFW9OF7_Y9yhmFZNBRAn43_pEjG503P74Hj8SlgndmcanyNKQiRQ>
    <xmx:lexFWzOFHXwL4IU3mWkpOTYcyrCSIC1HuTOQsrSdK_KuU3vmT5rCnw>
    <xmx:lexFWzxlZOffkxrZdiFss8vFSPfC4vxh0dNbboSSst67SU-S5HXLwQ>
    <xmx:lexFW3UVGBYMItXAJsHKR0jyWFWUEGnmzbI_ZXn-DdXE41uYVRGiVA>
    <xmx:lexFW2iRFcypVuMYGuhwD5Y-pAkno6KcY4YQxMhELCNonH7_5R7AcA>
X-ME-Sender: <xms:lexFW3F1xnRuX_AeDLu_NGgOkhZznfPNUefVq-l9RdAwBC-CblKGlQ>
Message-Id: <1531309205.1550229.1437139664.5E02F186@webmail.messagingengine.com>
From: Dave Cottlehuber <dch@apache.org>
To: oss-security@lists.openwall.com
Cc: security@couchdb.apache.org, security@apache.org
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-957169fa
Date: Wed, 11 Jul 2018 13:40:05 +0200
Subject: [oss-security] CVE-2018-8007: Apache CouchDB administrative privilege escalation


[CVEID]: CVE-2018-8007
[PRODUCT]: Apache CouchDB
[VERSION]: Apache CouchDB versions up to and including 1.7.1, and 2.1.1
[PROBLEMTYPE]: Administrative Privilege Escalation
[REFERENCES]: https://blog.couchdb.org/2018/07/10/cve-2018-8007/ http://mai=
l-archives.apache.org/mod_mbox/couchdb-announce/201807.mbox/%3C1699016538.6=
219.1531246785603.JavaMail.Joan%40RITA%3E http://mail-archives.apache.org/m=
od_mbox/couchdb-announce/201807.mbox/%3c1439409216.6221.1531246856676.JavaM=
ail.Joan@RITA%3e
[DESCRIPTION]: CouchDB administrative users can configure the database serv=
er via HTTP(S). Due to insufficient validation of administrator-supplied co=
nfiguration settings via the HTTP API, it is possible for a CouchDB adminis=
trator user to escalate their privileges to that of the operating system=E2=
=80=99s user that CouchDB runs under, by bypassing the blacklist of configu=
ration settings that are not allowed to be modified via the HTTP API.

This privilege escalation effectively allows an existing CouchDB admin user=
 to gain arbitrary remote code execution, bypassing already disclosed CVE-2=
017-12636.

Mitigation:

All users should upgrade to CouchDB releases 1.7.2 or 2.1.2.

Upgrades from previous 1.x and 2.x versions in the same series should be
seamless.

Users on earlier versions, or users upgrading from 1.x to 2.x should consult
with upgrade notes.
Credit

This issue was discovered by Francesco Oddo of MDSec Labs. The CouchDB PMC =
gratefully acknowledges their support in responsibly disclosing this vulner=
ability.

=E2=80=94
  Dave Cottlehuber
  dch@apache.org
  Sent from my Couch
