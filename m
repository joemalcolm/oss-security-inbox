Received: (qmail 3157 invoked by uid 550); 4 May 2026 18:16:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1100 invoked from network); 4 May 2026 18:16:07 -0000
Date: Mon, 4 May 2026 20:15:24 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: Demi Marie Obenour <demiobenour@gmail.com>,
	Richard Kettlewell <rjk@terraraq.uk>
Message-ID: <20260504181524.GA19200@openwall.com>
References: <afJorKIje4O6dXbH@netmeister.org> <d6111caa-db61-498a-92cb-ea7a0aa0a5e2@ehuk.net> <87se8dgicq.fsf@gentoo.org> <afL-QhLfEKqHZqka@eldamar.lan> <20260430071917.GB54208@sol> <177abb5d-8ba9-4bb9-8b23-9fbc868ed3cd@gmail.com> <cfe5a1f5-f7fe-44a5-8af9-8e4c8d68b3d7@terraraq.uk> <3a52a111-e961-4ac6-830c-31465a7d14de@gmail.com> <f0be2b33-4f27-489f-85d2-1dfe9826e022@terraraq.uk> <74e8e566-4f5e-4cd3-afa1-a66e288bf8f3@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <74e8e566-4f5e-4cd3-afa1-a66e288bf8f3@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] CVE-2026-31431: CopyFail: linux local privilege scalation

On Mon, May 04, 2026 at 01:07:25PM -0400, Demi Marie Obenour wrote:
> On 5/4/26 07:28, Richard Kettlewell wrote:
> > On 02/05/2026 23:32, Demi Marie Obenour wrote:
> >> Can you provide benchmarks showing that the accelerator is faster
> >> than the CPU on realistic workloads?
> > 
> > The consistent improvements in latency and throughput started around the 
> > 2Kbyte block size (10-20%) and improved as blocks grew, with around 50% 
> > latency reduction and 150% throughput increase at 250Kbyte blocks (which 
> > is close to our message size limit).
> > 
> > Obviously this reflects the hardware we are using (which has no AES 
> > support in the application cores), outcomes may differ on other targets.
> 
> Can you use ChaCha20-Poly1305 or Adiantum instead of AES?  That should
> be significantly faster on the CPU

Let's please wind down this sub-thread.  I think it is immaterial to the
original discussion whether alternative ciphers are an option in a given
case.  In some cases they will be, in others not.

Alexander
