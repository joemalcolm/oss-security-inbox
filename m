Received: (qmail 15559 invoked by uid 550); 4 Oct 2023 13:42:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14069 invoked from network); 4 Oct 2023 13:41:55 -0000
Date: Wed, 4 Oct 2023 15:41:50 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20231004134150.GB27450@openwall.com>
References: <E1qko5Z-0003cF-KD@xenbits.xenproject.org> <ZROMd1GCpD8uDtbE@itl-email> <20231003201212.GA24599@openwall.com> <1786f020-2af8-4adb-bb4c-5dc87c545dcd@citrix.com> <20231003214424.prarc3aboi3ar7zk@yuggoth.org> <CADxcaYUe3Mj-VYn7j5T_JoF-vhDeqxJh9CZXm-r+z27zrnjwow@mail.gmail.com> <20231003225156.GA26670@openwall.com> <CADxcaYX-XvrKe4R-mSzK2iNVm9F_dRtz1Bf2Zi8jqWbCXGKK9g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CADxcaYX-XvrKe4R-mSzK2iNVm9F_dRtz1Bf2Zi8jqWbCXGKK9g@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Advisory 439 v1 (CVE-2023-20588) - x86/AMD: Divide speculative information leak

Regarding AMD not intending to provide a microcode mitigation:

On Tue, Oct 03, 2023 at 04:04:31PM -0700, Jean Luc Picard wrote:
> No intent?  It wouldn't be terribly hard

Possibly not terribly hard, but (with my also too limited understanding)
probably not in any of the ways you suggested.

> That said I could understand the
> want to depricate zen1 support entirely, everyone upgraded when they could
> it was super super cheap to do so & there weren't really any enterprise
> users.

That's false.

Zen1 is still found in major clouds.  The AMD security bulletin:

https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7007.html

specifically lists "Datacenter AMD EPYC 7001 Processors" as affected,
and these are used e.g. in:

https://aws.amazon.com/about-aws/whats-new/2021/04/amazon-ec2-instances-featuring-amd-epyc-processors-are-now-available-in-additional-regions/

"M5a, R5a and T3a instances are variants of Amazon EC2 general purpose
(M5), memory optimized (R5) and burstable general-purpose (T3) instance
families. These instances feature AMD EPYC 7001 series processors"

That was in 2021, but indeed the T3a tab at:

https://aws.amazon.com/ec2/amd/

still says:

"Amazon EC2 T3a instances feature AMD EPYC 7000 series processors"

T3 are the most common/default AWS instance family with Intel CPUs, and
T3a are probably the most commonly used AMD alternative to them.

I don't mean to single out AWS, I think it's similar with many other
cloud and dedicated server providers.  This is just a prominent example.

Alexander
