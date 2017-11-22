X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1395" "Wednesday" "22" "November" "2017" "12:13:23" "+0530" "P J P" "ppandit@redhat.com" "<nycvar.YSQ.7.76.1711221200110.4822@wniryva>" "34" "Re: [oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage via post_load routine" nil nil nil "11" "2017112206:43:23" "[oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage via post_load routine" (number mark "U       ppandit@redh Nov 22   34/1395  " thread-indent "\"Re: [oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage via post_load routine\"\n") "<20171122035243.edl3dqbnpyaa337h@matica.foolinux.mooo.com>" ("<nycvar.YSQ.7.76.1711171112070.7823@wniryva>" "<20171122035243.edl3dqbnpyaa337h@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7991 invoked by uid 550); 22 Nov 2017 06:43:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 7968 invoked from network); 22 Nov 2017 06:43:40 -0000
Date: Wed, 22 Nov 2017 12:13:23 +0530 (IST)
From: P J P <ppandit@redhat.com>
X-X-Sender: pjp@javelin
To: oss security list <oss-security@lists.openwall.com>
In-Reply-To: <20171122035243.edl3dqbnpyaa337h@matica.foolinux.mooo.com>
Message-ID: <nycvar.YSQ.7.76.1711221200110.4822@wniryva>
References: <nycvar.YSQ.7.76.1711171112070.7823@wniryva> <20171122035243.edl3dqbnpyaa337h@matica.foolinux.mooo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Wed, 22 Nov 2017 06:43:28 +0000 (UTC)
Subject: Re: [oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage
 via post_load routine

  Hello Ian,

+-- On Tue, 21 Nov 2017, Ian Zimmerman wrote --+
| >   -> https://lists.gnu.org/archive/html/qemu-devel/2017-11/msg02982.html
| 
| Hi, what can I do with these QEMU reports?  I can try to apply the
| patch, but I have no idea if it will work, because I don't know which
| branch or revision it is based on.

  Patch is sent against upstream Qemu git repository(below) and is merged 
after due review on the -devel list.

  -> https://git.qemu.org/?p=qemu.git;a=summary

| By my unscientific counting, there are only 2 other userspace projects which 
| earn CVEs as frequently as QEMU: openjpeg and graphicsmagick.  In both these 
| cases, starting with the message posted here and following the references, I 
| can quickly locate the actual VC commit (in git and mercurial, respectively) 
| and thus have a sound basis for deciding what to do: patch, wait for an 
| updated distro package, or fork the distro package.
| 
| Is there a reason why that cannot be done with QEMU?

Reviewed patches soon show-up in the above master repository. In this case, it 
so happened that an earlier version v1 of the patch was more acceptable

  -> https://lists.gnu.org/archive/html/qemu-devel/2017-11/msg02946.html

It should make it upstream soon, I'll update here accordingly.

Thank you.
--
Prasad J Pandit / Red Hat Product Security Team
47AF CE69 3A90 54AA 9045 1053 DD13 3D32 FE5B 041F
