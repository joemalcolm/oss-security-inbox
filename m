Received: (qmail 15364 invoked by uid 550); 5 Nov 2023 17:41:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10100 invoked from network); 5 Nov 2023 17:38:19 -0000
Date: Sun, 5 Nov 2023 18:38:18 +0100
From: Solar Designer <solar@openwall.com>
To: Pietro Borrello <borrello@diag.uniroma1.it>
Cc: oss-security@lists.openwall.com
Message-ID: <20231105173818.GB23224@openwall.com>
References: <CAEih1qWG=Ww18e6j-07RKND47_xAbwvPyoyMyiiP8GgeE+fEJw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEih1qWG=Ww18e6j-07RKND47_xAbwvPyoyMyiiP8GgeE+fEJw@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Linux Kernel: hid: NULL pointer dereference in hid_betopff_play()

On Wed, Jan 18, 2023 at 04:20:51PM +0100, Pietro Borrello wrote:
> I'm disclosing a possible DoS when plugging in a malicious USB device,
> which advertises itself as a betop USB device.
> 
> A device driver must check that the device correctly registered the
> expected inputs and reports.
> Otherwise, a malicious USB device may violate assumptions throughout
> the driver's code.
> 
> betopff_init() in the betop driver's code only checks that the device advertises
> at least 4 report values among all its fields, but hid_betopff_play() expects
> at least 4 report fields with a value each.
> A device advertising an output report with one field and 4 report values
> would pass the check but crash the kernel with a NULL pointer dereference
> in hid_betopff_play(), when accessing `betopff->report->field[2]->value[0]`.

This was assigned CVE-2023-1073, which also covers two bugs mentioned in
another oss-security posting below:

CVE-2023-1073 - NULL Ptr Deref in betopff_init()
patch:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=3782c0d6edf658b71354a64d60aa7a296188fc90
oss-security: https://www.openwall.com/lists/oss-security/2023/01/18/3

CVE-2023-1073 - Type Confusion in hid_validate_values()
patch:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=b12fece4c64857e5fab4290bf01b2e0317a88456
oss-security: https://www.openwall.com/lists/oss-security/2023/01/17/3

CVE-2023-1073 - Type Confusion in bigben_probe()
patch:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=c7bf714f875531f227f2ef1fdcc8f4d44e7c7d9d
oss-security: https://www.openwall.com/lists/oss-security/2023/01/17/3

Alexander
