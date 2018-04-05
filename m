X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["4090" "Thursday" "5" "April" "2018" "15:32:59" "+0300" "Alexander Popov" "alex.popov@linux.com" "<2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>" "109" "[oss-security] Re: Linux Kernel Defence Map" "^Cc:" nil nil "4" "2018040512:32:59" "[oss-security] Re: Linux Kernel Defence Map" (number mark "        alex.popov@l Apr  5  109/4090  " thread-indent "\"[oss-security] Re: Linux Kernel Defence Map\"\n") "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>" ("<b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>" "<CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23953 invoked by uid 550); 5 Apr 2018 12:33:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23932 invoked from network); 5 Apr 2018 12:33:13 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:cc:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=hhocq5q/r8enC28duklIiCFTFwH+8J4i90BoYmPpyV4=;
        b=HUNU+0YoRJnl1Z09SZDOKGH92eYbNchCdmHGcMa5cAJVgj+t8idRuhbXo5Nt3+MOsR
         R/TCkbQ72aNdX4xzo4fnrjGw+Aupu3lUQHrU4bhq+9xmLxElc0MeBGbxBOb3WKi6Xf1o
         NyUn/AuKvcmPsE9ByqbbkiJndXaBZbnxawtNG6F1wGKYwTWLaeuQ9WrsCdur15Y3PNFU
         UWv5iVc8PbDZrMDPWaDIDz+YQyZ3R3bDfWiJT95MXaJLrkISMmT46t8quMHePfORYxqU
         ly0RObcH4IOMmBhKlmW8L58tYSyqIdO1P6xGqx8xK4iye3R3o18Ah7XRett4C0y5HEe6
         3d7A==
X-Gm-Message-State: ALQs6tD6Y9dwUEboBG7jWNykJm/sgoICAj+F1cWRqEqWsPDLNNa6R3se
	qjKm6IeV507MiRwmWlJhUu0=
X-Google-Smtp-Source: AIpwx494mlzWalwd+dL1UV9v6acvTv5GKhBp6h8P8N8R5B7Mpzn0NcNKBJ7wlzGizv2E94zkMagOzQ==
X-Received: by 10.46.134.205 with SMTP id n13mr152842ljj.115.1522931581992;
        Thu, 05 Apr 2018 05:33:01 -0700 (PDT)
References: <b6ed322e-95ee-25cf-19bd-7a3317d7c747@linux.com>
 <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
Message-ID: <2e0bd890-5c3b-9b03-f984-90b452a94c64@linux.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAGXu5jJD0X7okv9=Dm00YP6UjtCSV21gj30Orc_VrYO+94dMzQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: oss-security@lists.openwall.com, James Morris <jmorris@namei.org>,
 "Serge E. Hallyn" <serge@hallyn.com>, Brad Spengler
 <spender@grsecurity.net>, PaX Team <pageexec@freemail.hu>
Date: Thu, 5 Apr 2018 15:32:59 +0300
From: Alexander Popov <alex.popov@linux.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Linux Kernel Defence Map
To: Kees Cook <keescook@chromium.org>, Kurt Seifried <kseifried@redhat.com>

On 05.04.2018 01:17, Kees Cook wrote:
> On Wed, Apr 4, 2018 at 9:15 AM, Alexander Popov <alex.popov@linux.com> wrote:
>> Linux kernel security is a very complex area. It would be nice to have some
>> graphical representation of its current state. So I've created a Linux Kernel
>> Defence Map showing the relations between:
>>  - vulnerability classes / exploitation techniques,
>>  - kernel defences,
>>  - bug detection means.
>>
>> Link:
>>    https://github.com/a13xp0p0v/linux-kernel-defence-map
>>
>> N.B. The node connections don't mean "full mitigation". These connections
>> represent some kind of relation. So ideally, this map should help to navigate in
>> documentation and Linux kernel sources.
>>
>> I wrote it in DOT language and generated the picture using GraphViz. So it is
>> very pleasant to maintain this map with git.
>>
>> I would be grateful for any feedback.

Hello Kees,

Thanks a lot for your reply!

> This is cool; thanks for starting it! There are many nuances, details,
> and caveats for a lot of the defense details, but I do like showing
> the general relationships. Having some much longer accompanying text
> would be nice to dive more deeply into each bubble in the chart. I'd
> like to capture as much of that as possible in upstream's
> Documentation/security/self-protection.rst! :)

Yes, self-protection.rst is a really nice reading. There is a link to it in the
References section below the map. Moved it before the map.

> Some initial thoughts in looking at the chart:
> 
> 
> Upstream's SLAB_FREELIST_HARDENED is based on an "unnamed" (always-on)
> grsecurity defense (see commit 2482ddec670f), so that should have a
> dashed line, but I'm not sure how to name the new bubble.

Ok. Added a "by default in grsecurity" node connected with
SLAB_FREELIST_HARDENED. That will show the origin of the idea.

At the same time SLAB_FREELIST_HARDENED contains my "fasttop" check against
double-free. So I've put SLAB_FREELIST_HARDENED and that origin node at the same
level.

> KPTI defends against info leaks and "finding kernel objects" too, in a
> way. Maybe just add a whole "side channels" bubble?

Good idea. Added "Side Channels" and RETPOLINE.

> (I think "info leaks" and "finding kernel objects" may need some kind
> of clarifying language for how they're different)

Info Exposure is a vulnerability (red node). STACKLEAK, PAGE_POISONING, etc
mitigate this kind of bugs.

Finding Kernel Objects is an exploitation technique (orange node). KASLR,
RANDSTRUCT are statistical defences which make it harder for an adversary.

Kees, Kurt, does it sound reasonable?

> I didn't immediately parse that "Pointer Obfuscation" meant the %p
> hashing, but I don't have a good suggestion about how to improve that
> language. :)

Yes, I've extracted this term from the patch discussion )

> Upstream's /proc/sys/net/core/bpf_jit_harden (see commit 4f3446bb809f)

Thanks, added.

> and other JIT features (RO-setting, randomized offset, etc) are
> designed to defend against JIT Abuse.

Didn't manage to find config for them. Are they always enabled?

> UDEREF and SMAP pointing at ret2usr+ROP is fine, but seems
> "incomplete". Is there a good name for "reading user memory and
> operating on a malicious structure"? It's a more narrow exploit
> technique than ROP or executing userspace memory, but it's important
> to cover.

Yes, agree. That's what I did exploiting CVE-2017-2636: allocating struct
skb_shared_info in the userspace memory with the destructor callback pointing to
native_write_cr4() to disable SMEP. Is it what you mean?

I've added "ret2usr + type confusion". Do you like it?

Kurt, that is CWE-843: Access of Resource Using Incompatible Type ('Type
Confusion').

> I'd expect UDEREF to point at ret2usr, too.

Thanks, fixed.

> Maybe add CPU_SW_DOMAIN_PAN and ARM64_SW_TTBR0_PAN to point at both
> ret2usr and the new "access userspace" bubble?

Ok. I've added them pointing to SMAP/PAN with dotted line (since they emulate
PAN in some manner).

Kees, thanks again for such a cool feedback. The map is updated.

Best regards,
Alexander
