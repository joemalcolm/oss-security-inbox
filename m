X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2344" "Wednesday" "20" "November" "2019" "15:08:58" "-0600" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1911201436000.15536@scrappy.simplesystems.org>" "53" "Re: [oss-security] Mitigating malicious packages in gnu/linux" "^Date:" nil nil "11" "2019112021:08:58" "[oss-security] Mitigating malicious packages in gnu/linux" (number mark "        bfriesen@sim Nov 20   53/2344  " thread-indent "\"Re: [oss-security] Mitigating malicious packages in gnu/linux\"\n") "<20191120194339.hu25lkzlozia2mme@yuggoth.org>" ("<CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com>" "<20191120124425.GA25554@openwall.com>" "<CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com>" "<alpine.GSO.2.20.1911201315110.15536@scrappy.simplesystems.org>" "<20191120194339.hu25lkzlozia2mme@yuggoth.org>") nil nil nil nil nil nil nil "Re: [oss-security] Mitigating malicious packages in gnu/linux" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 9983 invoked by uid 550); 20 Nov 2019 21:09:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9948 invoked from network); 20 Nov 2019 21:09:11 -0000
X-X-Sender: bfriesen@scrappy.simplesystems.org
In-Reply-To: <20191120194339.hu25lkzlozia2mme@yuggoth.org>
Message-ID: <alpine.GSO.2.20.1911201436000.15536@scrappy.simplesystems.org>
References: <CAGUWgD8LDusq3PyWeMd-RoDhOtfiebVtKKV_39GhG+8c0QYFYg@mail.gmail.com> <20191120124425.GA25554@openwall.com> <CANuUHoGe6x5ntTBMMX0rLDFWbFeMd3FXGKJtrK5NjF=t7QV-0Q@mail.gmail.com> <alpine.GSO.2.20.1911201315110.15536@scrappy.simplesystems.org>
 <20191120194339.hu25lkzlozia2mme@yuggoth.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 20 Nov 2019 15:08:59 -0600 (CST)
Date: Wed, 20 Nov 2019 15:08:58 -0600 (CST)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Mitigating malicious packages in gnu/linux
To: oss-security@lists.openwall.com

On Wed, 20 Nov 2019, Jeremy Stanley wrote:

> On 2019-11-20 13:28:04 -0600 (-0600), Bob Friesenhahn wrote:
> [...]
>> Modern GNU/Linux systems have far too much executing code to
>> reasonably secure. Paring down the amount of executing code helps
>> quite a lot with improving security.
>
> In your opinion, how does this compare with proprietary operating
> systems? Do they have more or less code executed than modern
> GNU/Linux systems (or can we even know)? How about the popular BSD
> Unix derivatives? What is your benchmark for the correct amount of
> code to be executed, or is this analysis based on comparison with an
> abstract ideal operating system archetype?

These are all good questions.

I use OmniOSce (a free-software Sun Solaris/SVR4 server derivative), 
and it claims (https://omniosce.org/setup/freshinstall) to require 
8GiB of space but I recall an original install of less than 4GiB.  A 
Ubuntu 18.04 KDE desktop system here (Kubuntu) used for software 
development seems to be consuming about 20GiB of space.

I work on dedicated Linux-based systems where the root filesystem 
takes just 16MiB (compressed) of space (19MiB including boot 
firmware).  Linux-based systems are still able to boot and run from a 
CD.

BSD systems which are used as firewalls or for dedicated functions can 
be quite small.

The amount of software installed and running on Linux systems 
continues to grow rapidly, and tend to defeat the end user from 
understanding the purpose or even being aware of the existence of the 
applications.  With a great many libraries and applications brought in 
as metapackage dependencies, the security exposure of typical Linux 
desktop systems seems quite high.

A secure system should do almost nothing by default with each service 
enabled only starting absolutely required software to perform the 
function.  Functionality should be incrementally enabled.  This is not 
what modern Linux desktops are like.

Regardless, the source for these systems is the original source code 
and a defect or malign intent of the source code can bring down the 
whole system.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
