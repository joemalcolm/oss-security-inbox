X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["694" "Tuesday" "12" "September" "2017" "20:08:00" "+0200" "Florian Weimer" "fw@deneb.enyo.de" "<87mv5zzt6n.fsf@mid.deneb.enyo.de>" "20" "Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution" "^Cc:" nil nil "9" "2017091218:08:00" "[oss-security] GNU Emacs 25.2 enriched text remote code execution" (number mark "        fw@deneb.eny Sep 12   20/694   " thread-indent "\"Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution\"\n") "<09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>" ("<09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7214 invoked by uid 550); 12 Sep 2017 18:08:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7196 invoked from network); 12 Sep 2017 18:08:13 -0000
References: <09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>
In-Reply-To: <09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu> (Paul Eggert's
	message of "Sun, 10 Sep 2017 23:56:20 -0700")
Message-ID: <87mv5zzt6n.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Cc: oss-security@lists.openwall.com
Date: Tue, 12 Sep 2017 20:08:00 +0200
From: Florian Weimer <fw@deneb.enyo.de>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] GNU Emacs 25.2 enriched text remote code execution
To: Paul Eggert <eggert@cs.ucla.edu>

* Paul Eggert:

> == Mitigation ==
>
> To work around the bug in unfixed versions of Emacs, put the following code in 
> your personal or site-wide Emacs init file (~/.emacs, ~/emacs.d/init.el, 
> site-start.el):
>
>    ;; Mitigate Bug#28350 (security) in Emacs 25.2 and earlier.
>    (eval-after-load "enriched"
>      '(defun enriched-decode-display-prop (start end &optional param)
>         (list start end)))

This does not override the function in all cases when enriched is
loaded.  Something like this would be more reliable, but it will of
course slow down the starting of Emacs:

(require 'enriched)
(defun enriched-decode-display-prop (start end &optional param)
  (list start end))
