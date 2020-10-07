X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1072" "Wednesday" "7" "October" "2020" "16:09:59" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>" "29" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil "10" "2020100721:09:59" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "U       bfriesen@sim Oct  7   29/1072  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23599 invoked by uid 550); 7 Oct 2020 21:10:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23581 invoked from network); 7 Oct 2020 21:10:11 -0000
Date: Wed, 7 Oct 2020 16:09:59 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@scrappy.simplesystems.org
To: "oss-security@lists.openwall.com" <oss-security@lists.openwall.com>
In-Reply-To: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
Message-ID: <alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 07 Oct 2020 16:09:59 -0500 (CDT)
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022

On Wed, 7 Oct 2020, Georgi Guninski wrote:

> https://lists.debian.org/debian-security/2020/10/msg00000.html
>
> ===
> /home/loser is with permissions 755, default umask 0022
>
> on multiuser machines this sucks much.

These are my preferred default settings for multiuser machines and is 
the historical default.  The settings can be changed when appropriate.

Ubuntu Linux (a Debian derivative) has changed the default.  However, 
we found that the Ubuntu default caused problems for us while building 
our software, and so we changed them back.

Users often need to share data.

There is a lesson to be learned that sensitive data and directories 
under a user's home directory may still need to have more strict 
permissions set by the applications which create them since the top of 
the user's home directory might allow sharing.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
