Received: (qmail 1072 invoked by uid 550); 23 Jun 2024 19:42:47 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1051 invoked from network); 23 Jun 2024 19:42:46 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Ihor Radchenko <yantar92@posteo.net>
Cc: oss-security@lists.openwall.com
In-Reply-To: <87wmmguk44.fsf@localhost> (Ihor Radchenko's message of "Sun, 23
	Jun 2024 08:41:15 +0000")
Organization: The Eyrie
References: <87wmmguk44.fsf@localhost>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Sun, 23 Jun 2024 12:42:36 -0700
Message-ID: <87h6djh2dv.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] Arbitrary shell command evaluation in Org mode
 (GNU Emacs)

Ihor Radchenko <yantar92@posteo.net> writes:

> Here is a vulnerability in Emacs Org mode.

> Reproducer is the following .org file:

> #+LINK: shell %(shell-command-to-string)
> [[shell:touch ~/hacked.txt]]

> When sent by email and previewed in Emacs or when opened in Emacs as a
> file, the above Org file will evaluate "touch ~/hacked.txt" without any
> prompts.

> The fix is attached. It is against Org mode git repository.
> The fix can be applied to older versions of Org mode/Emacs if deemed
> necessary.

For those who want to disable automatic parsing of Org files in incoming
email messages with Emacs-based mail readers that use emacs-mime, I
believe this needs to be done with two bits of configuration.

The following (or the equivalent via customize) will disable autodetection
of Org files inline in text/plain parts, such as in the message that I'm
responding to:

(custom-set-variables
 '(mm-uu-configure-list
   '((org-src-code-block . disabled)
     (org-meta-line . disabled))))

In order to disable automatic previewing of org-mode attachments, you need
to customize mm-automatic-display to remove text/x-org from the list of
MIME types that are automatically previewed.  (This part I have not
tested.)

There are probably other ways to do this; those are just the ones that I
found.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
