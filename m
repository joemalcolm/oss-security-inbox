Received: (qmail 13964 invoked by uid 550); 3 May 2026 04:44:58 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 7741 invoked from network); 3 May 2026 04:43:33 -0000
Date: Sat, 2 May 2026 21:43:21 -0700
From: nightmare.yeah27@aceecat.org
To: oss-security@lists.openwall.com
Message-ID: <WxmRz2euk4ueOgjy@aceecat.org>
Mail-Followup-To: oss-security@lists.openwall.com
References: <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net>
 <87se8dgicq.fsf@gentoo.org>
 <afL-QhLfEKqHZqka@eldamar.lan>
 <2026043026-treat-devotion-23d7@gregkh>
 <CAPmip_zqswCZ6PfnW_DPEoSuY6Jewfw1eyeP_azYH4JFgRipNA@mail.gmail.com>
 <12a8c210-2f79-4fa2-a9c6-bbd203325f42@oracle.com>
 <315f9a67337d8e930cfb95a4b644946bf2f69687.camel@thirddimension.net>
 <20260501165221.27420-1-justin.swartz@risingedge.co.za>
 <56cd1494d297ad327a8c2a4cc77308559fbee7f8.camel@thirddimension.net>
 <87qzntmqqr.fsf@linuxpenguins.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87qzntmqqr.fsf@linuxpenguins.xyz>
Subject: [oss-security] Re: CVE-2026-31431: CopyFail: linux local privilege scalation

On Sun, May 03, 2026 at 07:43:56AM +1000, Brian May wrote:

> But I heard some enterprise kernels came with the code compiled into the
> kernel, and these required a kernel command line option and a reboot to
> fix.

VPSs provided by Linode/Akamai have the "option" (see below) to boot
their kernel, so that no kernel package needs even to be installed in
the image.  That kernel is monolithic, and as far as I can see there
isn't a way to pass kernel options, either. As of today, the kernel
build options relevant to this bug seem to be still enabled, and
Akamai has this to say about it:

https://status.linode.com/incidents/msqh44ktjp9g

In the past, I have tried using distro or self compiled kernels
instead which is possible in theory, but I have found in that case
there was a non-negligible chance of the system not coming back from
reboot.

-- 
Ian
