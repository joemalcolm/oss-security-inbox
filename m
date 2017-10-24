X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1872" "Tuesday" "24" "October" "2017" "13:46:11" "+0200" "Solar Designer" "solar@openwall.com" "<20171024114611.GA2330@openwall.com>" "41" "Re: [oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO" nil nil nil "10" "2017102411:46:11" "[oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO" (number mark "U       solar@openwa Oct 24   41/1872  " thread-indent "\"Re: [oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO\"\n") "<CAHzAkRGAjfBh6-GgW4-gotZGSBQ4=K+xUmYegbs+-X-k8-za5w@mail.gmail.com>" ("<CAHzAkRGAjfBh6-GgW4-gotZGSBQ4=K+xUmYegbs+-X-k8-za5w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13701 invoked by uid 550); 24 Oct 2017 11:46:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13556 invoked from network); 24 Oct 2017 11:46:19 -0000
Date: Tue, 24 Oct 2017 13:46:11 +0200
From: Solar Designer <solar@openwall.com>
To: Juan Diego <diego@linux.com>
Cc: oss-security@lists.openwall.com
Message-ID: <20171024114611.GA2330@openwall.com>
References: <CAHzAkRGAjfBh6-GgW4-gotZGSBQ4=K+xUmYegbs+-X-k8-za5w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHzAkRGAjfBh6-GgW4-gotZGSBQ4=K+xUmYegbs+-X-k8-za5w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Hash thief on Windows shared folder with SCF files. ADV170014 NTLM SSO

Juan, all -

On Mon, Oct 23, 2017 at 04:47:46PM -0700, Juan Diego wrote:
> I want to share some information with the people on the list.
> On May 24, I found a problem with NTLM auth on Windows.

This is interesting, but it's mostly off-topic for oss-security, so as a
moderator I ask that further discussion please be handled on other lists
(once Juan's message probably gets through moderation in there).

Our only poor excuse for having this on oss-security at all is the use
of Open Source tools to demonstrate the attack - Metasploit, JtR, Samba -
but I think it's not enough of a reason to have postings like this on
oss-security.  If others feel differently, please let me know.

Juan, please re-read the oss-security list content guidelines, and note
that we not only require relevance to Open Source (lacking here), but
also discourage cross-postings:

http://oss-security.openwall.org/wiki/mailing-lists/oss-security#list-content-guidelines

"Please keep discussions relevant to Open Source software.  This is not a
list to discuss the behavior or problems with closed source software or
companies."

"Please don't cross-post messages to oss-security and other mailing
lists at once, especially not to high-volume lists such as LKML and
netdev, as this tends to result in threads that wander partially or
fully off-topic (e.g., Linux kernel coding style detail may end up being
discussed in comments to a patch posted to LKML, but it would be
off-topic for oss-security).  If you feel that something needs to be
posted to oss-security and to another list, please make separate
postings.  You may mention the other posting(s) in your oss-security
posting, and even link to other lists' archives."

No reply to this message is expected, unless there's relevant detail to
add (e.g., the same issue also present in certain Open Source software).

Thanks,

Alexander
