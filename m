X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6071" "Monday" "30" "January" "2017" "15:36:37" "-0300" "dequis" "dx@dxzone.com.ar" "<CABAA10T31CKTgskyX78JBp_kmw9TyVOAa8XzS=ba2t3YC=TVMw@mail.gmail.com>" "203" "[oss-security] CVE Request - Remote DoS vulnerabilities in BitlBee" nil nil nil "1" "2017013018:36:37" "[oss-security] CVE Request - Remote DoS vulnerabilities in BitlBee" (number mark "U       dx@dxzone.co Jan 30  203/6071  " thread-indent "\"[oss-security] CVE Request - Remote DoS vulnerabilities in BitlBee\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 29901 invoked by uid 550); 30 Jan 2017 18:39:33 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28201 invoked from network); 30 Jan 2017 18:37:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kiace-com-ar.20150623.gappssmtp.com; s=20150623;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=RyFbFfjMM+D1Bhdc/QOEz87vVrbmDi+FQ4wdz4nBhLg=;
        b=Ast7SrYjRYUGvCZYyJh08kf3Ruy1BrXToeoEE3JUfVJ9RXnk+wUzD8Pt4kbBBVUjuO
         pd9JVA892SZyaE1bAUSr0ov1Uk607DLegm5BnQrK2sgJRQWNempbl52hhNba1Z1O2/p4
         0nqsztghU7P0LAoeuudscqUoxpG1TRM4lJbgGQXVRBJoM6Fr1rgzObmJi/zuQ27FYELo
         OXl+AD3M/PpNaElPQe/4DxImXyV61vyf8uFIFCUJtZ/bM2SijzLQ5rnQ0gDktzqPIysV
         mL95bA/B5hdDNfpvit/Qd44hL9c83ndE3o1S/4BnEtN88zZmyeziHsnGMI8q2gvFwS1+
         WkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=RyFbFfjMM+D1Bhdc/QOEz87vVrbmDi+FQ4wdz4nBhLg=;
        b=XKvE5Tkjavux/vXCQggCKxSvZtH93RkA/BUvaejXiL0Xv5dFx/kx4lbur4q7w6a3QK
         lvdXkBPy3GdQY49vnS+LTZZBfFbs0C/7dJL5Yx75Guq/4GL82K3shXjeFVAKsA53BLG5
         d2vfBWgum/n0Zxi5KOa18gL4eioW96JGHCjhATes+BRcTRgl3PJuwz0tXKS8hxcCO5pM
         plQyNm+8S6GU/aXumK0epZ/pqH3WcZG1DmBBZiCUW1JdfbvrRQzjSNETiGQIhJLtBrYw
         NduMNA+6KKtkQ73U7dFdPLMU2yXQELcDr/5SkK4YXaQNexYJxOcKPBBrIOxI8r7+FcBV
         NDng==
X-Gm-Message-State: AIkVDXIvevrR7VQheGcKcsGXBHJ1hGbO87GI4dqsWkdZOqK6LTgXKdBNemV9XNucCt+0RPrQs66Riv1olcMe9w==
X-Received: by 10.200.35.6 with SMTP id a6mr21446226qta.210.1485801417861;
 Mon, 30 Jan 2017 10:36:57 -0800 (PST)
MIME-Version: 1.0
Sender: hola@kiace.com.ar
From: dequis <dx@dxzone.com.ar>
Date: Mon, 30 Jan 2017 15:36:37 -0300
X-Google-Sender-Auth: 6LNOZmkubO24idXbSFKD9KU-ea0
Message-ID: <CABAA10T31CKTgskyX78JBp_kmw9TyVOAa8XzS=ba2t3YC=TVMw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset=UTF-8
Subject: [oss-security] CVE Request - Remote DoS vulnerabilities in BitlBee

Hi oss-security,

I've just released BitlBee 3.5.1 which includes fixes for these issues:

a) bitlbee-libpurple: Use after free when expiring file transfer requests.
b) Null pointer dereference with file transfer request from unknown contacts.
c) Incomplete fix for issue (b), which left bitlbee-libpurple affected.

I have already requested three CVEs to the distros mailing list when
the issue was not public, but did not receive any reply at the time of
this writing. If it is appropriate, I'd like to request them in this
list instead.

The first two were already public (fixed in 3.5, released 2017-01-08) but were
not considered security issues before. The third issue is what 3.5.1
fixes.

Distros that do not ship the bitlbee-libpurple variant can ignore
3.5.1 if they already have 3.5.

The full advisories (without attachments) follow, with links to the
full version in the tracker:

----------------------------------------------------------------------

https://bugs.bitlbee.org/ticket/1281

# bitlbee-libpurple: Use after free when expiring file transfer requests

## Description

Pending file transfer requests expire after 120 seconds, which may
result in use after free if the corresponding account is disconnected.
A malicious remote server could force this disconnection.

