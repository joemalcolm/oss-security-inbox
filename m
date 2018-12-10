X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2118" "Monday" "10" "December" "2018" "19:57:21" "+0100" "Solar Designer" "solar@openwall.com" "<20181210185721.GA4259@openwall.com>" "53" "Re: [oss-security] libvnc and tightvnc vulnerabilities" "^Cc:" nil nil "12" "2018121018:57:21" "[oss-security] libvnc and tightvnc vulnerabilities" (number mark "U       solar@openwa Dec 10   53/2118  " thread-indent "\"Re: [oss-security] libvnc and tightvnc vulnerabilities\"\n") "<200f245d2ec342c3bc05586d3f277b42@kaspersky.com>" ("<9396dbd0a417440abe9bbb830e7b612f@kaspersky.com>" "<20181210154020.GA2063@openwall.com>" "<200f245d2ec342c3bc05586d3f277b42@kaspersky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9551 invoked by uid 550); 10 Dec 2018 18:58:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 8143 invoked from network); 10 Dec 2018 18:57:33 -0000
Message-ID: <20181210185721.GA4259@openwall.com>
References: <9396dbd0a417440abe9bbb830e7b612f@kaspersky.com> <20181210154020.GA2063@openwall.com> <200f245d2ec342c3bc05586d3f277b42@kaspersky.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <200f245d2ec342c3bc05586d3f277b42@kaspersky.com>
User-Agent: Mutt/1.4.2.3i
Cc: oss-security@lists.openwall.com
Date: Mon, 10 Dec 2018 19:57:21 +0100
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] libvnc and tightvnc vulnerabilities
To: Pavel Cheremushkin <Pavel.Cheremushkin@kaspersky.com>

On Mon, Dec 10, 2018 at 04:08:00PM +0000, Pavel Cheremushkin wrote:
> These particular issues I was describing in my previous letter are located in source code of TightVNC vncviewer. Source code of TightVNC 1.3.10 vncviewer can be acquired though this link https://www.tightvnc.com/download/1.3.10/tightvnc-1.3.10_unixsrc.tar.gz and integer overflow that leads to a heap-buffer-overflow I was speaking about is located on the line 1220 inside file `vnc_unixsrc/vncviewer/rfbproto.c`. It is a fun fact that inside `libvncclient/rfbproto.c` the same code is located on line 2220, but all bugs connected with LibVNC I described in Github issues inside LibVNC repository.

Oh.  So you reported the instance of that one issue in LibVNC here:

https://github.com/LibVNC/libvncserver/issues/247

Upstream's fix appears to be to add casts to (uint64_t) before adding 1
in those many malloc() calls.  On platforms with larger than 32-bit
size_t, this should be sufficient against integer overflows since the
sizes are read from 32-bit protocol fields, but it isn't sufficient to
prevent maliciously large memory allocation on the client by a rogue
server.  On a platform with 32-bit size_t, this isn't even sufficient to
prevent the integer overflows.  If I haven't missed anything, it'd be
great if you open a new issue suggesting introduction of safety limits
prior to those malloc() lines.

The current code is:

  case rfbServerCutText:
  {
    char *buffer;

    if (!ReadFromRFBServer(client, ((char *)&msg) + 1,
			   sz_rfbServerCutTextMsg - 1))
      return FALSE;

    msg.sct.length = rfbClientSwap32IfLE(msg.sct.length);

    buffer = malloc((uint64_t)msg.sct.length+1);

    if (!ReadFromRFBServer(client, buffer, msg.sct.length)) {
      free(buffer);
      return FALSE;
    }

    buffer[msg.sct.length] = 0;

    if (client->GotXCutText)
      client->GotXCutText(client, buffer, msg.sct.length);

    free(buffer);

    break;
}

but per the commits referenced in issue #247 above, there are many more
instances of the "malloc(... + 1)" pattern, which were patched similarly
incompletely.

Thanks,

Alexander
