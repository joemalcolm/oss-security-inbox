X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1759" "Monday" "5" "October" "2015" "09:57:32" "+0200" "Gilles Chehade" "gilles@poolp.org" "<20151005075732.GA7174@poolp.org>" "52" "[oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD" nil nil nil "10" "2015100507:57:32" "[oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD" (number mark "        gilles@poolp Oct  5   52/1759  " thread-indent "\"[oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD\"\n") "<CAHmME9pRfH0M2J81qkzbh2azKSd1hjAymsV-Z2oD7mDtJ25pkw@mail.gmail.com>" ("<CAHmME9pRfH0M2J81qkzbh2azKSd1hjAymsV-Z2oD7mDtJ25pkw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19467 invoked by uid 550); 5 Oct 2015 07:57:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18407 invoked from network); 5 Oct 2015 07:57:44 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=poolp.org; h=date:from:to
	:cc:subject:message-id:references:mime-version:content-type
	:in-reply-to; s=opensmtpd; bh=wG0348Ijw7lvXzgH2g+JGNL/Eg4=; b=Ah
	b2NRxGKj3RSZdkG91w8Hh/KoH8EYgBb98IMHMv+AT+SSQFnF7+reTGMm+EnImBFv
	S58t98nJHGW0KGARfN1MARHu2IQ7JQGw6DGW8uyY9CPH9dL19+HXVJRYorx5Wsad
	8FdsbDhlv6TeZHaqOh+NPnXCUCm/73siIrFQpGIkg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=poolp.org; h=date:from:to:cc
	:subject:message-id:references:mime-version:content-type
	:in-reply-to; q=dns; s=opensmtpd; b=cSi3EfecmCmY3S8ox9TlIkyM/UZJ
	LNUgesBLp23/CPeG1fzD0JF4bJ9JecQOt/azno7Hb3ZtWwAtpyO4Y60Fw9nAys2w
	0nBoob6LwZRkbDtJS/rmtwRBBFJYIwhOygw6SBZYZURsHuFh2zNSuL1Bry2HitxL
	ln1uBiQx3tJhoqg=
Message-ID: <20151005075732.GA7174@poolp.org>
References: <CAHmME9pRfH0M2J81qkzbh2azKSd1hjAymsV-Z2oD7mDtJ25pkw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAHmME9pRfH0M2J81qkzbh2azKSd1hjAymsV-Z2oD7mDtJ25pkw@mail.gmail.com>
X-Operating-System: OpenBSD poolp.org 5.7 GENERIC.MP
X-Flattr: poolp
X-Twitter: poolpOrg
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: misc <misc@opensmtpd.org>,
	oss-security <oss-security@lists.openwall.com>
Date: Mon, 5 Oct 2015 09:57:32 +0200
From: Gilles Chehade <gilles@poolp.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: Remotely triggerable buffer overflow in OpenSMTPD
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

On Mon, Oct 05, 2015 at 12:38:50AM +0200, Jason A. Donenfeld wrote:
> Hi folks,
> 
> I'm passing the gauntlet for anyone who wants to analyze this for
> impact etc. There's a remotely triggerable buffer overflow in
> OpenBSD's OpenSMTPD -- the latest version, 5.7.2 -- reachable by
> sending messages with huge header lines. Qualys recently published a
> result of a big audit, but it seems like they based their
> investigations primarily on an older version of OpenSMTPD that didn't
> have as much of the "filter" infrastructure. I'd recommend interested
> parties spend some time looking through the filter code, as there
> could be more problems. Here's a vulnerability in the filter io path:
> 

This affects the 5.7.x branch, we'll publish a fixed release shortly.

Here's the diff to fix the issue until we've prepared the release.


diff --git a/smtpd/filter.c b/smtpd/filter.c
index 062f00f..8af6eab 100644
--- a/smtpd/filter.c
+++ b/smtpd/filter.c
@@ -726,7 +726,6 @@ filter_tx_io(struct io *io, int evt)
 	struct filter_session	*s = io->arg;
 	size_t			 len, n;
 	char			*data;
-	char			buf[65535];
 
 	log_trace(TRACE_FILTERS, "filter: filter_tx_io(%p, %s)", s, io_strevent(evt));
 
@@ -734,10 +733,9 @@ filter_tx_io(struct io *io, int evt)
 	case IO_DATAIN:
 		data = iobuf_data(&s->ibuf);
 		len = iobuf_len(&s->ibuf);
-		memmove(buf, data, len);
-		buf[len] = 0;
-		log_trace(TRACE_FILTERS, "filter: filter_tx_io: datain (%zu) for req %016"PRIx64": %s",
-		    len, s->id, buf);
+
+		log_trace(TRACE_FILTERS, "filter: filter_tx_io: datain (%zu) for req %016"PRIx64"",
+		    len, s->id);
 
 		n = fwrite(data, 1, len, s->ofile);
 		if (n != len) {



-- 
Gilles Chehade

https://www.poolp.org                                          @poolpOrg
