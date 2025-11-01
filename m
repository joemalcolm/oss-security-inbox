Received: (qmail 7877 invoked by uid 550); 1 Nov 2025 02:19:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 32231 invoked from network); 1 Nov 2025 02:18:36 -0000
Date: Sat, 1 Nov 2025 03:18:35 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20251101021835.GA2757@openwall.com>
References: <b3afc964-2840-4583-bb39-e05d390d3e55@citrix.com> <20250306031513.GA4873@openwall.com> <b21e9116-4108-4d52-b3b0-8c1e96486888@citrix.com> <20250306044856.GA6417@openwall.com> <bfaecb7c-25a9-406a-a4ca-a55a32c3ae43@citrix.com> <20250313035536.GA20899@openwall.com> <b66f24d0-6f20-459c-a7ab-c5c6267791a1@citrix.com> <eb6ac191-18a8-45a2-99bf-2bee42b02fca@ehuk.net>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eb6ac191-18a8-45a2-99bf-2bee42b02fca@ehuk.net>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Xen Security Notice 2 (CVE-2024-35347) AMD CPU Microcode Signature Verification Vulnerability

On Thu, Oct 30, 2025 at 04:25:29PM +0000, Eddie Chapman wrote:
> When I skimmed this thread back in April the implications for sysadmins 
> of the changes made by AMD to microcode loading didn't fully hit home. 
> However, with AMD's comment added to amd-ucode/README in their commit 
> [1] to the linux firmware repository this week it finally dawned on me 
> that huge numbers of AMD machines are never going to get future 
> microcode updates, unless their owners update the BIOS.

> [1] 
> https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git/commit/?id=ad91544767665e911386e62ecebaa969e2cfb1c0

Posting the referenced comment directly in here for those too busy to
visit links and for archival:

+NOTE: In order to not fully abandon machines affected by AMD-SB-7033 [1] that
+have not received the BIOS update, the family 19h microcode container now
+includes a second patch for these machines that brings the microcode to the
+highest possible level without the microcode signing fix. While a BIOS update
+is highly recommended to receive the latest security updates issued after the
+microcode signing vulnerability, this will allow non-updated systems to at
+least receive some microcode updates beyond the version provided by BIOS.
+
+The list of additional patches can be seen below:
+  Family=0x19 Model=0x01 Stepping=0x01: Patch=0x0a0011d5 Length=5568 bytes
+  Family=0x19 Model=0x01 Stepping=0x02: Patch=0x0a001238 Length=5568 bytes
+  Family=0x19 Model=0x11 Stepping=0x01: Patch=0x0a101148 Length=5568 bytes
+  Family=0x19 Model=0x11 Stepping=0x02: Patch=0x0a101248 Length=5568 bytes
+  Family=0x19 Model=0xa0 Stepping=0x02: Patch=0x0aa00215 Length=5568 bytes
+
+[1]: https://www.amd.com/en/resources/product-security/bulletin/amd-sb-7033.html

So the issue is those machines without a BIOS update only get their
microcode updated "to the highest possible level without the microcode
signing fix."  Not to the actual latest, and with no future updates.

Alexander
