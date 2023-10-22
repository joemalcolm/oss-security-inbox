Received: (qmail 1368 invoked by uid 550); 22 Oct 2023 16:26:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1350 invoked from network); 22 Oct 2023 16:26:37 -0000
Date: Sun, 22 Oct 2023 11:26:25 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@scrappy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <ZTVFrvd2h+70PhaV@itl-email>
Message-ID: <alpine.GSO.2.20.2310221118590.6992@scrappy.simplesystems.org>
References: <56c8798b-0ad7-652b-d034-90229b6768f7@gmail.com> <20231022000649.GA14340@openwall.com> <ZTRwxHaoUqTPyf+b@itl-email> <alpine.GSO.2.20.2310220847390.6992@scrappy.simplesystems.org> <ZTVFrvd2h+70PhaV@itl-email>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Sun, 22 Oct 2023 11:26:25 -0500 (CDT)
Subject: Re: [oss-security] sandboxing,of upstream programs by distros

On Sun, 22 Oct 2023, Demi Marie Obenour wrote:

>> Unfortunately, most Linux IPC mechanisms are not very secure since they rely
>> on historical Unix privilege models to control access.
>
> If one can bypass access control on IPC, one can easily get root by
> sending malicious commands to systemd, so I don't think this is
> something to worry about.

Looking at the 5 rules you posted, my concern is addressed by rule #2 
(I/O resources opened in advance).

> 2. All I/O resources (such as file descriptors) must be acquired before
>   processing untrusted input.  It must not be possible to use these
>   resources to access additional resources the program should not have
>   access to.

This request seems the most challenging to satisfy.

> A command-line tool can probably meet all of these requirements but the
> last one quite easily.  For a library, the difficulty of meeting these
> requirements will depend significantly on the library API.  I am not
> familiar with the GraphicsMagick API and so am not sure how difficult it
> will be for the GraphicsMagick API to support sandboxing.

A different I/O interface module would need to be developed to support 
the possibility of opening an output descriptor in advance.

If one looks at ImageMagick, VIPS, GraphicsMagick, etc., one will 
quickly see that those implementations optionally depend on tens of 
other implementations.  For example, VIPS normally links with 
ImageMagick or GraphicsMagick.  So many important programs have 
complex dependencies.

It is common for temporary files to be created and so this issue would 
need to be addressed.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
