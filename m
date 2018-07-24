X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["507" "Tuesday" "24" "July" "2018" "12:27:56" "+0100" "Nikolaus Rath" "nikolaus@rath.org" "<1532431676.1547189.1451049432.34DB1AC3@webmail.messagingengine.com>" "18" "[oss-security] [CVE-2018-10906] libfuse: restriction bypass of the \"allow_other\" option when SELinux is active" nil nil nil "7" "2018072411:27:56" "[oss-security] [CVE-2018-10906] libfuse: restriction bypass of the \"allow_other\" option when SELinux is active" (number mark "U       nikolaus@rat Jul 24   18/507   " thread-indent "\"[oss-security] [CVE-2018-10906] libfuse: restriction bypass of the \"allow_other\" option when SELinux is active\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15545 invoked by uid 550); 24 Jul 2018 11:29:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13897 invoked from network); 24 Jul 2018 11:28:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:message-id:mime-version:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; bh=+jSvZNCppD7UbljmOhSkCXdT41kkY
	G35hmG/vkW9VJs=; b=mnFUjYhhH/t2CIeQBIMH9tJ6pRmAe91wlsnC6QTTAMny0
	329deiCiobyqToAJeN11QqxVi4Elbx8eRwheFb7MH1P1uPAcJVMJuhgFqujtoWRW
	tSFaBfF37JMu+kn964taXtnifXK+NR1YGloLFcGAptb5DCRm1m2CZd0iNZMtcSeY
	PCs5B9Hp1bvHQgJDixW1UZeVsb3j27uD4wGWfd3xtRoalJbP3RbOsy5U0M+PVv1Y
	QJqeJ3acbSBIm08MlPWq8ZKsYlek0Xg3buLybWp+JT9uh4bwAnDkOewrSL7FKtrq
	InFQj4o+4teI3Aln4o6xxRROlaZJmpYWHGN4bjX7w==
X-ME-Proxy: <xmx:PA1XW4vmPtZvFqZfpV642u_dK3L-0-pU1e0MAso4gzWo5H3CF2qTwQ>
    <xmx:PA1XWw0--mrmO8zb14WbydNLjKSOgf_qmewCGlIahG5WN1KNidzyPQ>
    <xmx:PA1XWxgcsOlrYJkO_lF0EL7zxLYh5fLJPGcQ2yBJ2NhC1WXBTn8fJw>
    <xmx:PA1XWxu9iD2I8J-rnHmlfGt0k2QqmOVIfef3a0snhQTYMe7ZLi_3Wg>
    <xmx:PA1XW5G6sjzIZO4MHMZg24hJVlo99553yaSiO0lUvyFioX49YzPGjw>
    <xmx:PQ1XWz0xfJi3JK4XcOwK4VKRlC-97OCEg4sOWoTU7TsL9PeOlSrQTw>
X-ME-Sender: <xms:PA1XW1b5FGK2FN5PZuROCxzIQ3y9zHVa00fNPyrs1WlhDBG9zYAPzA>
Message-Id: <1532431676.1547189.1451049432.34DB1AC3@webmail.messagingengine.com>
From: Nikolaus Rath <nikolaus@rath.org>
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Mailer: MessagingEngine.com Webmail Interface - ajax-0843ff3e
Date: Tue, 24 Jul 2018 12:27:56 +0100
Subject: [oss-security] [CVE-2018-10906] libfuse: restriction bypass of the "allow_other" option
 when SELinux is active

Hi,

I've just released updated versions of libfuse 2.x and libfuse 3.x that fix=
 CVE-2018-10906.

Jann Horn discovered that it is possible to bypass fusermount's restriction=
s on the use of the "allow_other" mount option as follows if SELinux is act=
ive. fusermount is a (typically setuid) helper for mounting FUSE file syste=
ms.

Best,
-Nikolaus

--=20
GPG Fingerprint: ED31 791B 2C5C 1613 AF38 8B8A D113 FCAC 3C4E 599F

             =C2=BBTime flies like an arrow, fruit flies like a Banana.=C2=
=AB
