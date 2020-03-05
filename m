X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["787" "Thursday" "5" "March" "2020" "14:59:17" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2003051452250.5086@xnncv>" "27" "[oss-security] CVE-2019-20382 QEMU: vnc: memory leakage upon disconnect" "^Date:" nil nil "3" "2020030509:29:17" "[oss-security] CVE-2019-20382 QEMU: vnc: memory leakage upon disconnect" (number mark "        ppandit@redh Mar  5   27/787   " thread-indent "\"[oss-security] CVE-2019-20382 QEMU: vnc: memory leakage upon disconnect\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2019-20382 QEMU: vnc: memory leakage upon disconnect" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 22470 invoked by uid 550); 5 Mar 2020 09:29:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22452 invoked from network); 5 Mar 2020 09:29:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583400567;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Z+vLithY8y9I89EHZnqA/8DRug+cPEwyCbKIgIOy8sE=;
	b=RG+EJi+udqD3sHkflbJNG00MDNtG0eX9dj/ggoPpql2lVbNuOm1Xj7ALLmSQ1uujjzleLE
	04gU0Nm5YABg/RxKj5SiEQQNiNwk0sCw38P1tUJH0253YsG8xFpH4S0PQrn4n2u2XCd1wq
	gxNpL0WHa665IExDRnnlurFvxBMVECE=
X-MC-Unique: kxsZFY63M7uzkTSfWyA46g-1
X-X-Sender: pjp@kaapi
Message-ID: <nycvar.YSQ.7.76.2003051452250.5086@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Date: Thu, 5 Mar 2020 14:59:17 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2019-20382 QEMU: vnc: memory leakage upon disconnect
To: oss security list <oss-security@lists.openwall.com>

   Hello,

A memory leakage flaw was found in the way VNC display driver of QEMU handl=
ed=20
connection disconnect, when ZRLE, Tight encoding is enabled. It creates two=
=20
vncState objects, one of which allocates memory for Zlib's data object. Thi=
s=20
allocated memory is not free'd upon disconnection resulting in the said mem=
ory=20
leakage issue.

A user able to connect to the VNC server could use this flaw to leak host=20
memory leading to a potential DoS scenario.

Upstream patch:
---------------
   -> https://git.qemu.org/?p=3Dqemu.git;a=3Dcommitdiff;h=3D6bf21f3d83e95bc=
c4ba35a7a07cc6655e8b010b0

CVE-2019-20382 assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

