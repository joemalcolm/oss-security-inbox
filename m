X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1393" "Thursday" "11" "July" "2019" "10:57:15" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>" "30" "Re: [oss-security] Privileged File Access from Desktop Applications" "^cc:" nil nil "7" "2019071115:57:15" "[oss-security] Privileged File Access from Desktop Applications" (number mark "        bfriesen@sim Jul 11   30/1393  " thread-indent "\"Re: [oss-security] Privileged File Access from Desktop Applications\"\n") "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>" ("<200975c0f23706ce513744052225ea7dc9842206.camel@suse.com>" "<20190709113036.0f12d057@jabberwock.cb.piermont.com>" "<9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com>" "<20190711093326.328948dc@jabberwock.cb.piermont.com>" "<de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com>" "<20190711114710.09ab5ad9@jabberwock.cb.piermont.com>") nil nil nil nil nil nil nil "Re: [oss-security] Privileged File Access from Desktop Applications" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 8190 invoked by uid 550); 11 Jul 2019 15:57:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8101 invoked from network); 11 Jul 2019 15:57:27 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
Message-ID: <alpine.GSO.2.20.1907111050290.8466@scrappy.simplesystems.org>
References: <200975c0f23706ce513744052225ea7dc9842206.camel@suse.com> <20190709113036.0f12d057@jabberwock.cb.piermont.com> <9148ee55db2cabb111f790513413823996d04cb6.camel@suse.com> <20190711093326.328948dc@jabberwock.cb.piermont.com>
 <de14296ba908c162036a15b1aeda95586ff8ba14.camel@suse.com> <20190711114710.09ab5ad9@jabberwock.cb.piermont.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 11 Jul 2019 10:57:15 -0500 (CDT)
cc: Malte Kraus <malte.kraus@suse.com>
Date: Thu, 11 Jul 2019 10:57:15 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Privileged File Access from Desktop
 Applications
To: oss-security@lists.openwall.com

On Thu, 11 Jul 2019, Perry E. Metzger wrote:
>
> It seems like a bad idea.
>
> If one wants to have mechanisms by which the operating system can
> allow unprivileged programs to temporarily assume privileges (which
> is a frequent idea in security), then they should be carefully
> designed and part of the OS, rather than creating an ad hoc facility
> via a subsystem that isn't intended for it. There are good ways to do
> that, like capabilities.

I agree.  It is rather common that more than one file needs to be 
modified at one time.  If a more complex mechanism like a sqlite3 
database needs to be updated, then the implementation of sqlite3 will 
expect to be able to access files in a normal way and it will expect 
to be use all the abilities it normally uses.  It is rather common 
that atomic operations are required, locking is required, the ability 
to link/rename files is required, and that synchronization of file 
content and directories is required.

In addition to the security concerns, it is difficult to see how a 
virtual filesystem intended for use by simplistic GUI file managers 
will satisfy common administrative requirements.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
