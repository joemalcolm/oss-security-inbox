X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1390" "Saturday" "27" "August" "2016" "23:16:56" "+0200" "Damien Regad" "dregad@mantisbt.org" "<ea35113c-d493-4bf7-ca47-9df7891dde67@mantisbt.org>" "64" "[oss-security] MantisBT weakened CSP when using bundled Gravatar plugin" nil nil nil "8" "2016082721:16:56" "[oss-security] MantisBT weakened CSP when using bundled Gravatar plugin" (number mark "U       dregad@manti Aug 27   64/1390  " thread-indent "\"[oss-security] MantisBT weakened CSP when using bundled Gravatar plugin\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24182 invoked by uid 550); 28 Aug 2016 06:10:45 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16046 invoked from network); 27 Aug 2016 21:17:10 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:to:from:subject:message-id:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=cIKspK7bUoCnu6P+GaiSmNVxrcBSs++tKfrVTlcWdTg=;
        b=bgsH39zIInpyetJioUTVP6HmbaxmX99Ka7Js/t0V9+/IJ1NBK8eEnxsp9+6Z9Y+AIC
         LoN68Q3Y34FAwUf3RBaQccFUO9KP8tthEV6YCMeo7lhKQepkE7rPSifGewq3wpjRl6CG
         eA4pkdE9MAGvhMs+nJUTINXwaA3E8eUvHIwbPx2Hq/efWfTjQRI858KicuwGfBciLY2B
         M2PNuxEGHoroeAQvDAir0EN7dgCBzkUE3EQIWJs3hRM+vMkbe6tWCm2V3NL8ASc7tiC5
         4lo9U33LMcqP20WsreTFSNMrWtyall3OMJPNGcO8iXV02KrkQVt+VbwjcGwxONJqEw5b
         hv/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:to:from:subject:message-id:date
         :user-agent:mime-version:content-transfer-encoding;
        bh=cIKspK7bUoCnu6P+GaiSmNVxrcBSs++tKfrVTlcWdTg=;
        b=MKIKUUa8FYQtD+7NDKz7slOQtfTIty6sidUeS/tqTtv21VlvokDm/1QwvCTHAGlnuJ
         Tbrg0W6iIdKaTzKsHcybwP815z4jDuXcxCat+grcdbG2gesbdDGeUqyNLDXtFXqcJAPB
         bFcTryjL3At0ByDc48r0SLMbYd1FU7j4bsHz2n8vpL+t/E9Ku/FJ8nV/LDnyUuklP/Ve
         nja4M722CWLtriwqNugqjQ0AiYnrBNVRIHXJspTvo2nirmn3Z2jvSkv5malZvAwo7I9S
         rw208hCjm+4SFYM1cCq8N0Y5mKUpNICLaopTTpA4Z60hn/bOe1sPUTdcFy/KnskloYwi
         mjXg==
X-Gm-Message-State: AE9vXwMqB6uXo4ptAK6x4Dv8Ob9HW3S15/gTFES7WDl7Neyx57E/pN78TUi/Rg9aPh4ySQ==
X-Received: by 10.194.126.72 with SMTP id mw8mr8941572wjb.193.1472332618573;
        Sat, 27 Aug 2016 14:16:58 -0700 (PDT)
Sender: Damien Regad <dregad@gmail.com>
To: oss-security@lists.openwall.com
From: Damien Regad <dregad@mantisbt.org>
Message-ID: <ea35113c-d493-4bf7-ca47-9df7891dde67@mantisbt.org>
Date: Sat, 27 Aug 2016 23:16:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Subject: [oss-security] MantisBT weakened CSP when using bundled Gravatar plugin

Greetings,

Please assign a CVE ID for the following issue.

Description
-----------
MantisBT 1.3.0-rc.2 introduced a new bundled plugin to handle display of
users' avatars using Gravatar.

Instead of adding the Gravatar web site to the list of allowed image
sources in MantisBT's Content Security Policy, the plugin was replacing
the whole policy by:

   img-src 'self' http://www.gravatar.com/

instead of the more strict default one of:

   default-src 'self'; frame-ancestors 'none'; style-src 'self';
   script-src 'self'

Relaxed policy allows execution of remote and inline scripts, e.g.
potentially enabling XSS attacks.


Affected versions
-----------------
- >= 1.3.0-rc.2
- >= 2.0.0-beta.1

Fixed in versions:
------------------
- 1.3.1
- 2.0.0-beta.2

As of this writing, these have not been released yet, but both should be
available in the coming days. Until then, installations should be
patched manually.

As a workaround, disabling the Gravatar plugin restores the safer
default policy.

Patch
-----
See Github [1]

Credits
-------
The issue was discovered by Johannes Schultz, and fixed by Victor Boctor
(MantisBT Developer).

References
----------
Further details available in our issue tracker [2]


Best regards,
D. Regad
MantisBT Developer
http://mantisbt.org


[1] https://github.com/mantisbt/mantisbt/commit/b3511d2f
[2] https://mantisbt.org/bugs/view.php?id=21263

