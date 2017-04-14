X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2153" "Friday" "14" "April" "2017" "17:40:37" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87lgr3kney.fsf@mid.deneb.enyo.de>" "83" "Re: [oss-security] alloca in inline functions can be dangerous" "^Cc:" nil nil "4" "2017041415:40:37" "[oss-security] alloca in inline functions can be dangerous" (number mark "        fw@deneb.eny Apr 14   83/2153  " thread-indent "\"Re: [oss-security] alloca in inline functions can be dangerous\"\n") "<a18696795bb4b91a@frisell.zx2c4.com>" ("<a18696795bb4b91a@frisell.zx2c4.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 3277 invoked by uid 550); 14 Apr 2017 15:40:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3259 invoked from network); 14 Apr 2017 15:40:49 -0000
References: <a18696795bb4b91a@frisell.zx2c4.com>
In-Reply-To: <a18696795bb4b91a@frisell.zx2c4.com> (Jason A. Donenfeld's
	message of "Mon, 10 Apr 2017 16:36:24 +0200")
Message-ID: <87lgr3kney.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Fri, 14 Apr 2017 17:40:37 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] alloca in inline functions can be dangerous
To: "Jason A. Donenfeld" <Jason@zx2c4.com>

* Jason A. Donenfeld:

> Hey folks,
>
> I'm not sure this is the right mailing list to discuss this matter, but
> hopefully it finds an audience here. I was debugging some code recently,
> when I found a very nasty interaction between alloca and inline functions.
> Observe the following block:
>
> static inline void process_widget(struct widget *widget,
> 				  unsigned int  fcount)
> {
> 	struct fragment fragments[fcount];
> 	widgets_to_fragments(fragments, widget);
> 	process_fragments(fragments);
> }
>
> static void iterate_widgets(struct widgetlist *widgetlist)
> {
> 	struct widget *widget;
> 	unsigned int fcount;
>
> 	for (widget = widgetlist->first; widget; widget = widget->next) {
> 		fcount = widget_get_frags_required(widget);
> 		if (fcount > 256)
> 			continue;
> 		process_widget(widget, fcount);
> 	}
> }
>
> This seems pretty benign. However, let's look at two transformations that
> gcc makes. First the VLA is changed to use alloca:

Which GCC version do you use?

I turned your example into something that actually compiles:

struct widget
{
  struct widget *next;
};

unsigned widget_get_frags_required(struct widget *);

struct fragment { int dummy; };
void widgets_to_fragments(struct fragment *, struct widget *);
void process_fragments(struct fragment *);

struct widgetlist
{
  struct widget *first;
};

static inline void
process_widget(struct widget *widget, unsigned int  fcount)
{
  struct fragment fragments[fcount];
  widgets_to_fragments(fragments, widget);
  process_fragments(fragments);
}

void
iterate_widgets(struct widgetlist *widgetlist)
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

I don't see the behavior your outline.  The stack pointer is restored
for each iteration of the loop.

In my experience, GCC is pretty good at actually deallocating VLAs
when a scope is exited.

In any case, this is a GCC bug.  I can help you to turn this into a
proper bug report if it still exists in current versions.
