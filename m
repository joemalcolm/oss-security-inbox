X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["993" "Thursday" "16" "January" "2020" "14:48:39" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2001161441560.169985@xnncv>" "31" "[oss-security] CVE-2020-7039 QEMU: slirp: OOB buffer access while emulating tcp protocols in tcp_emu()" nil nil nil "1" "2020011609:18:39" "[oss-security] CVE-2020-7039 QEMU: slirp: OOB buffer access while emulating tcp protocols in tcp_emu()" (number mark "U       ppandit@redh Jan 16   31/993   " thread-indent "\"[oss-security] CVE-2020-7039 QEMU: slirp: OOB buffer access while emulating tcp protocols in tcp_emu()\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-7039 QEMU: slirp: OOB buffer access while emulating tcp protocols in tcp_emu()" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32433 invoked by uid 550); 16 Jan 2020 09:19:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32411 invoked from network); 16 Jan 2020 09:18:59 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1579166327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Ka+rcCuWKPMHJHbSSIGxVW6S25AF+hBFPTXUQqwEkW0=;
	b=imYzBOhW7a+VN1+BdHSdrrgbrbsVdoBIY1tzd8clQ2mwu2Qm0BfnnYVoXD4nxgLfptkb92
	sJdJ1qV9ehyZt7nleDca1fsk08RnxE54MnsVi0ssom3yZgWQjFe1XBEL0kiXMgQrBZZ8w4
	t6DcmDVFcREFputfE21aMPfX1GJ/VIs=
Date: Thu, 16 Jan 2020 14:48:39 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
cc: Vishnu Dev <vishnudevtj@gmail.com>
Message-ID: <nycvar.YSQ.7.76.2001161441560.169985@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: EZOeRTRoMLmp6I-o-SCpzA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2020-7039 QEMU: slirp: OOB buffer access while emulating tcp
 protocols in tcp_emu()

   Hello,

A heap buffer overflow issue(s) were found in the SLiRP networking=20
implementation of the QEMU emulator. It occurs in tcp_emu() routine while=20
emulating IRC and other protocols.

A user/process could use this flaw to crash the Qemu process on the host=20
resulting in DoS or potentially execute arbitrary code with privileges of t=
he=20
QEMU process.

Upstream patch(es):
-------------------
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/2655fffed7a9e765=
bcb4701dd876e9dab975f289
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/ce131029d6d4a405=
cb7d3ac6716d03e58fb4a5d9
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/82ebe9c370a0e297=
0fb5695aa19aa5214a6a1c80

Heap overflow in emulating IRC commands (EMU_IRC) was found and reported by=
=20
Vishnu Dev (CC'd).

'CVE-2020-7039' was assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

