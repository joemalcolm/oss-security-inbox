X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["519" "Wednesday" "11" "December" "2019" "11:54:35" "+0530" "P J P" "ppandit@redhat.com" nil "16" nil "^Date:" nil nil "12" nil nil (number mark "U       ppandit@redh Dec 11   16/519   " thread-indent "\"Re: [oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL to guest - incomplete fix for TAA (CVE-2019-11135)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL to guest - incomplete fix for TAA (CVE-2019-11135)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 10029 invoked by uid 550); 11 Dec 2019 06:25:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 10011 invoked from network); 11 Dec 2019 06:25:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1576045488;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hAKDZSfIRLu66EnVY1eqnYYREGsxmLEwvGMb2UjEayk=;
	b=Y7q5SXF5DKTcaEsjKKsidzhSIZ15QBKHDTeDK/rMOzy4qiKuaRmg78KkUFD7UVaB74p3u/
	MfhHUgkdRem3hbafi3Y4GwctkNxq5vV8+LoJS+sSfV5wCiVwSmefAzbzzRAFK04kpNjxx2
	6RaHRhFD5tHWH+xLtowNiOggkzHl8aU=
X-X-Sender: pjp@kaapi
In-Reply-To: <20191210180921.GA23197@elm>
Message-ID: <nycvar.YSQ.7.76.1912111153180.175485@xnncv>
References: <nycvar.YSQ.7.76.1912101658430.54987@xnncv> <20191210180921.GA23197@elm>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: bucgPhkoNMK0a5tNRM6xIQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Date: Wed, 11 Dec 2019 11:54:35 +0530 (IST)
From: P J P <ppandit@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE-2019-19338 Kernel: KVM: export MSR_IA32_TSX_CTRL
 to guest - incomplete fix for TAA (CVE-2019-11135)
To: oss security list <oss-security@lists.openwall.com>

+-- On Tue, 10 Dec 2019, Tyler Hicks wrote --+
| > Another option: Export MDS_NO=3D0 to guests when TSX is enabled
| >   -> https://git.kernel.org/linus/e1d38b63acd843cfdd4222bf19a26700fd5c6=
99e
|=20
| Is the CVE assignment specifically for a distro kernel that didn't
| include commit e1d38b63acd8 ("kvm/x86: Export MDS_NO=3D0 to guests when
| TSX is enabled")?

Right, and have TSX enabled by default.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
8685 545E B54C 486B C6EB 271E E285 8B5A F050 DE8D

