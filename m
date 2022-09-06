Received: (qmail 19494 invoked by uid 550); 6 Sep 2022 15:44:24 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3290 invoked from network); 6 Sep 2022 15:15:02 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date;
        bh=2mhjYEr0u4GGM599aAhr0hzB1IzukWFVGa9kemoyFes=;
        b=TmvphZZG7y7xQ+e8m2xv02bj6w+zFLNgANkrBtPCgYQL+GlbiLzc78dJ3CXMfGBSMA
         r+0jj7qp/GwRtvv6pHUSuAmj7ih/eNaknH+HItGRn5WdH5MN6/90+f5o1+vd6guBNgGq
         K1HW7quV4nvWQHJMXn9kwyuBZ8tCkgKWws4VpxdjKu778Xaz/63MJrHMteke/B0mzDG8
         7A/EBqg+r/BIeF91LDuvKPG+hC8PxxwiSuzwUo6WGoyOP3ZaF+V5FmI2bK8TjuYDrdB6
         GpatBqVBL5wNHGAxcF8883ujyK84xS0iPsLrjwJ39HpaZ2MwmMgYHSkxi12e7VDkOrrB
         c5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date;
        bh=2mhjYEr0u4GGM599aAhr0hzB1IzukWFVGa9kemoyFes=;
        b=3gPGoKVrSFms3L9zLJTIwMqaAOFXNw4VyBN1LyacLfHq1wXCe2X5ik36S1EgjPEnO1
         r9CBbLwtzKkGlh6F3T1wQfMSlhoV7+YpZSuTs49g1EcLGxJl0Kk/TJGExV5nUXpuSuf6
         WW92WL6ul2v1C81ea+dO8ZNE95zxuugEYWvpdsUtjU1EilT0KWUWUKCu43TIw68xJ9fe
         xIKKofexwKDvuytkgEZ4fhi+/Rj+92CU7KTf33KP0+J06HR7b5nAceQAqtEQG+8Fv6Tb
         6+2AhQIAI3VfV/7tORyxEYqn8bKcpBi1MO7qSqMZnkuiA9B5bZjTZOaXet4Ep7I4RbsT
         4qcw==
X-Gm-Message-State: ACgBeo3KaW5NYFZIMB1IKsL66c0Cbd87w0GyHR6OBHxwniDoHe42MNF1
	hy7DqR5rlQJGwF7P4NZFXtPqFBa6XMo4cQE7tIXc6jTDrzg=
X-Google-Smtp-Source: AA6agR6W41+U/cNqyZeuzucELoOxncJB4v8TT9tyT8Xo0vdpghsdIGh/BfUSoryBXmzOUsUy7KBG7B0eBSnBuWwoIzw=
X-Received: by 2002:a05:600c:310b:b0:3a6:8970:27fc with SMTP id
 g11-20020a05600c310b00b003a6897027fcmr13913595wmo.98.1662477290899; Tue, 06
 Sep 2022 08:14:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAGUWgD9QR7mjyVnBV4NcyVv=RzLBjNoqvv=d02P-GGsdOV_VWg@mail.gmail.com>
 <20220906115010.gs7kec3wkmayhmhf@yuggoth.org> <CAGUWgD9x1RJdYcr9NCUOjaVNYdnhrPkSjNoh_NaLGu99q65W-w@mail.gmail.com>
 <20220906145100.kmnuhcj4slmbrokz@yuggoth.org>
In-Reply-To: <20220906145100.kmnuhcj4slmbrokz@yuggoth.org>
From: Georgi Guninski <gguninski@gmail.com>
Date: Tue, 6 Sep 2022 18:14:38 +0300
Message-ID: <CAGUWgD8HasZRDG_BPCMTa2sZs1Kk4yFZd7R0oc=nfG2+JA3Sqw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [oss-security] sagemath denial of service with abort() in gmp:
 overflow in mpz type

The DoS can be a .cgi or in a web service, allowing only numerical and
math functions input.
As pointed by Jeffrey Walton, the problem is in libgmp, not in sage,
and ubuntu asks for sending them crash info, including the coredump.
To avoid the gmp crash in |2^2^64|, sage catches signals and ignores SIGABRT.
The sage ``feature'' with more info is at:
https://trac.sagemath.org/ticket/34492
avoid crash and print better error message when gmp calls abort()
