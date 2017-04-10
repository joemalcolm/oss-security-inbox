X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2634" "Monday" "10" "April" "2017" "16:36:24" "+0200" "Jason A. Donenfeld" "Jason@zx2c4.com" "<a18696795bb4b91a@frisell.zx2c4.com>" "82" "[oss-security] alloca in inline functions can be dangerous" "^Date:" nil nil "4" "2017041014:36:24" "[oss-security] alloca in inline functions can be dangerous" (number mark "        Jason@zx2c4. Apr 10   82/2634  " thread-indent "\"[oss-security] alloca in inline functions can be dangerous\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 16079 invoked by uid 550); 10 Apr 2017 14:41:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13593 invoked from network); 10 Apr 2017 14:36:40 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=date:to:from
	:subject:mime-version:content-type; s=mail; bh=4hzMqwnJ3ErrHDkW0
	kwDXWWl7fA=; b=OnZFh7QVQSPSc+eFXiKPVW6avh/XmHGst43mPVZ0nyP2AEI4F
	q8DTMvsO19AvCfYhJxesP7yyXcofe6e0F/LT8mxZXvpcP4OlwM3FbnEl5/oXxovV
	k54Lbr7IDir1EZVNn13fFdHEt2QvU4ilMlMkQegS+z7XmCHqnVCkKhQFoblIzJtF
	eFVdcnWSFul1qu1TvQLIGlwYn6sH2+cSbjIpajkhWfZniRHTWtirp5BNtJ36kppS
	SAvSnpeZdR0dNcPluSpTNXbxG75BP0YUxCc+u8vTlUzdKW9Or9jrFywZmSQ7cqL+
	eeLTr73ipnf9sJ16P7J42ZA/qriXJsYq0GfwA==
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Message-Id: <a18696795bb4b91a@frisell.zx2c4.com>
Date: Mon, 10 Apr 2017 16:36:24 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] alloca in inline functions can be dangerous
To: oss-security <oss-security@lists.openwall.com>

Hey folks,

I'm not sure this is the right mailing list to discuss this matter, but
hopefully it finds an audience here. I was debugging some code recently,
when I found a very nasty interaction between alloca and inline functions.
Observe the following block:

static inline void process_widget(struct widget *widget,
				  unsigned int  fcount)
{
	struct fragment fragments[fcount];
	widgets_to_fragments(fragments, widget);
	process_fragments(fragments);
}

static void iterate_widgets(struct widgetlist *widgetlist)
{
	struct widget *widget;
	unsigned int fcount;

	for (widget = widgetlist->first; widget; widget = widget->next) {
		fcount = widget_get_frags_required(widget);
		if (fcount > 256)
			continue;
		process_widget(widget, fcount);
	}
}

This seems pretty benign. However, let's look at two transformations that
gcc makes. First the VLA is changed to use alloca:

static inline void process_widget(struct widget *widget,
				  unsigned int fcount)
{
	struct fragment *fragments = __builtin_alloca(fcount);
	widgets_to_fragments(fragments, widget);
}

Next, that block is inlined:

static void iterate_widgets(struct widgetlist *widgetlist)
{
	struct fragment *fragments;
	struct widget *widget;
	unsigned int fcount;

	for (widget = widgetlist->first; widget; widget = widget->next) {
		fcount = widget_get_frags_required(widget);
		if (fcount > 256)
			continue;

		fragments = __builtin_alloca(fcount);
		widgets_to_fragments(fragments, widget);
		process_fragments(fragments);
	}
}

Uh oh speghettio: now the vulnerability becomes clear. Alloca only gives
back its stack at the end of the function, not the end of the block. Since
process_widget was inlined, we now keep calling alloca for every widget in
the widgetlist. Problemo! A stack overflow is imminant, depending on the
size of widgetlist.

I briefly searched for some information about this type of vulnerability
on the internet, and couldn't find anything. At best, I found somebody on
a gcc list saying that gcc wouldn't inline functions that use alloca. But
now I see that this is clearly not true.

So now the standard advice of "don't use VLAs or alloca in loops!" now
extends to "don't use VLAs or alloca in loops or inline functions that
might be called inside loops."

It seems like it would be prudent for gcc to either issue a warning when
alloca is used in an inline function called from inside a loop, or simply
refuse to inline those function calls (similar to what it does if you ever
try to take the address of an inline function).

I'm interested if anybody else has encountered this behavior or has any
thoughts about it.

Thanks,
Jason
