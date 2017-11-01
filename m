X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1380" "Wednesday" "1" "November" "2017" "22:35:59" "+0100" "Florent Rougon" "f.rougon@free.fr" "<87o9ol4r7k.fsf@frougon.crabdance.com>" "39" "Re: [oss-security] Re: Fw: Security risk of vim swap files" "^Date:" nil nil "11" "2017110121:35:59" "[oss-security] Re: Fw: Security risk of vim swap files" (number mark "        f.rougon@fre Nov  1   39/1380  " thread-indent "\"Re: [oss-security] Re: Fw: Security risk of vim swap files\"\n") "<32e60988-4ab4-fe39-9d94-5f3453eb50b0@orlitzky.com>" ("<e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>" "<32e60988-4ab4-fe39-9d94-5f3453eb50b0@orlitzky.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 29756 invoked by uid 550); 2 Nov 2017 00:12:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20283 invoked from network); 1 Nov 2017 21:36:10 -0000
References: <e7a2d0fa-bb31-7320-44ba-47652bcfba47@Z5T1.com>
	<32e60988-4ab4-fe39-9d94-5f3453eb50b0@orlitzky.com>
Mail-Followup-To: oss-security@lists.openwall.com
Message-ID: <87o9ol4r7k.fsf@frougon.crabdance.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Date: Wed, 01 Nov 2017 22:35:59 +0100
From: Florent Rougon <f.rougon@free.fr>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Fw: Security risk of vim swap files
To: oss-security@lists.openwall.com

Michael Orlitzky <michael@orlitzky.com> wrote:

> This is what I used to do in emacs before I disabled the backups
> completely. I was wondering if there were any problems with it. If there
> aren't, it seems like a better default to me, for both emacs and vim.

On Emacs, this has been possible for a loooong time, and in a way that
prevents collisions due to the same basename:

  (setq backup-directory-alist '(("." . "/some/path")))

This saves backup files in /some/path with names such as
'!home!me!some-subdir!some-basename~'.

It's also possible to programmatically disable the backup feature for
specific files:

  ;; For `some',
  ;; cf. <http://stackoverflow.com/questions/5902847/how-do-i-apply-or-to-a-list-in-elisp>.
  (require 'cl)
  (defun my-backup-enable-predicate (fullpath)
    (and (not (some #'(lambda (file)
                         (string-equal fullpath (expand-file-name file)))
                    '("~/.zsh_history"
                      "~/.local/share/mc/history")))
         (normal-backup-enable-predicate fullpath)))

  (setq backup-enable-predicate 'my-backup-enable-predicate)

Finally, an easier but non-programmatic solution when you can afford to
write comments directly to the file: use “file variables”, e.g., with
this at the beginning of the file you want to never be backed up:

-*- make-backup-files: nil -*-

Regards

-- 
Florent
