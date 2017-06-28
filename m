X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3662" "Wednesday" "28" "June" "2017" "08:58:26" "+0200" "Dominique Martinet" "asmadeus@codewreck.org" "<20170628065826.GA4865@nautica>" "107" "Re: [oss-security] CoreOS membership to linux-distros" "^Date:" nil nil "6" "2017062806:58:26" "[oss-security] CoreOS membership to linux-distros" (number mark "        asmadeus@cod Jun 28  107/3662  " thread-indent "\"Re: [oss-security] CoreOS membership to linux-distros\"\n") "<CY4PR11MB1592EFB766E40EEBE5D9F749DADD0@CY4PR11MB1592.namprd11.prod.outlook.com>" ("<e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>" "<CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>" "<13697db2-497e-e64a-5a6f-e66100e2dc22@coreos.com>" "<CY4PR11MB1592EFB766E40EEBE5D9F749DADD0@CY4PR11MB1592.namprd11.prod.outlook.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24574 invoked by uid 550); 28 Jun 2017 09:55:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25648 invoked from network); 28 Jun 2017 06:58:53 -0000
Message-ID: <20170628065826.GA4865@nautica>
References: <e2ec939c-1fa5-8619-7771-d68ee2bff13c@coreos.com>
 <CANO=Ty1Py6iabbmct=ic55=sNRaRdUxDnucZjftb=B==56NzCw@mail.gmail.com>
 <13697db2-497e-e64a-5a6f-e66100e2dc22@coreos.com>
 <CY4PR11MB1592EFB766E40EEBE5D9F749DADD0@CY4PR11MB1592.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline
In-Reply-To: <CY4PR11MB1592EFB766E40EEBE5D9F749DADD0@CY4PR11MB1592.namprd11.prod.outlook.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Date: Wed, 28 Jun 2017 08:58:26 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CoreOS membership to linux-distros
To: oss-security@lists.openwall.com

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Sven Dowideit wrote on Wed, Jun 28, 2017:
> I'm responsible for RancherOS, and think that both I, and my users
> would prefer that I had access to the embargoed information earlier,
> so preparing a response would have been less of a rush.

I can relate to the rush feeling, even with few users/"private" distro
here, having a custom kernel makes this kind of fixes annoying...
But given the delayed exploit release I'd say it does not really matter
if you take a few days for this, especially in this case with the low
success rate on 64bit linux. As soon as reasonably possible does not
necessarily mean rush.

As a rhel/centos spin-off though we would have liked the bug brought up
here ( https://bugzilla.redhat.com/show_bug.cgi?id=1463241 ) to have its
fix published faster though, it's apparently been ready for a week but
not been published... I don't mind bugs, but if it's fixed it's annoying
to keep it behind closed doors.


> One of the things that would have made my last week less worrying, is
> to have some access to exploit code - so as to verify the changes
> actually had a useful effect.

You don't need an actual exploit to test this. You're not the first
person who have told me this so I actually took some time this morning
to whip up a "tester" -- it's probably far from perfect but will run
successfully on older debian/rhel and crash with a patched kernel as
expected, and is as inoffensive as it can get.

I'm sure there are other better testers online, I didn't try looking as
I don't get much chance to play with this kind of stuff :)


Qualys gave a lot of details in their report (kudos to well written
advisories like that!), I agree having everything on a golden plate is
better but it really isn't much work left for smaller distros if you
trust the big ones or even just upstream, once bugs got steamed out.

-- 
Asmadeus | Dominique Martinet

--h31gzZEtNLTqOjlF
Content-Type: text/x-csrc; charset=utf-8
Content-Disposition: attachment; filename="teststackclash.c"

/** Stack Clash kernel "stack gap" patch tester
 *
 * WTFPLv2 - do whatever the fuck you want with this
 * Dominique Martinet <asmadeus@codewreck.org>
 *
 * gcc -o teststackclash teststackclash.c && ./teststackclash
 */

#include <stdio.h>
#include <sys/mman.h>
#include <alloca.h>
#include <unistd.h>
#include <errno.h>
#include <inttypes.h>

#define MMAP_OFFSET (1024*1024)

int main(int argc, char argv[]) {
	void *stackedge, *stackaddr, *mmapaddr;
	char ispresent;

	printf("Address within stack: %p, looking for stack start edge...\n", &stackedge);

	stackedge = (void*)((uintptr_t)&stackedge & 0xfffffffffffff000);
       	while (mincore(stackedge, 1, &ispresent) == 0)
		stackedge -= 4096;

	if (errno != ENOMEM) {
		printf("unexpected mincore errno: %d\n", errno);
		return -1;
	}

	printf("Stack starts here: %p, doing mmap largely before it (%p)\n", stackedge+4096, stackedge-MMAP_OFFSET);
	errno = 0;


	mmapaddr = mmap(stackedge-MMAP_OFFSET, 4096, PROT_WRITE, MAP_ANONYMOUS | MAP_PRIVATE | MAP_FIXED, 0, 0); 
	if (mmapaddr == MAP_FAILED) {
		printf("mmap failed: %d\n", errno);
		return -1;
	}

	if (mmapaddr != stackedge - MMAP_OFFSET) {
		printf("mmap ok, but didn't respect MAP_FIXED hint: %p\n", mmapaddr);
		return -1;
	}

	printf("mmap ok, allocating within stack until it grows (should crash with that mmap)\n");
	while ((stackaddr = alloca(4096)) > stackedge);


	// ((char*)mmapaddr)[0] = 1; // actually didn't even need to write in map
	printf("Didn't crash, stack gap guard <1MB or didn't care about our map\n");

	return 0;
}

--h31gzZEtNLTqOjlF--
