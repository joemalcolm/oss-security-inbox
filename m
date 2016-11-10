X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["788" "Wednesday" "9" "November" "2016" "18:01:51" "-0800" "Ian Zimmerman" "itz@primate.net" "<20161110015757.20558.28D1CED1@matica.foolinux.mooo.com>" "22" "[oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array" nil nil nil "11" "2016111002:01:51" "[oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array" (number mark "U       itz@primate. Nov  9   22/788   " thread-indent "\"[oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array\"\n") "<CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>" ("<CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 19959 invoked by uid 550); 10 Nov 2016 02:33:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 3391 invoked from network); 10 Nov 2016 02:02:17 -0000
X-Authentication-Warning: acedia.primate.net: itz set sender to itz@primate.net using -f
Date: Wed, 9 Nov 2016 18:01:51 -0800
From: Ian Zimmerman <itz@primate.net>
To: oss-security@lists.openwall.com
Message-ID: <20161110015757.20558.28D1CED1@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANMVOuwRRcEG2Vs0DTck_kbUjiNBQwGD6G24kj5mb0wGDUEGgw@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: [oss-security] Re: CVE Request: libtiff: heap buffer overflow/read outside of array

On 2016-11-09 17:32, Brian 'geeknik' Carpenter wrote:

> http://bugzilla.maptools.org/show_bug.cgi?id=2587
> Fixed per
> >> 2016-11-10 Even Rouault <even.rouault at spatialys.com>

I tried to check out the sources to patch this for myself, following the
recipe from the webpage:

 [2+0]Downloads$ export CVSROOT=:pserver:anonymous@remotesensing.org:/cvsroot
 [3+0]Downloads$ cvs login
Logging in to :pserver:anonymous@remotesensing.org:2401/cvsroot
CVS password: # use password "anonymous" 
cvs [login aborted]: connect to remotesensing.org(23.236.62.147):
2401 failed: Connection timed out

Is there another/better way?

-- 
Please *no* private Cc: on mailing lists and newsgroups
Personal signed mail: please _encrypt_ and sign
Don't clear-text sign: http://cr.yp.to/smtp/8bitmime.html
