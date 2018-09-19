X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2004" "Wednesday" "19" "September" "2018" "21:20:18" "+0200" "Solar Designer" "solar@openwall.com" "<20180919192018.GA6402@openwall.com>" "45" "Re: [oss-security] tdesktop 1.3.14: index out of range" nil nil nil "9" "2018091919:20:18" "[oss-security] tdesktop 1.3.14: index out of range" (number mark "U       solar@openwa Sep 19   45/2004  " thread-indent "\"Re: [oss-security] tdesktop 1.3.14: index out of range\"\n") "<CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>" ("<CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23571 invoked by uid 550); 19 Sep 2018 19:20:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 19901 invoked from network); 19 Sep 2018 19:20:20 -0000
Date: Wed, 19 Sep 2018 21:20:18 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20180919192018.GA6402@openwall.com>
References: <CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAG8b5tQvMF46=bzGDZR6OGzrMqMx7=ktZR1iOX=DJTpZzdi83w@mail.gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] tdesktop 1.3.14: index out of range

Hi,

I'm posting this primarily to clarify why something as wrong-looking as
this report got through moderation, and secondarily to ask that postings
to oss-security should clearly describe security impact rather than
leave people (even moderators) guessing why they're seeing this in here.

On Wed, Sep 19, 2018 at 11:47:00PM +0530, Dhiraj Mishra wrote:
> Affected Product: tdesktop-1.3.14 tested on Ubuntu 18.04 LTS x64
> 
> *Steps to reproduce:*
> 1. Open Telegram
> 2. Launch theme editor
> 3. Save the file in some location
> 4. The tdesktop then open "Edit color palette"
> 5. Type "Hello World" in search <press enter>
> 6. The tdesktop gets crash
> 
> Crashes, ASSERT failure in QVector<T>::operator[]: "index out of range",
> file /usr/local/tdesktop/Qt-5.6.2/include/QtCore/qvector.h, line 431
> Aborted (core dumped)

FWIW, this doesn't look like a security issue to me, but I'm not
familiar with tdesktop and don't consider it list moderators' job to
distinguish security from non-security issues except in even more
obvious cases.  In this case, I'm just 99% sure it's non-security.

Maybe someone will see a way to make this cross a privilege boundary,
which the above example doesn't appear to do.  Even with distribution of
a malicious theme file (just guessing here as the example above is
unclear on what file is involved nor on what exactly causes the crash)
from one user to others, this doesn't appear to be a security issue as
the impact would have been a mere crash (since the out of range index is
properly detected), which looks irrelevant as a security attack in that
scenario.

For this to be a security issue, a privilege boundary would need to be
crossed _and_ either the impact needs to be worse than a mere crash or
the attack would need to be performed without target user's interaction.

If someone finds a way to _avoid_ the detected "index out of range"
condition yet have the program misbehave differently, that will be more
valuable as a potential attack.

Alexander
