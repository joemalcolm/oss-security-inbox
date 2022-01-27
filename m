X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["401" "Thursday" "27" "January" "2022" "14:29:06" "+0100" "Bastian Blank" "bblank@thinkmo.de" nil "12" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       bblank@think Jan 27   12/401   " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28592 invoked by uid 550); 27 Jan 2022 13:34:56 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 26056 invoked from network); 27 Jan 2022 13:29:40 -0000
Date: Thu, 27 Jan 2022 14:29:06 +0100
From: Bastian Blank <bblank@thinkmo.de>
To: oss-security@lists.openwall.com
Message-ID: <YfKeIoWB2J1zwJhq@shell.thinkmo.de>
Mail-Followup-To: Bastian Blank <bblank@thinkmo.de>,
	oss-security@lists.openwall.com
References: <20220125175655.GA14958@localhost.localdomain>
 <YfFBAVnpRJemuCed@xosc.org>
 <CABEVAa2T604XknM=iC01OVRciWVCiTKJxuNS=RRtWhGpUWmwnw@mail.gmail.com>
 <CAL6HQvEU_KcXFrvgLoP1woAyV6U-8onZBJ=4vs-FE0gxLCrvYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL6HQvEU_KcXFrvgLoP1woAyV6U-8onZBJ=4vs-FE0gxLCrvYw@mail.gmail.com>
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

On Thu, Jan 27, 2022 at 01:45:33PM +0100, Kai Lüke wrote:
> An alternative to pkexec that is not setuid but also uses polkit auth
> is systemd-run (here is an attempt at mimicking the sudo UX:
> https://gist.github.com/pothos/73dd4f7694acc3b6bbed614438f6e2b1).

Or just "machinectl login .host".

Bastian

-- 
You!  What PLANET is this!
		-- McCoy, "The City on the Edge of Forever", stardate 3134.0
