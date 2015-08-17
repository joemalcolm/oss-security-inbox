X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["601" "Monday" "17" "August" "2015" "16:33:42" "+0200" "Tomas Hoger" "thoger@redhat.com" "<20150817163342.38f432df@redhat.com>" "17" "Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" nil nil nil "8" "2015081714:33:42" "[oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)" (number mark "        thoger@redha Aug 17   17/601   " thread-indent "\"Re: [oss-security] Double free corruption in JasPer JPEG-2000 implementation (CVE-2015-5203)\"\n") "<20150816184849.GA32213@zoho.com>" ("<CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>" "<20150816184849.GA32213@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7859 invoked by uid 550); 17 Aug 2015 14:34:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7831 invoked from network); 17 Aug 2015 14:34:00 -0000
Message-ID: <20150817163342.38f432df@redhat.com>
In-Reply-To: <20150816184849.GA32213@zoho.com>
References: <CACn5sdSnp7LMeeV_rFbgVQCeQkoqGGTvHLZ3Xo_xgU70bhbOYw@mail.gmail.com>
	<20150816184849.GA32213@zoho.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.23
Cc: oss-security@lists.openwall.com, gustavo.grieco@gmail.com
Date: Mon, 17 Aug 2015 16:33:42 +0200
From: Tomas Hoger <thoger@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Double free corruption in JasPer JPEG-2000
 implementation (CVE-2015-5203)
To: mancha <mancha1@zoho.com>

On Sun, 16 Aug 2015 18:48:49 +0000 mancha wrote:

> On Sun, Aug 16, 2015 at 05:22:50PM +0200, Gustavo Grieco wrote:
> > A new double free affecting JasPer JPEG-2000 (libjasper 1.900) has
> > been found triggered by function jasper_image_stop_load.  Despite this
> > library is used by many programs (
> > http://www.ece.uvic.ca/~frodo/jasper/#overview), there is no one
> > providing support, so there is no fix so far.
> 
> If you email me your crasher I can look into a fix.

More details noted in:

https://bugzilla.redhat.com/show_bug.cgi?id=1254242#c3

-- 
Tomas Hoger / Red Hat Product Security
