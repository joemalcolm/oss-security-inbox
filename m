X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["954" "Tuesday" "30" "May" "2017" "09:02:13" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496149333.941.1.camel@gmail.com>" "21" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053013:02:13" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   21/954   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<1496145073.1459.1.camel@gmail.com>" "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 21793 invoked by uid 550); 30 May 2017 13:02:27 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 21770 invoked from network); 30 May 2017 13:02:26 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=96ZFOEPl8JDilaONwV53wHQRFNWFo+KT9ss29hUFAsU=;
        b=MB50Rq0LYdqAoeMMJjOZmin3T8wzT9hMZyJQY5Rpkg8PP1Gm336rtjI/HlSVLILy5d
         FdAuIe8LySsWWMJ3/LxtF/TbRYjVxuh2CFGTKf9yPn1wiInlkMvIp2kadSmLedUePChB
         4NYMGGDgx6I+0Id1j2SL4/eP4VsFy80LCHFEDLHnzdTbaRynfFfHBaZGwpVxFVkvrFJz
         GuTPvnDyfpFh23BamfLWCneZqSDjS7IKzvoZfbFrhCYU61i5uh2jyYIck3NdgX8LE6to
         aVmAZ+K+no2IlJi7AWtpN6Uul/PoDfp+JCLccYD8Qhg06zFqXIhD2pjyfe1q9+tcsnOT
         1YzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=96ZFOEPl8JDilaONwV53wHQRFNWFo+KT9ss29hUFAsU=;
        b=ucfi3ASRnno7Ozyb5KkH5H0KfkbC4+2TxQY9hbg1EfcLG/JOLp7zFvChxuC7MTUxBb
         qlRG7iIxAEIlwpzD/euekjts6709KgG232d24N083DYo9S0n8tqykr/JB5x4Ym+p/zDF
         dnxpmOtVAHYTd8+eyhFm3SGdz8qyGL/qObQ5qi9MRWyR31QhcYktZaHOvLEM1QrccN44
         l7OOBpjSY8J/lHfDQZK+yTRXpaYkVO3wwMF9s8K8bZT/xva0y0Feo7XKONsfXvpGw1pD
         DXXTSiWrnBlS6pYfcERNnVfIZ/gdrUHJ8KQQOGmerAcHWRt6ssBBSJTyJTWq0LOvs73l
         tCag==
X-Gm-Message-State: AODbwcA3+gMkco3QJxvCMKFOD58wvAyL9Fwt2JGCNWsL7sVJq539BYOC
	yNxE3qKnQxQNqQ==
X-Received: by 10.107.165.148 with SMTP id o142mr17217178ioe.179.1496149335052;
        Tue, 30 May 2017 06:02:15 -0700 (PDT)
Message-ID: <1496149333.941.1.camel@gmail.com>
In-Reply-To: <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <1496145073.1459.1.camel@gmail.com>
	 <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 09:02:13 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com

On Tue, 2017-05-30 at 14:52 +0200, Florian Weimer wrote:
> On 05/30/2017 01:51 PM, Daniel Micay wrote:
> > It's unreasonable to consider the kernel line untrusted. A CVE being
> > issued for one of these issues didn't make sense.
> 
> It's a potential Secure Boot bypass, so it matters in some theoretical
> sense to some downstreams which carry those Secure Boot patches.
> 
> (Although I have yet to see anyone to revoke a signature on a kernel
> with known root-to-ring-0 escalations, so the practical impact isn't
> large because an attack could still downgrade to a kernel with an
> exploitable vulnerability.)
> 
> Florian

How is it a secure boot bypass? If the secure boot implementation
doesn't cover the kernel line it's already broken.

The provided example was treated as a verified boot vulnerability by
Google and fixed. It isn't supposed to be possible to set the kernel
line with a locked bootloader on Nexus/Pixel devices. It was a bug.
