X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1298" "Sunday" "18" "February" "2018" "22:44:31" "+0100" "Solar Designer" "solar@openwall.com" "<20180218214431.GA23494@openwall.com>" "35" "Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length" "^Date:" nil nil "2" "2018021821:44:31" "[oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length" (number mark "U       solar@openwa Feb 18   35/1298  " thread-indent "\"Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length\"\n") "<20180218180945.GA22931@openwall.com>" ("<20180218180945.GA22931@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32200 invoked by uid 550); 18 Feb 2018 21:44:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32116 invoked from network); 18 Feb 2018 21:44:37 -0000
Message-ID: <20180218214431.GA23494@openwall.com>
References: <20180218180945.GA22931@openwall.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180218180945.GA22931@openwall.com>
User-Agent: Mutt/1.4.2.3i
Date: Sun, 18 Feb 2018 22:44:31 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] LibVNCServer rfbserver.c: rfbProcessClientNormalMessage() case rfbClientCutText doesn't sanitize msg.cct.length
To: oss-security@lists.openwall.com

On Sun, Feb 18, 2018 at 07:09:45PM +0100, Solar Designer wrote:
> vcSetXCutTextProc() came from LibVNCServer-0.9.9/vncterm/VNConsole.c, so its
> shortcomings also need to be reported to LibVNCServer upstream.

> vncterm exists as a separate repo,
> so I might report its issues in there: https://github.com/LibVNC/vncterm

Reported vncterm: VNConsole.c: vcSetXCutTextProc() integer overflow and
unchecked malloc():

https://github.com/LibVNC/vncterm/issues/6

vncterm's implementation of the callback is:

void vcSetXCutTextProc(char* str,int len, struct _rfbClientRec* cl)
{
  vncConsolePtr c=(vncConsolePtr)cl->screen->screenData;

  if(c->selection) free(c->selection);
  c->selection=(char*)malloc(len+1);
  memcpy(c->selection,str,len);
  c->selection[len]=0;
}

Besides the conversion to signed int during the call (a LibVNCServer API
issue), there's also len+1 in the implementation, which may cause an
integer overflow resulting in e.g. malloc(0) (which succeeds) followed
by memcpy(..., ..., -1) (which writes beyond the allocated memory).  And
there's no check for malloc() possibly returning NULL.

I did not request CVE ID(s) for this, and I don't intend to do so.  If
you need to, please feel free to track the vncterm vcSetXCutTextProc()
issues above as OVE-20180218-0002.

Alexander
