X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["369" "Friday" "23" "October" "2015" "13:11:15" "+0000" "Jeremy Stanley" "fungi@yuggoth.org" "<20151023131115.GZ4731@yuggoth.org>" "11" "Re: [oss-security] CVE Request: BusyBox tar directory traversal" nil nil nil "10" "2015102313:11:15" "[oss-security] CVE Request: BusyBox tar directory traversal" (number mark "        fungi@yuggot Oct 23   11/369   " thread-indent "\"Re: [oss-security] CVE Request: BusyBox tar directory traversal\"\n") "<CAOfWR+HjmAHz8oL3r5JyEa+d8wNHy7q6warHAKeRomZ_+CNdNg@mail.gmail.com>" ("<20151021153633.GA2430@boyd>" "<CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>" "<13512806.1ZGcyoO27t@sarpedon>" "<CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>" "<1445603081.14394.5.camel@debian.org>" "<CAOfWR+HjmAHz8oL3r5JyEa+d8wNHy7q6warHAKeRomZ_+CNdNg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13944 invoked by uid 550); 23 Oct 2015 13:11:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13915 invoked from network); 23 Oct 2015 13:11:29 -0000
Message-ID: <20151023131115.GZ4731@yuggoth.org>
References: <20151021153633.GA2430@boyd>
 <CAOfWR+FbqxJL-PPAnOPoJ4i3eCBjZv87uhpqtnOha1MCE4orbQ@mail.gmail.com>
 <13512806.1ZGcyoO27t@sarpedon>
 <CAOfWR+H7YdPbx2N33=U_35f0uK2irjP2XtfjaUdCYuEwQLx1XA@mail.gmail.com>
 <1445603081.14394.5.camel@debian.org>
 <CAOfWR+HjmAHz8oL3r5JyEa+d8wNHy7q6warHAKeRomZ_+CNdNg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOfWR+HjmAHz8oL3r5JyEa+d8wNHy7q6warHAKeRomZ_+CNdNg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: 2001:4802:7801:102:be76:4eff:fe20:63e0
X-SA-Exim-Rcpt-To: oss-security@lists.openwall.com
X-SA-Exim-Mail-From: fungi@yuggoth.org
X-SA-Exim-Scanned: No (on azathoth.yuggoth.org); SAEximRunCond expanded to false
Date: Fri, 23 Oct 2015 13:11:15 +0000
From: Jeremy Stanley <fungi@yuggoth.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE Request: BusyBox tar directory traversal
To: oss-security@lists.openwall.com

On 2015-10-23 09:00:29 -0400 (-0400), Robert Watson wrote:
> Okay. How then does one install a tar package that put most of its files
> under /usr but also needs to put files under /etc to which there are
> symlinks?

-C/

Though I have to assume this is rhetorical, since you could have
answered your question through a brief review of its manpage.
-- 
Jeremy Stanley
