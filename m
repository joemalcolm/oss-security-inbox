X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["688" "Monday" "8" "July" "2019" "05:06:45" "+0000" "Doran Moppert" "dmoppert@redhat.com" "<20190708050645.GA4714@dmoppert.redhat.com>" "20" "Re: [oss-security] [CVE-2019-0231] MINA SSLFilter security Issue" nil nil nil "7" "2019070805:06:45" "[oss-security] [CVE-2019-0231] MINA SSLFilter security Issue" (number mark "U       dmoppert@red Jul  8   20/688   " thread-indent "\"Re: [oss-security] [CVE-2019-0231] MINA SSLFilter security Issue\"\n") "<CAG8=FRi8zBopbw1AkoGM5yGN8P9G8rTxxPR2JfEG7RaV4BU8tQ@mail.gmail.com>" ("<CAG8=FRi8zBopbw1AkoGM5yGN8P9G8rTxxPR2JfEG7RaV4BU8tQ@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] [CVE-2019-0231] MINA SSLFilter security Issue" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28437 invoked by uid 550); 8 Jul 2019 05:07:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28414 invoked from network); 8 Jul 2019 05:07:04 -0000
Date: Mon, 8 Jul 2019 05:06:45 +0000
From: Doran Moppert <dmoppert@redhat.com>
To: oss-security@lists.openwall.com
Message-ID: <20190708050645.GA4714@dmoppert.redhat.com>
References: <CAG8=FRi8zBopbw1AkoGM5yGN8P9G8rTxxPR2JfEG7RaV4BU8tQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <CAG8=FRi8zBopbw1AkoGM5yGN8P9G8rTxxPR2JfEG7RaV4BU8tQ@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Mon, 08 Jul 2019 05:06:52 +0000 (UTC)
Subject: Re: [oss-security] [CVE-2019-0231] MINA SSLFilter security Issue

On Sun, Apr 14, 2019 at 08:30:49AM +0200, Emmanuel Lecharny wrote:
>Description: Handling of the close_notify SSL/TLS message does not
>lead to a connection closure, leading the server to retain the socket
>opened and to have the client potentially receive clear-text messages
>which were supposed to be encrypted.
>
>This security issue is fixed by Apache MINA 2.0.21 or Apache MINA
>2.0.21. Please migrate to those new versions.

Hi Emmanuel,

I think the above should read "2.0.21 or Apache MINA 2.1.1".  Is the 
commit fixing the issue 73e881ad9?  I am trying to figure out if our 
products using 1.1 need to consider a back-port.

Thanks,

-- 
Doran Moppert
Red Hat Product Security
