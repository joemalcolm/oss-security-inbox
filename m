X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3306" "Thursday" "22" "August" "2019" "11:31:22" "+0200" "Marcus Meissner" "meissner@suse.de" "<20190822093122.GQ6086@suse.de>" "54" "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" "^Date:" nil nil "8" "2019082209:31:22" "[oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" (number mark "        meissner@sus Aug 22   54/3306  " thread-indent "\"Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2\"\n") "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>" ("<CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>" "<C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>") nil nil nil nil nil nil nil "Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB subsystem x2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32298 invoked by uid 550); 22 Aug 2019 09:31:35 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32277 invoked from network); 22 Aug 2019 09:31:34 -0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Message-ID: <20190822093122.GQ6086@suse.de>
References: <CA+fCnZfz=Y41rkacwG6z0d_d6WV=iSkU2R1L-JzxfRKYHnSN9w@mail.gmail.com>
 <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <C1E053CF-5359-43A3-8572-BE6CDFDCC2B1@oracle.com>
Organization: SUSE Software Solutions =?iso-8859-1?Q?Ger?=
 =?iso-8859-1?Q?many_GmbH=2C_GF=3A_Felix_Imend=F6rffer=2C_Mary_Higgins=2C_?=
 =?iso-8859-1?Q?Sri_Rasiah=2C_HRB_21284_=28AG_N=FCrnberg=29?=
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Thu, 22 Aug 2019 11:31:22 +0200
From: Marcus Meissner <meissner@suse.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Linux kernel: multiple vulnerabilities in the USB
 subsystem x2
To: oss-security@lists.openwall.com

On Thu, Aug 22, 2019 at 10:04:42AM +0100, John Haxby wrote:
> 
> 
> > On 20 Aug 2019, at 19:20, Andrey Konovalov <andreyknvl@gmail.com> wrote:
> > 
> > * https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15216
> > 
> > An issue was discovered in the Linux kernel before 5.0.14. There is a
> > NULL pointer dereference caused by a malicious USB device in the
> > drivers/usb/misc/yurex.c driver.
> > 
> > * https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15217
> > 
> > An issue was discovered in the Linux kernel before 5.2.3. There is a
> > NULL pointer dereference caused by a malicious USB device in the
> > drivers/media/usb/zr364xx/zr364xx.c driver.
> > 
> > * https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15218
> > 
> > An issue was discovered in the Linux kernel before 5.1.8. There is a
> > NULL pointer dereference caused by a malicious USB device in the
> > drivers/media/usb/siano/smsusb.c driver.
> > 
> > * https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2019-15219
> > 
> > An issue was discovered in the Linux kernel before 5.1.8. There is a
> > NULL pointer dereference caused by a malicious USB device in the
> > drivers/usb/misc/sisusbvga/sisusb.c driver.
> 
> 
> Are these even realistic?   If I'm going to leave malicious USB devices in the parking lot for mischief am I going to rely on the unknown victim running a Linux distro with the requisite kernel modules or am I going to just drop a cheap and near-universal USB killer?
> 
> If I'm going to be connecting the USB device to unguarded laptops myself to crash them, as opposed to destroy them, why not just casually lean on the power button for a few seconds?[1]
> 
> Actually, this is the CVSS3 score for a laptop's power button: 4.6 (CVSS:3.0/AV:P/AC:L/PR:N/UI:N/S:U/C:N/I:N/A:H (Medium).   There isn't a vector for a USB killer because there's no "A:P" (permanent loss).
> 
> I'm not saying that these aren't bugs that should be fixed, far from it.  That's not the issue.  The issue is that, for example, PCI DSS requires fixes for anything with a score >= 4.0 so we have endless end-users demanding fixes for their servers which don't have even physical access or, indeed, physical presence.  It's not even demanding the fixes as they may already be fixed or simply not applicable because the affected driver isn't present; it's the hours or days wasted verifying that the fix available or not present.[2]
> 
> 
> 
> Frustrated of Lancashire, jch
> 
> 
> [1] Some may remember the VAX 11/750 reset button.  In order to be able to use the serial console (usually a DECwriter) you had to have the key in which also enabled the reset button.   Before I put the VAX "Do Not Copy this Key" key (yes, it fits all 750s) I pressed accidentally pressed the reset button a couple of times just by propping myself up on the machine.  Spectacularly bad design by today's standards.
> 
> 
> [2] Full disclosure.  It's ultimately about me because it's me that eventually gets the "customer requires fix for CVE-2019-15216" :)

In the past we have considered Denial Of Service only USB vulnerabilites as non-issues, as physical access
can cause the same.

USB Vulnerabilities where you can achieve code execution by a malicious USB device are something else though and in my opinion warrant a CVE.

Ciao, Marcus
