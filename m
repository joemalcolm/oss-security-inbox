X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1810" "Friday" "24" "July" "2015" "11:47:31" "+0200" "Leif Nixon" "nixon@lysator.liu.se" "<871tfxdgzw.fsf@lysator.liu.se>" "46" "Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" nil nil nil "7" "2015072409:47:31" "[oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser" (number mark "        nixon@lysato Jul 24   46/1810  " thread-indent "\"Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser\"\n") "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>" ("<20150723170954.GA17931@localhost.localdomain>" "<87h9oud89s.fsf@lysator.liu.se>" "<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28590 invoked by uid 550); 24 Jul 2015 10:00:42 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 22076 invoked from network); 24 Jul 2015 09:47:46 -0000
References: <20150723170954.GA17931@localhost.localdomain>
	<87h9oud89s.fsf@lysator.liu.se>
	<CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>
In-Reply-To: <CAHQ_-nR8WGDK58PmsmhPp8ApnmwjrLRxeyCKTsfRL83ZUZjTxA@mail.gmail.com>
	(Philip Pettersson's message of "Fri, 24 Jul 2015 08:50:49 +0900")
Message-ID: <871tfxdgzw.fsf@lysator.liu.se>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
Date: Fri, 24 Jul 2015 11:47:31 +0200
From: Leif Nixon <nixon@lysator.liu.se>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Qualys Security Advisory - CVE-2015-3245 userhelper - CVE-2015-3246 libuser
To: oss-security@lists.openwall.com

Philip Pettersson <philip.pettersson@gmail.com> writes:

> On Fri, Jul 24, 2015 at 3:43 AM, Leif Nixon <nixon@lysator.liu.se> wrote:
>> Qualys Security Advisory <qsa@qualys.com> writes:
>>
>>> Hello, it is July 23, 2015, 17:00 UTC, the Coordinated Release Date for
>>> CVE-2015-3245 and CVE-2015-3246.  Please find our advisory below, and
>>> our exploit attached.
>>
>> *Why* are you releasing a full exploit just minutes after the patch is
>> released?
>>
>> (Disclosure: I am employed by Red Hat, but this is my purely personal question.)
>
> That's how coordinated release dates work. Instead of trying to shame
> Qualys for not following your arbitrary views on what is and isn't
> "Responsible Disclosure", perhaps you should make sure Red Hat
> releases patches hours before the CRD, like Ubuntu does?

Oh, hi there.

My views are not very arbitrary; rather they are based on years of
trying to defend big infrastructures.

As I see it, there are two reasons for releasing working exploits
without warning;

1) Forcing the hand of a non-responsive vendor,

2) Stroking a weak ego by showing off. (Or for marketing, but that comes
   to the same thing.)

Except for case 1, releasing a working exploit *does not help anybody*
except the kiddies. If there are other reasons, I'd like to be told
about them.

If Qualys had released a slightly less detailed advisory, or even just
left off the actual exploit, and given users a day or two to patch their
systems before going full disclosure, the risk to innocent bystanders
would have been much reduced.

-- 
Leif Nixon
------------------------------------------------------------------------------
"supercomputer specialists are charming, polite [and] witty" -- Wired Magazine
------------------------------------------------------------------------------
