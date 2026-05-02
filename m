Received: (qmail 28443 invoked by uid 550); 2 May 2026 22:33:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 23633 invoked from network); 2 May 2026 21:04:04 -0000
Date: Sat, 2 May 2026 23:03:53 +0200
From: Alexander Bochmann <ab@lists.gxis.de>
To: oss-security@lists.openwall.com
Message-ID: <afZmueWiq1XOBvF2@gxis.de>
References: <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
 <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
 <20260502185608.24115-1-justin.swartz@risingedge.co.za>
 <20260502200500.GB229884@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260502200500.GB229884@google.com>
Subject: Re: [oss-security] Re: Re: CVE-2026-31431: CopyFail: linux local
 privilege scalation

...on 2026-05-02 20:05:00, Eric Biggers wrote:

 > What it does break are a small set of userspace programs that made the
 > shortsighted decision to use AF_ALG, instead of simply following the
 > standard practice of using a userspace crypto library.

For some added fun - I noticed that Debian 13, for example, 
ships an openssl build with an AF_ALG engine, so uh, yeah, 
depending on how you use your userspace crypto library... 

No idea if that has any actual consumers anywhere out there 
today.

$ openssl version
OpenSSL 3.5.5 27 Jan 2026 (Library: OpenSSL 3.5.5 27 Jan 2026)
$ openssl engine afalg -c
(afalg) AFALG engine support
 [AES-128-CBC, AES-192-CBC, AES-256-CBC]

Alex.