## Impact

This results in denial of service (remote crash of the BitlBee
instance), or remote code execution (theoretically).

For BitlBee servers configured in ForkDaemon mode (default) or inetd
mode, the crash is limited to one user connection, who may just
reconnect.

* Access Vector: Network
* Access Complexity: High
* Authentication: None
* Confidentiality Impact: None
* Integrity Impact: None
* Availability Impact: Partial
* Exploitability: Functional Exploit Exists
* Remediation Level: Official Fix
* Report Confidence: Confirmed
* Target Distribution: Medium
* CVSS v2 score: 1.6

## Affected versions

bitlbee-libpurple 3.4.2 or older

## Unaffected versions

bitlbee (non-libpurple builds), any version

bitlbee-libpurple 3.5

## Resolution

* Upgrade to 3.5 (released 2017-01-08)

* For 3.4.2 see the attached
0001-purple-fix-file-transfer-memory-management-3.4.2.patch [not
included in this email]

* For 3.4.1 and 3.4 see the attached
0001-purple-fix-file-transfer-memory-management-3.4-3.4.1.patch [not
included in this email]

* For earlier versions upgrading is strongly recommended because of
the amount of accumulated bugfixes, but the following line may be
removed from `protocols/purple/purple.c` to prevent any processing of
incoming file transfers:

    purple_xfers_set_ui_ops(&bee_xfer_uiops);

## Discussion

This affects any libpurple protocol when used through BitlBee. It does
not affect other libpurple-based clients such as pidgin.

This is a very visible issue - all file transfer request attempts and
all disconnections will be logged in the control channel and visible
by the targeted user. File transfer requests look like this:

    <@root> [account] - File transfer request from [username] for
[filename] (0 kb).
    <@root> Accept the file transfer if you'd like the file. If you
don't, issue the 'transfer reject' command.

Cancelling the file transfer request using the "transfer reject"
command before the disconnection happens can prevent this. However,
using that command after the account is disconnected will result in an
immediate crash.

## References

Original bugfix commit:

https://github.com/bitlbee/bitlbee/commit/ea902752503fc5b356d6513911081ec932d804f2


----------------------------------------------------------------------

https://bugs.bitlbee.org/ticket/1282

# Null pointer dereference with file transfer request from unknown contacts

## Description

Receiving a file transfer request from a contact not in the contact
list results in a null pointer dereference, leading to remote DoS by
malicious remote clients.

Additionally, due to an incomplete fix of the issue above in BitlBee
3.5, the bitlbee-libpurple variant is still affected in 3.5.

## Impact

This results in denial of service (remote crash of the BitlBee
instance). Remote code execution does not seem to be possible (fixed
offset)

For BitlBee servers configured in ForkDaemon mode (default) or inetd
mode, the crash is limited to one user connection, who may just
reconnect.

CVSS for bitlbee 3.4.2 and lower:

* Access Vector: Network
* Access Complexity: Low
* Authentication: None
* Confidentiality Impact: None
* Integrity Impact: None
* Availability Impact: Partial
* Exploitability: Functional Exploit Exists
* Remediation Level: Official Fix
* Report Confidence: Confirmed
* Target Distribution: High
* CVSS v2 score: 4.1

CVSS for bitlbee-libpurple 3.5:

* Target Distribution: Medium
* CVSS v2 score: 3.1

## Affected versions

bitlbee-libpurple 3.5 or older

bitlbee (non-libpurple builds) 3.4.2 or older

## Unaffected versions

bitlbee-libpurple 3.5.1 or newer

bitlbee (non-libpurple builds) 3.5 or newer

## Resolution

* Upgrade to 3.5.1 (released 2017-01-30)

* For 3.5 see the attached
0001-Fix-null-pointer-dereference-on-ft-attempts-3.5.patch [not
included in this email]

* For 3.4.2, 3.4.1 and 3.4 see the attached
0001-Fix-null-pointer-dereference-on-ft-attempts-3.4.x.patch [not
included in this email]

* For 3.2.x and 3.2.x see the attached
0001-Fix-null-pointer-dereference-on-ft-attempts-3.0.x-3.2.x.patch
[not included in this email]

## Discussion

The issue from 3.4.2 and older only affects the jabber protocol, which
is the only non-purple protocol which implements file transfers.

The issue that is still present in 3.5 affects any libpurple protocol
that implements file transfers when used through BitlBee. It does not
affect other libpurple-based clients such as pidgin.

There's no visible effect of the issue other than the crash.

## References

Incomplete fix commit included in 3.5:

https://github.com/bitlbee/bitlbee/commit/701ab8129ba9ea64f569daedca9a8603abad740f

Libpurple specific bugfix commit included in 3.5.1:

https://github.com/bitlbee/bitlbee/commit/30d598ce7cd3f136ee9d7097f39fa9818a272441
