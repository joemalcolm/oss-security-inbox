X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["648" "Tuesday" "30" "May" "2017" "10:29:32" "-0400" "Daniel Micay" "danielmicay@gmail.com" "<1496154572.941.11.camel@gmail.com>" "12" "Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" "^Cc:" nil nil "5" "2017053014:29:32" "[oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function" (number mark "        danielmicay@ May 30   12/648   " thread-indent "\"Re: [oss-security] Linux kernel: stack buffer overflow with controlled payload in get_options() function\"\n") "<1496153035.941.9.camel@gmail.com>" ("<EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>" "<20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>" "<1496145073.1459.1.camel@gmail.com>" "<3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>" "<1496149333.941.1.camel@gmail.com>" "<099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>" "<1496150738.941.5.camel@gmail.com>" "<ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>" "<1496153035.941.9.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13672 invoked by uid 550); 30 May 2017 14:29:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13654 invoked from network); 30 May 2017 14:29:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mx+/PiOW6txXBm6L82VUBo7KxV+b7FXq73/ZedtmqA8=;
        b=IBhXcRngWskkyX3DqaHp+VSIZ4gbQ51NTbLwHXsCrcnHq/coV2sl6mh6/sy5l/gVj3
         YteZihETalEMTl7fecaVhHg6FxoHvyjs/XOfXl5GHCwIT1Z2Xa7JKKH9L2UjHEyKdd5o
         qWYgAKxbVySFcFm0AigfSt0m1tkGI7fpPNuWj2KvixjwUpIF4t6Aw1NxoyW+N8haNBMU
         uZGyUYsgil4zhjwsPDKWEn4Nz6HjYAPGsgF4cCCcDSdZxI9tciBL+VTG6eNc5GFC0u+U
         wDjDxnNyNAHY9dwWgoojk+fS4Jy5EKz9XQsukxYr9IorCVx2B2TfY2z1OdOoJINSExrY
         Ht7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mx+/PiOW6txXBm6L82VUBo7KxV+b7FXq73/ZedtmqA8=;
        b=EN24cWVQA4iR/wd7tCdPs1hfmUJXD9WNmdCmAV59mcgxin5VWp7IIgfsCafnpl59Dg
         QPIZesb4zklF+P1fmeuOyhqfpEx8hFktlEitn1jQ9qI9Pcj7NR9YLEcBdXvl5UpZuiY0
         rXR7SH9qc0D2swz4Se9EBuBry+qPlrxAv4UnL1q0lVe/Q+4ylff4sLR4+dqG+na7h3D0
         AM3pnCKXT069CRXN7o8PUhqoLvC/Aq10DVabZFtaVOs8igkLIehB5NbU2eUP49z0Ir/d
         GgHbkKZ3YW8enFgNFZlEFyCGSDoBHUpIg5rE+8jCzyweMBBlgJvO677NYeY4O+TIoG4P
         gr7A==
X-Gm-Message-State: AODbwcBuubyy+WfJyvz+4KxlVlMyn09/5CARgomwbxCDbhUsctdt5XZ0
	NWSetDZJtXeMEQ==
X-Received: by 10.36.0.86 with SMTP id 83mr2325237ita.63.1496154575362;
        Tue, 30 May 2017 07:29:35 -0700 (PDT)
Message-ID: <1496154572.941.11.camel@gmail.com>
In-Reply-To: <1496153035.941.9.camel@gmail.com>
References: <EBDB967B-92F8-47B9-AC79-CBF338A835F2@gmail.com>
	 <20170530114138.jpcppn4j67niqhyb@perpetual.pseudorandom.co.uk>
	 <1496145073.1459.1.camel@gmail.com>
	 <3f12105e-11d8-abe6-762b-c5b762cf6b31@redhat.com>
	 <1496149333.941.1.camel@gmail.com>
	 <099ea9a5-1f74-b837-bcae-aaba2c109a02@redhat.com>
	 <1496150738.941.5.camel@gmail.com>
	 <ab7a4164-1faf-67c2-deb7-f74998ae1dd6@redhat.com>
	 <1496153035.941.9.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.24.2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: Roee Hay <roeehay@gmail.com>
Date: Tue, 30 May 2017 10:29:32 -0400
From: Daniel Micay <danielmicay@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: stack buffer overflow with
 controlled payload in get_options() function
To: Florian Weimer <fweimer@redhat.com>, oss-security@lists.openwall.com

init=/bin/bash -- arguments for bash running as real root

If a memory corruption bug via a kernel line option is a vulnerability,
so is this. It's a vulnerability in the verified boot implementation if
there's attacker control over the kernel line to this extent.

Even if we're going to treat memory corruption specially, you can
corrupt memory simply via crazy configuration on the kernel command
line... that is parsed properly, but then breaks at runtime. You can
also happily disable features like rodata to make your life easier,
since... you control the kernel line. I can't understand what kind of
threat model considers these valid CVEs.
