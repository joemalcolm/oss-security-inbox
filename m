X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1693" "Wednesday" "22" "June" "2016" "13:11:51" "+0100" "henrix@camandro.org" "henrix@camandro.org" "<8760t1pgmw.fsf@camandro.org>" "55" "Re: [oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" nil nil nil "6" "2016062212:11:51" "[oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ" (number mark "U       henrix@caman Jun 22   55/1693  " thread-indent "\"Re: [oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ\"\n") "<20160622092838.GA9075@openwall.com>" ("<575B352F.9000808@canonical.com>" "<20160622092838.GA9075@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7588 invoked by uid 550); 22 Jun 2016 16:42:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19719 invoked from network); 22 Jun 2016 12:12:26 -0000
From: henrix@camandro.org
To: Solar Designer <solar@openwall.com>
Cc: oss-security@lists.openwall.com
References: <575B352F.9000808@canonical.com>
	<20160622092838.GA9075@openwall.com>
Date: Wed, 22 Jun 2016 13:11:51 +0100
In-Reply-To: <20160622092838.GA9075@openwall.com> (Solar Designer's message of
	"Wed, 22 Jun 2016 12:28:38 +0300")
Message-ID: <8760t1pgmw.fsf@camandro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-BlackCat-Spam-Score: -28
X-Mythic-Debug: Threshold =  On = 
Subject: Re: [oss-security] [vs-plain] Linux kernel stack overflow via ecryptfs and /proc/$pid/environ

Solar Designer <solar@openwall.com> writes:

> On Fri, Jun 10, 2016 at 02:46:23PM -0700, John Johansen wrote:
>> This is a forward notification of a local priv escalation flaw from
>> security@kernel.org to the OSS security list. The CRD was for
>> 2016-06-08 14:00:00 UTC. Patches attached to the email.
>>=20
>> The flaw in eCryptfs was assigned CVE-2016-1583.
>
> The Project Zero issue is now public:
>
> https://bugs.chromium.org/p/project-zero/issues/detail?id=3D836
>
> and it includes an exploit, which I've re-attached.  (The rest of the
> files, including the crasher, were already posted in here by John.)
>
>> Subject: [PATCH 2/3] ecryptfs: forbid opening files without mmap handler
>
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?i=
d=3D2f36db71009304b3f0b95afacd8eba1f9f046b87
>
>> Subject: [PATCH 1/3] proc: prevent stacking filesystems on top
>
> https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?i=
d=3De54ad7f1ee263ffa5a2de9c609d58dfa27b21cd9
>
>> Subject: [PATCH 3/3] sched: panic on corrupted stack end
>
> Not committed?
>

Yup, it's committed:

https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/?id=
=3D29d6455178a09e1dc340380c582b13356227e8df

Cheers,
--=20
Lu=C3=ADs

> Andy Lutomirski is working on virtually mapped stacks with guard pages
> so that kernel stack overflows would be detected:
>
> http://www.openwall.com/lists/kernel-hardening/2016/06/15/1
> http://www.openwall.com/lists/kernel-hardening/2016/06/20/14
>
> Linus wants the 1.5us overhead on task creation to be reduced before
> this gets merged:
>
> http://www.openwall.com/lists/kernel-hardening/2016/06/21/10
>
> Alexander
>
>
>
