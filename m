Received: (qmail 1551 invoked by uid 550); 7 May 2024 10:50:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15610 invoked from network); 7 May 2024 09:10:24 -0000
From: Peter Korsgaard <peter@korsgaard.com>
To: "Yann E. MORIN" <yann.morin.1998@free.fr>
Cc: Ben Hutchings <ben.hutchings@mind.be>,  oss-security@lists.openwall.com,
  buildroot@buildroot.org
References: <20240411152016.1185109-1-ben.hutchings@mind.be>
	<ZhgCNMQXfxPXuqvs@cephalopod> <Zjiv9wzmqtfy8DYr@cephalopod>
	<ZjkiIepSLogcd1zY@landeda>
Date: Tue, 07 May 2024 11:10:14 +0200
In-Reply-To: <ZjkiIepSLogcd1zY@landeda> (Yann E. MORIN's message of "Mon, 6
	May 2024 20:32:01 +0200")
Message-ID: <87zft2vvgp.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.2 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-GND-Sasl: peter@korsgaard.com
Subject: [oss-security] Re: Buildroot: incorrect permissons on /dev/shm

>>>>> "Yann" == Yann E MORIN <yann.morin.1998@free.fr> writes:

 > Ben, All,
 > On 2024-05-06 12:24 +0200, Ben Hutchings via buildroot spake thusly:
 >> On Thu, Apr 11, 2024 at 05:31:02PM +0200, Ben Hutchings wrote:
 >> > Buildroot is a Linux distribution and system builder for embedded
 >> > systems.  Starting in Buildroot 2011.08, its default /etc/fstab
 >> > included an entry for /dev/shm with incorrect permissons (sticky bit
 >> > not set). (CWE-276)
 >> > 
 >> > Buildroot 2017.08 removed this entry for systems using systemd, and it
 >> > has never been included for systems using OpenRC.  So this only
 >> > affects Buildroot-built systems that use sysvinit, and some older
 >> > systems that use systemd.
 >> [...]
 >> 
 >> This has been assigned CVE-2024-34455.

 > Thanks for th efeedback. The fix has already been committed, with commit
 > 0b2967e158 (package/skeleton-init-sysv: Set sticky bit on /dev/shm) that
 > I applied on 2024-04-11.

And it is included in the recently released 2024.02.2 rlease:

https://lore.kernel.org/buildroot/874jbaxb7g.fsf@dell.be.48ers.dk/T/#u

-- 
Bye, Peter Korsgaard
