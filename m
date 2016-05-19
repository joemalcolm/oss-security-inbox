X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1375" "Thursday" "19" "May" "2016" "12:42:24" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.1605191228070.15930@freddy.simplesystems.org>" "31" "Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714" "^Date:" nil nil "5" "2016051917:42:24" "[oss-security] ImageMagick Is On Fire -- CVE-2016-3714" (number mark "        bfriesen@sim May 19   31/1375  " thread-indent "\"Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714\"\n") "<20160519171836.GC15295@yuggoth.org>" ("<CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com>" "<20160503181505.GA8195@openwall.com>" "<57292879.7050303@gmail.com>" "<alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org>" "<20160519171836.GC15295@yuggoth.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3396 invoked by uid 550); 19 May 2016 17:42:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3374 invoked from network); 19 May 2016 17:42:35 -0000
X-X-Sender: bfriesen@freddy.simplesystems.org
In-Reply-To: <20160519171836.GC15295@yuggoth.org>
Message-ID: <alpine.GSO.2.20.1605191228070.15930@freddy.simplesystems.org>
References: <CABi+pA7xDJhirUFbrVZQkwMnFj--zbNJA8_Aoq-SiJx0QNcsoA@mail.gmail.com> <20160503181505.GA8195@openwall.com> <57292879.7050303@gmail.com> <alpine.GSO.2.20.1605191154150.15930@freddy.simplesystems.org> <20160519171836.GC15295@yuggoth.org>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 19 May 2016 12:42:24 -0500 (CDT)
Date: Thu, 19 May 2016 12:42:24 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] ImageMagick Is On Fire -- CVE-2016-3714
To: oss-security@lists.openwall.com

On Thu, 19 May 2016, Jeremy Stanley wrote:
>> As an example Ubuntu 14.04.4 LTS (which is supposed to be getting
>> security updates) has not provided ImageMagick or GraphicsMagick
>> package updates in 3 years.
> [...]
>
> Seems to be in progress? https://launchpad.net/bugs/1578398

That is good to hear.

OS distribution response seems to be good for software like ISC named 
and OpenSSH but seems to be very poor for this trivial shell-exploit 
issue which impacts a great many (perhaps more than a million) Linux, 
*BSD, Solaris, and OS-X users.  Perhaps this is because the developers 
of such packages are used to providing advance notice and a 
well-formed response and distribution maintainers are practiced and 
ready.

Most people using a graphical desktop (e.g Gnome and KDE) are exposed 
to the issue since ImageMagick (and often GraphicsMagick) is a common 
dependency and clicking on a file in a graphical file manager (or 
delivered as an email attachment) is likely to expose the user to the 
problem.  Servers processing uploaded images are exposed to the issue 
but server applications often take additional precautions which might 
protect from the problem.  Desktop users are entirely exposed.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
