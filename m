X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2639" "Saturday" "2" "May" "2015" "17:14:19" "+0200" "Michael Scherer" "misc@zarb.org" "<20150502151418.GA17491@sisay.ephaone.org>" "57" "Re: [oss-security] Re: CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory" nil nil nil "5" "2015050215:14:19" "[oss-security] Re: CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory" (number mark "        misc@zarb.or May  2   57/2639  " thread-indent "\"Re: [oss-security] Re: CVE Request / Ansible: insecure permission on a directory when using spacewalk inventory\"\n") "<CAMFyvFhfqkDU6ORLKdNM1n47W_c0OWG3JVssJVuF9QB6fZE5xg@mail.gmail.com>" ("<20150502035433.GA6750@sisay.ephaone.org>" "<CAMFyvFhfqkDU6ORLKdNM1n47W_c0OWG3JVssJVuF9QB6fZE5xg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8175 invoked by uid 550); 2 May 2015 15:14:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8153 invoked from network); 2 May 2015 15:14:31 -0000
Message-ID: <20150502151418.GA17491@sisay.ephaone.org>
References: <20150502035433.GA6750@sisay.ephaone.org>
 <CAMFyvFhfqkDU6ORLKdNM1n47W_c0OWG3JVssJVuF9QB6fZE5xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
In-Reply-To: <CAMFyvFhfqkDU6ORLKdNM1n47W_c0OWG3JVssJVuF9QB6fZE5xg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: security@ansible.com
Date: Sat, 2 May 2015 17:14:19 +0200
From: Michael Scherer <misc@zarb.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: CVE Request / Ansible: insecure permission
 on a directory when using spacewalk inventory
To: oss-security@lists.openwall.com

On Sat, May 02, 2015 at 08:54:10AM -0500, James Cammarata wrote:
> Hi Michael,
> 
> Thanks for finding this and fixing it, however we're not sure if this
> requires a CVE? 

The CVE is just a way to track the issue. Not all problem with a CVE requires
a immediate update ( or even a update at all ), even if people think 
"there is a CVE so we must fix fast".

I do not consider it critical either to be handled privately, hence the cc to 
oss-sec to get the opinion of others.

> First of all, the impacted script is an optional inventory
> script, which is not packaged with Ansible directly and must be downloaded
> from the source repository.

I use the git repo, so indeed, I didn't see that.

> Second, the script (as you mentioned) creates
> this directory typically in a relatively secure location, so the chances of
> it being exposed are greatly lessened. Also, this is a relatively
> under-utilized script, as not many people that we know of are getting host
> information from Spacewalk using this script. Finally, the data contained
> within that cache file is not very sensitive, and would typically only
> contain the host IP information of systems from Spacewalk.

One potential attack is also that someone inject data in the cache, since
the file is open without checking for permission, either read or write.
So if I inject in the cache a server that I control, I can make ansible 
connect to it, and make it deploy a role with password/certificate 
that I may not be able to access usually.

So the impact is potential information disclosure, not on spacewalk 
level, but on the ansible level.

One example of such setup (minus the spacewalk thing) would Fedora, where only
few people have access to the private information and everybody is required
to use ansible via sudo on a shared bastion to make changes. And where most people 
do not have root access to all servers. I think such tiered access schemes are
not that uncommon.

So yeah, it is a very specific scenario, and the combination of using spacewalk
and that use case make it unlikely to be a problem in practice for most people, 
so it is not critical to fix right away, I agree. But still a CVE would be useful
for tracking.

> If a CVE is issued, we can mention it in the release, but we'd much rather
> simply fix this ASAP and include it in the next major/minor release of
> Ansible (2.0 and 1.9.2, respectively).

2.0 is not ready, so the real question is around 1.9.2, is it planned to
be out very soon ? What about saying "we wait a few days for the CVE", and
then merge the patch if the CVE is not assigned by the 5th of may ?

-- 
Michael Scherer
