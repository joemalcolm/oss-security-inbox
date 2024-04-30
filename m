Received: (qmail 3412 invoked by uid 550); 30 Apr 2024 22:58:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12083 invoked from network); 30 Apr 2024 22:48:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1714517305; x=1715183971; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=dQ+UVcUlMv1k56nNV+5nXqX/QqDE1+lOvD9d0Rc5cmQ=;
 b=VTLDxeWnxH20Ho6HffH61SeWRJA0F6Jf40xP7A4kJGeNKyRw6enBU7SzYYRlqX/HFI7Y7TFi
  0sw/ybeAEAHJ8C/bEzvFp86WAEtD8iiZY2t4iJMOyi/lCkZYfiDP5zj2wOGdoUVEI4xCHbzFEY
  voTcbzKl09RvLDWhW+6isWDg/Ht460VqoApPWGsDWll1JGxuWoLwK5jqZjNWwnx2D/MJmW0Kld
  6Rml2006M5qKlYB+F9cnGfuFqnkRo1FrgcJ2nFsnY8/qO6hQJsiFstkwCvQeBBjyfM7TF4bT7t
  lLXMvX6YChF8pJRFkl/p1sicxx3ie4zC6jL3exsu7rXl9mkw==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1714517305; x=1715183971; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-date:resent-from:resent-to:
  resent-cc:in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:message-id:mail-followup-to:openpgp:
  blahblahblah; bh=dQ+UVcUlMv1k56nNV+5nXqX/QqDE1+lOvD9d0Rc5cmQ=;
 b=NkfV4PdHObdzPlEqGxnxYAan7KYJAJzOJDSPgc/yUVTLY09VkeIsSDyPgqBPx6Rs9eekrNu0
  qXXRb1OWRPvKBw==
Date: Wed, 01 May 2024 00:48:23 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240430224823.uA8Nr1Cp@steffen%sdaoden.eu>
In-Reply-To: <ZjBHOEHylGAaIo57@moon>
References: <20231221143630.GD14101@suse.de> <ZjBHOEHylGAaIo57@moon>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] New SMTP smuggling attack

Mark Esler wrote in
 <ZjBHOEHylGAaIo57@moon>:
 |To mitigate future end-of-data sequence attacks, like SMTP Smuggling, MTAs
 |should comply with RFC 5321 section 4.1.1.4 [0] to strip control
 |characters other than <SP>, <HT>, <CR>, and <LF> in the DATA section of
 |SMTP messages.

Given that RFC 733 is from 1977 and RFC 822 is from 1982 i feel
this entire thread is exaggerating.

The smuggling problem solely was rooted in the LF / CRLF "wars"
from at minimum the early 70s (Unix and more), with terminal
drivers doing auto-translation on-the-fly etc etc etc.
The internet history list may be worthwhile for this, or examining
the history of Unix programs.  Ie, in January i also (funny)
talked to John Klensin on an IETF list saying

  [.]The CR/LF "problem" seems to have been "addressed" in
  UNIX as early as 1972, ie "6/12/72 STTY (II)" gives

    020  map CR into LF; echo LF or CR as LF-CR
    ...
    Mode 020 causes input carriage returns to be turned into new-lines;
    input of either CR or LF causes LF-CR both to be echoed
    (used for GE TermiNet 300's and other terminals without the
    newline function).

  In 1974 it became

    -nl allow carriage return for new-line,
        and output CR-LF for carriage return or new-line
    nl  accept only new-line to end lines

  Which makes me *think* that "Houston, we have a problem" was
  ACKnowledged, and in order not to be a crook something would have
  been done about it, saving even a byte per line.  But i do not
  know, this was all military and other high sphere academics by
  then.  Interesting, by the way, that "so many" expensive decisions
  were deemed necessary[.]

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
