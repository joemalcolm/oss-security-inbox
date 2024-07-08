Received: (qmail 1684 invoked by uid 550); 8 Jul 2024 17:28:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1660 invoked from network); 8 Jul 2024 17:28:20 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1720459691;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3QgSeZxq86mm7XOGcYiN0waBT3m4xPG54TbKlzXqzrA=;
	b=igvl60nFv6CbYyq6B5RDHpTTyYTh/9q+MZQ45Qad3qYToV5CqjwrHHU6OVi4yBibQH4HJZ
	OSfjcdlK9im37x7NPRvTJKgqK8wY5wpPEhaN8rQWE7W6tcw38OFHVAJHhKTEnDMSFN41/X
	ehExkzqK47o26PRjmF5G4DHGzcjKcMs=
X-MC-Unique: 4UbMpamlONyXySE96eHXZg-1
From: Florian Weimer <fweimer@redhat.com>
To: Will Dormann <will.dormann@analygence.com>
Cc: oss-security@lists.openwall.com
In-Reply-To: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com> (Will
	Dormann's message of "Mon, 8 Jul 2024 12:37:08 -0400")
References: <30400489-6c59-4133-a3ce-fa0c16b63c02@analygence.com>
Date: Mon, 08 Jul 2024 19:28:02 +0200
Message-ID: <87y16bdc9p.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [oss-security] ASLRn't is still alive and well on x86 kernels,
 despite CVE-2024-26621 patch

* Will Dormann:

>  - Modern (e.g. 6.x kernel) x86 platforms load a large-enough libc at
>    the same address every time. (i.e. no practical ASLR -- "ASLRn't")

Please note that current glibc is not large enough to benefit from 2 MiB
hugepages because all load segments are smaller than 2 MiB, so it's just
not possible to use hugepages for libc.so.6.  This is with the default
-z separate-code in current binutils.  Even with -z noseparate-code, the
large readable-executable load segment is still a bit less than 2 MiB.
Unfortunately the kernel does not know this when we reserve the address
space for the entirety of libc.so.6.

The kernel should not apply hugepage optimizations to mappings created
with MAP_DENYWRITE.

Thanks,
Florian

