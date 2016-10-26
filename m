X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["747" "Wednesday" "26" "October" "2016" "10:08:56" "+0200" "Agostino Sarubbo" "ago@gentoo.org" "<8284992.IKFRmaKcSl@blackgate>" "21" "Re: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" nil nil nil "10" "2016102608:08:56" "[oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)" (number mark "U       ago@gentoo.o Oct 26   21/747   " thread-indent "\"Re: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)\"\n") "<CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>" ("<2510502.0NpgWQPfkR@blackgate>" "<20161023010359.42F65336005@smtpvbsrv1.mitre.org>" "<CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15745 invoked by uid 550); 26 Oct 2016 08:09:16 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15724 invoked from network); 26 Oct 2016 08:09:15 -0000
From: Agostino Sarubbo <ago@gentoo.org>
To: Tavis Ormandy <taviso@google.com>
Cc: oss-security@lists.openwall.com, Assign a CVE Identifier <cve-assign@mitre.org>
Date: Wed, 26 Oct 2016 10:08:56 +0200
Message-ID: <8284992.IKFRmaKcSl@blackgate>
User-Agent: KMail/4.14.10 (Linux/4.4.21-gentoo; KDE/4.14.24; x86_64; ; )
In-Reply-To: <CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>
References: <2510502.0NpgWQPfkR@blackgate> <20161023010359.42F65336005@smtpvbsrv1.mitre.org> <CAJ_zFkJFCUiOb+S46jM87qundu4rYO1QhxQ85KJHb_zKVOggzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [oss-security] Re: jasper: memory allocation failure in jas_malloc (jas_malloc.c)

On Tuesday 25 October 2016 12:13:44 Tavis Ormandy wrote:
> I'm not sure I understand the concern here. Isn't it usually expected
> that the administrator configures appropriate ulimits, and the code
> should just handle allocation failure gracefully?
> 
> If we are considering *not* implementing arbitrary hardcoded limits a
> security problem, that seems like a significant change in software
> design philosophy (I've heard it called the zero-one-infinity rule
> before).
> 
> Tavis.

Tavis,

more or less I agree with you, but since time ago I saw that similar bugs 
reveiced a CVE, I thought that these type of bugs could interest the community 
and them I'm sharing them.
If I'm not mistaken, CWE-789 covers these type of bugs.

--
Agostino
