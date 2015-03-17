X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1461" "Tuesday" "17" "March" "2015" "08:56:24" "-0700" "Alan Coopersmith" "alan.coopersmith@oracle.com" "<55084EA8.1020003@oracle.com>" "29" "Re: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont" nil nil nil "3" "2015031715:56:24" "[oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont" (number mark "        alan.coopers Mar 17   29/1461  " thread-indent "\"Re: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More BDF file parsing issues in libXfont\"\n") "<550845D3.1020509@tao.at>" ("<20150317150833.GA2934@also.us.oracle.com>" "<5508443E.401@oracle.com>" "<550845D3.1020509@tao.at>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 28021 invoked by uid 550); 17 Mar 2015 15:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28000 invoked from network); 17 Mar 2015 15:57:04 -0000
Message-ID: <55084EA8.1020003@oracle.com>
User-Agent: Mozilla/5.0 (X11; SunOS i86pc; rv:17.0) Gecko/20150125 Thunderbird/17.0.11
MIME-Version: 1.0
References: <20150317150833.GA2934@also.us.oracle.com> <5508443E.401@oracle.com> <550845D3.1020509@tao.at>
In-Reply-To: <550845D3.1020509@tao.at>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Source-IP: acsinet21.oracle.com [141.146.126.237]
CC: Sven Schwedas <sven.schwedas@tao.at>,
        "X.Org Security Team" <xorg-security@lists.x.org>
Date: Tue, 17 Mar 2015 08:56:24 -0700
From: Alan Coopersmith <alan.coopersmith@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Fwd: [ANNOUNCE] X.Org Security Advisory: More
 BDF file parsing issues in libXfont
To: oss-security@lists.openwall.com

On 03/17/15 08:18 AM, Sven Schwedas wrote:
> On 2015-03-17 16:11, Alan Coopersmith wrote:
>> As libXfont is used by the X server to read font files, and an unprivileged
>> user with access to the X server can tell the X server to read a given font
>> file from a path of their choosing, these vulnerabilities have the
>> potential
>
> Can this be exploited by any current browser's web fonts implementation,
> or will this require local access? (Loading fonts from user-writeable
> ~/.fonts seems to be enabled by default.)

I am not aware of any current browser which meets any of these criteria,
much less all of them:
  - supports the ancient BDF bitmap font format in its webfonts, instead of
    scalable font formats such as OpenType, TrueType, or Postscript Type 1.
  - uses the old X server-side font technology instead of rendering on
    the client side, where it can do complex text layout & antialiasing
  - downloads a BDF font from a website, stores to a local directory,
    runs mkfontdir in that directory, and adds it to the X font path.

The primary exploit path X.Org is aware of these would be a local user who
can login to an X session already, running "xset +fp" to add a directory
under their control to the font path of that X server in order to execute
code with the privileges of the X server (often root).

-- 
	-Alan Coopersmith-              alan.coopersmith@oracle.com
	  X.Org Security Response Team - xorg-security@lists.x.org

