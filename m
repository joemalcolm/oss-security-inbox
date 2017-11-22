X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1000" "Tuesday" "21" "November" "2017" "19:52:43" "-0800" "Ian Zimmerman" "itz@very.loosely.org" "<20171122035243.edl3dqbnpyaa337h@matica.foolinux.mooo.com>" "24" "[oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage via post_load routine" nil nil nil "11" "2017112203:52:43" "[oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage via post_load routine" (number mark "U       itz@very.loo Nov 21   24/1000  " thread-indent "\"[oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage via post_load routine\"\n") "<nycvar.YSQ.7.76.1711171112070.7823@wniryva>" ("<nycvar.YSQ.7.76.1711171112070.7823@wniryva>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26228 invoked by uid 550); 22 Nov 2017 05:23:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12235 invoked from network); 22 Nov 2017 03:53:04 -0000
Date: Tue, 21 Nov 2017 19:52:43 -0800
From: Ian Zimmerman <itz@very.loosely.org>
To: oss-security@lists.openwall.com
Message-ID: <20171122035243.edl3dqbnpyaa337h@matica.foolinux.mooo.com>
Mail-Followup-To: oss-security@lists.openwall.com
References: <nycvar.YSQ.7.76.1711171112070.7823@wniryva>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nycvar.YSQ.7.76.1711171112070.7823@wniryva>
X-Loosely-Listed: yes
User-Agent: NeoMutt/20170707-dirty (1.8.3)
Subject: [oss-security] Re: CVE-2017-16845 Qemu: ps2: information leakage via post_load
 routine

On 2017-11-17 11:14, P J P wrote:

> Upstream patch:
> ---------------
>   -> https://lists.gnu.org/archive/html/qemu-devel/2017-11/msg02982.html

Hi, what can I do with these QEMU reports?  I can try to apply the
patch, but I have no idea if it will work, because I don't know which
branch or revision it is based on.

By my unscientific counting, there are only 2 other userspace projects
which earn CVEs as frequently as QEMU: openjpeg and graphicsmagick.  In
both these cases, starting with the message posted here and following
the references, I can quickly locate the actual VC commit (in git and
mercurial, respectively) and thus have a sound basis for deciding what
to do: patch, wait for an updated distro package, or fork the distro
package.

Is there a reason why that cannot be done with QEMU?

-- 
Please don't Cc: me privately on mailing lists and Usenet,
if you also post the followup to the list or newsgroup.
To reply privately _only_ on Usenet, fetch the TXT record for the domain.
