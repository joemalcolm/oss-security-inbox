Received: (qmail 23923 invoked by uid 550); 22 May 2022 19:47:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23763 invoked from network); 22 May 2022 19:47:25 -0000
Date: Sun, 22 May 2022 21:46:45 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20220522194644.GB21330@openwall.com>
References: <20220515162740.GA20526@openwall.com> <YoKiGWAX4E/mbGWB@kroah.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YoKiGWAX4E/mbGWB@kroah.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] linux-distros list policy and Linux kernel

On Mon, May 16, 2022 at 09:12:25PM +0200, Greg KH wrote:
> Taking this a bit further, why is the kernel "special" for something
> like this?  Why wouldn't this also apply to any other project with a
> reasonable number of developers where you want additional review and
> acceptance of changes before the world is notified that an issue was
> fixed?  That allows issues to be fixed, and to be in place on users
> systems before the issue is made public.
> 
> I would imagine that projects like Kubernetes, or Jenkins, or Docker or
> Mozilla or Chrome or other large systems would also fall into this
> category.  Heck, smaller projects too, the size shouldn't matter, what
> matters is that users have the ability to upgrade before security issues
> are told to the world, ensuring that user's systems are safe.

For issues commonly brought to (linux-)distros, we currently only
encounter this sort of conflicting preferences with the Linux kernel
community.  I guess some other projects also release silent fixes that
are only later documented to have known security relevance.  Maybe our
policy plays a role in non-reporting of such issues to distros, or maybe
not.  For example, we generally do not receive reports of
vulnerabilities in Firefox and Chrome/ium to the distros list, but I
don't recall anyone ever expressing any unhappiness about that - neither
those projects nor the distros.  So it's kind of fine?

> it's your list, not mine, if
> you are tired of running it, I totally understand.

A bit tired, yes, but that's in part because of us fighting each other's
windmills.

Alexander
