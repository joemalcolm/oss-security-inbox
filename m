X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["907" "Tuesday" "13" "October" "2020" "15:28:19" "+0200" "Solar Designer" "solar@openwall.com" "<20201013132819.GA31582@openwall.com>" "24" "Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" nil nil nil "10" "2020101313:28:19" "[oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" (number mark "U       solar@openwa Oct 13   24/907   " thread-indent "\"Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon\"\n") "<20201013122912.GA32635@f195.suse.de>" ("<20201013122912.GA32635@f195.suse.de>") nil nil nil nil nil nil nil "Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 3867 invoked by uid 550); 13 Oct 2020 13:28:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3758 invoked from network); 13 Oct 2020 13:28:23 -0000
Date: Tue, 13 Oct 2020 15:28:19 +0200
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Message-ID: <20201013132819.GA31582@openwall.com>
References: <20201013122912.GA32635@f195.suse.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201013122912.GA32635@f195.suse.de>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] kdeconnect: CVE-2020-26164: multiple security issues in kdeconnectd network daemon

On Tue, Oct 13, 2020 at 02:29:12PM +0200, Matthias Gerstner wrote:
> The SUSE security team noticed that a new network service service
> `kdeconnectd` was active by default  in openSUSE Leap 15.2 listening on TCP
> and UDP port 1716. `kdeconnectd` is started automatically in the context of
> any KDE session and runs with the privileges of the logged in user.
> 
> 
> `kdeconnectd` talks to an Android smartphone app. The use cases are, among
> others:
> 
> 
> - sharing the PC clipboard with the smartphone
> - controlling the PC from the smartphone (running commands, controlling input)
> 
> 
> I conducted an in-depth source code review [...]

Thank you for your work on this, and for publishing so much detail!

Will kdeconnectd no longer be active by default in openSUSE?  I hope so.
Merely fixing the known issues doesn't address the fact that this poses
unjustified risk for most people.

Alexander
