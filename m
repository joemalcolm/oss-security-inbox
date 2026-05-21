Received: (qmail 30517 invoked by uid 550); 21 May 2026 20:25:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 22455 invoked from network); 21 May 2026 19:30:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1779391821; x=1780058487; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=3VAMuBlcNAvEG2Nwq8VYDlKBrrvTe8pKEVhHuCFGvyI=;
 b=P45d/dQi+OHJiiahVhpvRhciqRjHW7S0nWk24b7egBDUZ4+sq4mnysIPIyP47HyK19lXZQfv
  5ie7bfvpDWKBw6V7OeCh4U9ot2aOw16t3Mn3aGdqppLpQRSF6E2XwJ4AqdCTCCpTX7R/N6H49z
  +U1ivyEfXJEp/drNfisk5rTCUoPmh+9nDGljIH6diai3szaUBTG1teGkTrjHFVG5cPeWkvHxb1
  GjzRPMiQO3MCdGEbByciLEDJpjM25mL9iN4/DG1r0ub6qTL9+QL5llzax+d2NYvoAx/uZORGNX
  AlyJCoFh4iZDXK5cM4/7d+Kr806nHNTbqG77y4ilMQeVCa3A==
Date: Thu, 21 May 2026 21:30:19 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20260521193019.4XguG2B_@steffen%sdaoden.eu>
In-Reply-To: <7758b7f4-a71a-48a6-b4a9-516700650a7e@free.fr>
References: <20260518220116.170677b2@riseup.net>
 <agw1YBkrV6kcsdYr@definition.pseudorandom.co.uk>
 <20260519193042.3feb8374@gmail.com>
 <ag2EONSuspJdhYfd@definition.pseudorandom.co.uk>
 <31c511c3-5e29-4d2d-bfd1-ad1e336f5541@gmail.com>
 <7758b7f4-a71a-48a6-b4a9-516700650a7e@free.fr>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.10.0-alpha-32-g06ea4d6fbf
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] On the issue of MIME handlers that
 execute arbitrary code (e.g. Wine)

Gabriel Corona wrote in
 <7758b7f4-a71a-48a6-b4a9-516700650a7e@free.fr>:
 |> Sandboxes should only allow allowlist of file types and make everything
 |> else fall back to a safe default.  This could be a simple text editor
 |> (no IDE support!) for text files, and a hex editor (or an error) for
 |> binary files.
 |
 |That sounds extremely inconvenient. Running an email client in a 
 |sandbox? It can't open a PDF or a JPEG (or worse, you'll get an 
 |hex-editor) ...

Actually, i think what is missing is some intermediate step.  This
includes more control commands for RFC 1524 Mailcap files, which
i am all for, and hope certain new things in the IETF (structured
email, SML, to name it) do not loose it.  'Maybe even extend it.

For example, my MUA (but do not look) introduced certain new
control commands (x-mailx-async, x-mailx-last-resort,
x-mailx-ignore, too name some) , but none that fits here
specifically -- however, mailcap (and other supported approaches
of starting programs for data formats) are by default only used in
"copiousoutput" mode, you need a special `mimeview' command to
invoke other things.  Long story, this results in chains like

  application/pdf;\
          mupdf %s;\
          test = [ -n "$DISPLAY" ] >/dev/null 2>&1;\
          nametemplate = %s.pdf; x-mailx-ignore
  application/pdf;\
          infile=%s\;\
                  trap "rm -f \"$infile\"" EXIT\;\
                  trap "exit 75" INT QUIT TERM\;\
                  mupdf "$infile";\
          test = [ -n "$DISPLAY" ] >/dev/null 2>&1;\
          nametemplate = %s.pdf; x-mailx-async; x-mailx-test-once
  application/pdf;\
          pdfinfo %s\; pdftotext -layout %s -;\
          test = command -v pdfinfo >/dev/null 2>&1;\
          copiousoutput; nametemplate=%s.pdf; x-mailx-test-once

or

  image/*;\
          display %s;\
          test = { [ -n "$DISPLAY" ] && command -v display\; } >/dev/null 2>&1;\
          x-mailx-ignore
  image/*;\
          infile=%s\;\
                  trap "rm -f \"$infile\"" EXIT\;\
                  trap 'exit 75' INT QUIT TERM\;\
                  display "$infile";\
          test = { [ -n "$DISPLAY" ] && command -v display\; } >/dev/null 2>&1;\
          x-mailx-async; x-mailx-test-once
  image/*;\
          identify %s;\
          test = command -v identify >/dev/null 2>&1;\
          copiousoutput; x-mailx-noquote; x-mailx-test-once

and the second ones are used for `mimeview', the third it is when
normally viewing emails.  (pdftotext not initially -- but i am
lazy, .. like you say.)

Short story: neither, i think, pdfinfo(1) nor pdftotext(1) (nor
identify(1)) actually execute integrated *Script, at least.
But it is still not truly nice.

Best would surely be some viewer who has a "stepped approach",
showing only some infos first, asking for confirmation or the
action to be applied, before displaying an image or whatever.
And then going into some safe mode when truly going "in full" on
the data as such.
Of course implementing such a thing in that very way is an
extensive effort, and not always doable.

But maybe it is time -- instead of simply rewriting the same mess
in Rust (gdk-pixbuf) -- to create "priviledge-separated" media
viewers, where the image/data format specific stuff is in
a completely separated "process", and only readily prepared data
in a common type (X11 bitmap or what) is then send via IPC / made
available in some shared mapping for some display/player.
(It could be such things already exist, i live only in dwm / st
/ tmux, and have only fewest graphical things beside that.)

 |If the sandboxed application is badly integrated and can't open files 
 |and URIs, the user (me included) will prefer using the non-sandboxed 
 |version in order to get things done (or will prefer using a more 
 |user-friendly OS). This would defeat the purpose of having sandboxed 
 |applications.

Over a decade ago an Irish forwarded a message from Trinity
College Dublin; it is astounding "how rich" emails can get in real
life.  One does not want to use the above approach (what was,
actually, shown).  But priviledge-separated multimedia viewer,
which maybe "goes in full" (video, audio .. play) only on explicit
request, instead of simply linking/loading in more and more
formats through shallow ad-hoc format converters that use format
dedicated libraries, i think that is a problem.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
