X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1573" "Thursday" "8" "October" "2020" "08:29:39" "-0500" "Bob Friesenhahn" "bfriesen@simple.dallas.tx.us" "<alpine.GSO.2.20.2010080824330.3742@scrappy.simplesystems.org>" "39" "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil "10" "2020100813:29:39" "[oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" (number mark "U       bfriesen@sim Oct  8   39/1573  " thread-indent "\"Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022\"\n") "<20201008003001.GE378617@millbarge>" ("<CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com>" "<alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org>" "<20201008003001.GE378617@millbarge>") nil nil nil nil nil nil nil "Re: [oss-security] Debian FEATURE: /home/loser is with permissions 755, default umask 0022" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 21517 invoked by uid 550); 8 Oct 2020 13:29:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20472 invoked from network); 8 Oct 2020 13:29:53 -0000
Date: Thu, 8 Oct 2020 08:29:39 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@scrappy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <20201008003001.GE378617@millbarge>
Message-ID: <alpine.GSO.2.20.2010080824330.3742@scrappy.simplesystems.org>
References: <CAGUWgD_U_oDLPbhAGa=tAaUf3OFM9Ac9j19nwyY-tf7KkQipag@mail.gmail.com> <alpine.GSO.2.20.2010071604290.15793@scrappy.simplesystems.org> <20201008003001.GE378617@millbarge>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Thu, 08 Oct 2020 08:29:39 -0500 (CDT)
Subject: Re: [oss-security] Debian FEATURE: /home/loser is with permissions
 755, default umask 0022

On Thu, 8 Oct 2020, Seth Arnold wrote:

> On Wed, Oct 07, 2020 at 04:09:59PM -0500, Bob Friesenhahn wrote:
>> Ubuntu Linux (a Debian derivative) has changed the default.  However, we
>> found that the Ubuntu default caused problems for us while building our
>> software, and so we changed them back.
>
> Hello Bob, can you please share some details on this?
>
> I expect Ubuntu home directories to be 755 by default:
> https://wiki.ubuntu.com/SecurityTeam/Policies#Permissive_Home_Directory_Access
>
> And while it is very difficult to say "the umask", given that every
> process's umask setting depends upon the actions of not only itself but
> also its nearest parent to use the umask(2) syscall, but:
>
> $ grep ^UMASK /etc/login.defs
> UMASK		022

It seems that the issue we encountered is due to 'USERGROUPS_ENAB yes' 
in /etc/login.defs.  I am not sure if this is specific to Ubuntu. 
This setting changes the umask from the default:

# Enable setting of the umask group bits to be the same as owner bits
# (examples: 022 -> 002, 077 -> 007) for non-root users, if the uid is
# the same as gid, and username is the same as the primary group name.
#
# If set to yes, userdel will remove the user's group if it contains no
# more members, and useradd will create by default a group with the name
# of the user.
#
USERGROUPS_ENAB yes

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
