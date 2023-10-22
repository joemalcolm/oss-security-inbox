Received: (qmail 16266 invoked by uid 550); 22 Oct 2023 14:20:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16245 invoked from network); 22 Oct 2023 14:20:12 -0000
Date: Sun, 22 Oct 2023 09:19:59 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@scrappy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <ZTRwxHaoUqTPyf+b@itl-email>
Message-ID: <alpine.GSO.2.20.2310220847390.6992@scrappy.simplesystems.org>
References: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com> <20231022000649.GA14340@openwall.com> <ZTRwxHaoUqTPyf+b@itl-email>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="3735943886-912437380-1697984400=:6992"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sun, 22 Oct 2023 09:20:00 -0500 (CDT)
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

--3735943886-912437380-1697984400=:6992
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

On Sat, 21 Oct 2023, Demi Marie Obenour wrote:
>>
>> For Rocky Linux Security SIG, the only relevant thing mentioned so far
>> was possibly offering an OpenBSD pledge()-alike that other packages
>> could use.  However, I am skeptical any actually would, unless we also
>> introduce such uses ourselves and maintain own "override" packages
>> (replacing RHEL rebuild ones or those coming from EPEL, etc.) of such
>> software.  Initially, we are going to only create "override' packages
>> for core or very commonly used/exposed components, and to do so only for
>> specific good reasons.  So stuff like e.g. ImageMagick/GraphicsMagick
>> coming from EPEL and with most of its dependency libraries coming from
>> AppStream repos, or e.g. GraphViz coming from AppStream, is unlikely to
>> make the cut, at least not initially.
>
> Has deprecating ImageMagick and/or GraphicsMagick outright been
> considered?  I don’t just mean the downstream packages, but the entire
> upstream projects, or at least the libraries.

RHEL already deprecated ImageMagick several years ago and advised 
users to use GraphicsMagick 
(https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/7.7_release_notes/deprecated_functionality). 
Those users were confused given that many of the recipes they were 
using for ImageMagick did not work with GraphicsMagick. The solution 
for those users was to find a different way to install ImageMagick.

> One option would be to instead make an IPC call to a persistent daemon
> running in the background.  That said, has wasm2c been considered?  The
> best fix would be something that can make C code memory-safe, even if it
> comes at a performance hit of 4x or more (like SoftBound+CETS did).
> Stuff that cares about performance should be migrating to something like
> libvips or ImageFlow.
>
> If neither of these are options, I think the entire library will need to
> be deprecated for eventual removal.  The command-line tools can remain,
> but they can be much more strongly sandboxed than a library can, because
> they have the entire process to themselves.

Any deprecations or sandboxing approaches which fail to understand and 
address the needs of the "user" will fail.  Replacing package 'A' with 
package 'B', where package 'B' works totally differently, or performs 
different functions than package 'A' will fail because the users will 
not use it.

Unfortunately, most Linux IPC mechanisms are not very secure since 
they rely on historical Unix privilege models to control access. 
Common ways to assure security such as TLS usually result in a 
considerable reduction of performance. Solutions like Landlock seem 
useful for very restricted usage applications.  Sandboxing solutions 
which work for any use of a program seem better than requiring a 
client/server model.

As the developer/maintainer of a complex C program (GraphicsMagick), I 
appreciate any advice on improvements which make it more suitable for 
sandboxing, or less likely to appear as a hazard on the security 
radar.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
--3735943886-912437380-1697984400=:6992--
