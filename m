X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["702" "Friday" "17" "January" "2020" "12:33:51" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.2001171230050.223874@xnncv>" "23" "[oss-security] CVE-2020-7211 QEMU: Slirp: potential directory traversal using relative paths via tftp server on Windows host" nil nil nil "1" "2020011707:03:51" "[oss-security] CVE-2020-7211 QEMU: Slirp: potential directory traversal using relative paths via tftp server on Windows host" (number mark "U       ppandit@redh Jan 17   23/702   " thread-indent "\"[oss-security] CVE-2020-7211 QEMU: Slirp: potential directory traversal using relative paths via tftp server on Windows host\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2020-7211 QEMU: Slirp: potential directory traversal using relative paths via tftp server on Windows host" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24215 invoked by uid 550); 17 Jan 2020 07:04:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 24197 invoked from network); 17 Jan 2020 07:04:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1579244641;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Zp1Q/5kbuVGcQMieikOHRaeUduC2imGparqIzU6numA=;
	b=Iduo2fpNEcBuEPswKavg3Q/iL7ZHeD5hE+fGdnhSuTlSY2eE9/gDHuUHyAgq0fGeQ3ZdWE
	bM3I5hODybYpyp6iOvoddacjtT5ZiRZH1yDdeZVWI4acuz2fkllQH8CQ0RJnp2X0LxsZgS
	a9PMbKzffITB/YJiOf3pwjJ1rS6XX4s=
Date: Fri, 17 Jan 2020 12:33:51 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@kaapi
To: oss security list <oss-security@lists.openwall.com>
Message-ID: <nycvar.YSQ.7.76.2001171230050.223874@xnncv>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: C4BenVnyObC9KubhB8sWdw-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; format=flowed; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] CVE-2020-7211 QEMU: Slirp: potential directory traversal using
 relative paths via tftp server on Windows host

   Hello,

A potential directory traversal issue was found in the tftp server of the=20
SLiRP user-mode networking implementation used by QEMU. It could occur on=20
Windows host, as it allows to use both forward ('/') and backward slash('\'=
)=20
tokens as separators in a file path.

A user able to access the tftp server could use this flaw to access undue=20
files by using relative paths.

Upstream patch:
---------------
   -> https://gitlab.freedesktop.org/slirp/libslirp/commit/14ec36e107a8c9af=
7d0a80c3571fe39b291ff1d4

'CVE-2020-7211' assigned via -> https://cveform.mitre.org/

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

