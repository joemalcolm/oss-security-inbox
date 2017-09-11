X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1479" "Sunday" "10" "September" "2017" "23:56:20" "-0700" "Paul Eggert" "eggert@cs.ucla.edu" "<09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>" "40" "[oss-security] GNU Emacs 25.2 enriched text remote code execution" "^Date:" nil nil "9" "2017091106:56:20" "[oss-security] GNU Emacs 25.2 enriched text remote code execution" (number mark "        eggert@cs.uc Sep 10   40/1479  " thread-indent "\"[oss-security] GNU Emacs 25.2 enriched text remote code execution\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 24204 invoked by uid 550); 11 Sep 2017 10:41:52 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3399 invoked from network); 11 Sep 2017 06:56:37 -0000
X-Virus-Scanned: amavisd-new at zimbra.cs.ucla.edu
Organization: UCLA Computer Science Department
Message-ID: <09f18b8d-037d-edd2-84d5-270cd9b44d54@cs.ucla.edu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Date: Sun, 10 Sep 2017 23:56:20 -0700
From: Paul Eggert <eggert@cs.ucla.edu>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] GNU Emacs 25.2 enriched text remote code execution
To: oss-security@lists.openwall.com

GNU Emacs is an extensible, customizable, free/libre text editor and software 
environment.  When Emacs renders MIME text/enriched data (Internet RFC 1896), it 
is vulnerable to arbitrary code execution. Since Emacs-based mail clients decode 
"Content-Type: text/enriched", this code is exploitable remotely. This bug 
affects GNU Emacs versions 19.29 through 25.2.

Although we know no efforts to exploit this in the wild, exploitation is easy.

== Details ==

https://bugs.gnu.org/28350

== Patch ==

https://git.savannah.gnu.org/cgit/emacs.git/commit/?h=emacs-25&id=9ad0fcc54442a9a01d41be19880250783426db70

== Mitigation ==

To work around the bug in unfixed versions of Emacs, put the following code in 
your personal or site-wide Emacs init file (~/.emacs, ~/emacs.d/init.el, 
site-start.el):

   ;; Mitigate Bug#28350 (security) in Emacs 25.2 and earlier.
   (eval-after-load "enriched"
     '(defun enriched-decode-display-prop (start end &optional param)
        (list start end)))

and avoid 'emacs -Q' and similar options that bypass normal initialization.

== Timeline ==

2017-09-04. Bug reported to the Emacs bug tracker by Charles A. Roelli.

2017-09-07. POC for remote code execution sent to the maintainers of Emacs and 
Gnus (Reiner Steib <Reiner.Steib@gmx.de>, private mail).

2017-09-08. Patch (by Lars Ingebrigtsen <larsi@gnus.org>) to disable the 
problematic code and mitigation (private mail).

2017-09-09. Patch committed in main development repository.
