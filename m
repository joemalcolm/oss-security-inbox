Received: (qmail 28531 invoked by uid 550); 24 Jun 2024 09:13:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28513 invoked from network); 24 Jun 2024 09:13:31 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1719220402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cyS+UX7oQ/KwD1W6xuKnmxXYGKUJ8mzFI8/fXQu0zHw=;
	b=evOtPm7frJOvbdSMniCECqr5T+rnU1ELxB0shLXg+lETPmzYyhjQHJJC9RqaDd2Z4n+q9L
	OdqFML39wiXoni1/2HpBhPdRrbjifhU2Ab/Rh72O1nLt6CCwQaepFzUSO0lxh/Gps+11AI
	WL2XqQqsOOvy3ulHyk0jAPV9uIMVQf0=
X-MC-Unique: CQoeqZWqPziWllhpfZ7U0g-1
From: Florian Weimer <fweimer@redhat.com>
To: Russ Allbery <eagle@eyrie.org>
Cc: Ihor Radchenko <yantar92@posteo.net>,  oss-security@lists.openwall.com
In-Reply-To: <87h6djh2dv.fsf@hope.eyrie.org> (Russ Allbery's message of "Sun,
	23 Jun 2024 12:42:36 -0700")
References: <87wmmguk44.fsf@localhost> <87h6djh2dv.fsf@hope.eyrie.org>
Date: Mon, 24 Jun 2024 11:13:13 +0200
Message-ID: <87wmmehffa.fsf@oldenburg.str.redhat.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [oss-security] Arbitrary shell command evaluation in Org mode
 (GNU Emacs)

* Russ Allbery:

> In order to disable automatic previewing of org-mode attachments, you need
> to customize mm-automatic-display to remove text/x-org from the list of
> MIME types that are automatically previewed.  (This part I have not
> tested.)

As far as I understand it, this only controls inline vs attachment
rendering.  Content-Disposition: inline MIME parts are still displayed
automatically, even if corresponding entries have been removed from
mm-automatic-display.

I looked at this and as far as I can tell, to disable rendering, you
have to remove entries from mm-inline-media-tests.  I don't think this
is possible through customization because the variable has bytecode
objects in it.

I think it should be possible to filter it down, with something like the
code below.  Some comments on the choices: Patch rendering is just too
useful to skip.  HTML rendering is necessary (and obviously quite risky)
because Jira and other tools do not generate useful plaintext mail.

It seems necessery to add explicit ignore entries for text/enriched and
text/richtext because mm-inline-text handles those internally.  The
regexp may be required because it's possible that text/enriched/=E2=80=A6 c=
ould
be used to bypass the subtype extraction in mm-handle-media-subtype.
I haven't tested any of this.

(require 'mm-decode)
(let ((result nil)
      (tail mm-inline-media-tests))
  (while tail
    (let ((type-selector (caar tail))
	  (handler (cadar tail)))
      (when (or (eq handler 'ignore)
		(and (eq handler 'mm-inline-text)
		     (not (member type-selector
				  '("text/enriched" "text/richtext"))))
		(member type-selector
			'("image/p?jpeg"
			  "image/png"
			  "image/gif"
			  "text/plain"
			  "text/x-diff"
			  "application/x-patch"
			  "text/html")))
	(push (car tail) result)))
    (setq tail (cdr tail)))
  (setq result (nreverse result))
  (push '("text/enriched.*" ignore ignore) result)
  (push '("text/richtext.*" ignore ignore) result)
  (setq mm-inline-media-tests result))

I've put these into ~/.gnus.el for now, but having them in ~/.emacs
might be a better option for other uses of Emacs MIME rendering.

Thanks,
Florian

