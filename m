X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1604" "Tuesday" "18" "January" "2022" "18:21:30" "+0000" "Will" "willsroot@protonmail.com" nil "25" "[oss-security] Linux kernel: Heap buffer overflow in fs_context.c since version 5.1" nil nil nil "1" nil nil (number mark "U       willsroot@pr Jan 18   25/1604  " thread-indent "\"[oss-security] Linux kernel: Heap buffer overflow in fs_context.c since version 5.1\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Linux kernel: Heap buffer overflow in fs_context.c since version 5.1" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 12207 invoked by uid 550); 18 Jan 2022 18:35:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5617 invoked from network); 18 Jan 2022 18:21:46 -0000
Date: Tue, 18 Jan 2022 18:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail2; t=1642530094;
	bh=hIdqHc6kKS405LtzckaCOB5jX+0UnjMcuInD2AWOqO4=;
	h=Date:To:From:Cc:Reply-To:Subject:Message-ID:From:To:Cc;
	b=cBNcw+hut/65P/E5tSfd/MKdEXMbD/UJHzxdznQToH2TbpTKaNeabPpvMSRDZwmEQ
	 UAPnwj+6tqu07rmOwsr8HJQ3NoTb38ZfAw9Hx4JB8nNWC1I5hZpieKBqzNaNgo1woX
	 hdDn7h7MlFyhwlycV/GWsWIh4K5gjrSmmOnN3FGu4tDLM0eWjFdi5IQbiWuFaxfDjE
	 Yf7qqtRODI8jtckFXzNRjJY5Pp0iyzp3tzq6MOCWFKA9KgJdcl1NCIcEI78IWXGXCI
	 w7RVIdNg41/BB2cvecLTu98jwYuTg//bBjgcYVaLO0xTdGcqDTyY0vxK9VqH2B/csB
	 5KW6TBdeQDIig==
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
From: Will <willsroot@protonmail.com>
Cc: "jamie@hill-daniel.co.uk" <jamie@hill-daniel.co.uk>, "g@gnk.io" <g@gnk.io>, "misetichrvoje@gmail.com" <misetichrvoje@gmail.com>, "alecthechop@gmail.com" <alecthechop@gmail.com>, "isaac.badipe@gmail.com" <isaac.badipe@gmail.com>
Message-ID: <nZdp4o4iHdicJfJwEJ-dtJrhs5aDa-cbvA3psbItS3dkwOwxmzwXanoaslI0T5nXjCNz0Cm5csVgCJxDWPWIaKDbF6mxaYch5xJo3QT-8_0=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [oss-security] Linux kernel: Heap buffer overflow in fs_context.c since version 5.1

There is a heap overflow bug in legacy_parse_param in which the length of d=
ata copied can be incremented beyond the width of the 1-page slab allocated=
 for it. We currently have created functional LPE exploits against Ubuntu 2=
0.04 and container escape exploits against Google's hardened COS. The bug w=
as introduced in 5.1-rc1 (https://github.com/torvalds/linux/commit/3e1aeb00=
e6d132efc151dacc062b38269bc9eccc#diff-c4a9ea83de4a42a0d1bcbaf1f03ce35188f38=
da4987e0e7a52aae7f04de14a05) and is present in all Linux releases since. As=
 of January 18th, this patch (https://git.kernel.org/pub/scm/linux/kernel/g=
it/torvalds/linux.git/commit/?id=3D722d94847de29310e8aa03fcbdb41fc92c521756=
) fixes this issue.

The bug is caused by an integer underflow present in fs/fs_context.c:legacy=
_parse_param, which results in miscalculation of a valid max length. A boun=
ds check is present at fs_context.c:551, returning an error if (len > PAGE_=
SIZE - 2 - size); however, if the value of size is greater than or equal to=
 4095, the unsigned subtraction will underflow to a massive value greater t=
han len, so the check will not trigger. After this, the attacker may freely=
 write data out-of-bounds. Changing the check to size + len + 2 > PAGE_SIZE=
 (which the patch did) would fix this.

Exploitation relies on the CAP_SYS_ADMIN capability; however, the permissio=
n only needs to be granted in the current namespace. An unprivileged user c=
an use unshare(CLONE_NEWNS|CLONE_NEWUSER) to enter a namespace with the CAP=
_SYS_ADMIN permission, and then proceed with exploitation to root the syste=
m.
