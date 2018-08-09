X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1742" "Thursday" "9" "August" "2018" "17:42:39" "+0200" "Cedric Buissart" "cbuissar@redhat.com" "<CAKG8Do5TnCQtc=o7Z1mkk94_gM9LbFywkrt218a0NpeL1a=9wA@mail.gmail.com>" "60" "[oss-security] cobbler CVE-2018-10931: CobblerXMLRPCInterface exports internal only functions over XMLRPC" nil nil nil "8" "2018080915:42:39" "[oss-security] cobbler CVE-2018-10931: CobblerXMLRPCInterface exports internal only functions over XMLRPC" (number mark "U       cbuissar@red Aug  9   60/1742  " thread-indent "\"[oss-security] cobbler CVE-2018-10931: CobblerXMLRPCInterface exports internal only functions over XMLRPC\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 18302 invoked by uid 550); 9 Aug 2018 15:43:13 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18277 invoked from network); 9 Aug 2018 15:43:12 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2ea/6kVAqBwmRn8TkgWG3lpLV8tknJPCgNfIqZxcuzk=;
        b=m5Og5X0jJDhqBpbcddIcRfgFaIVkUca7xjbeRurbEZ2qHYkh6Sw1alEOvlJH9cbXx2
         C8V3g5b4lULut3k5UbXPqm4pokjmdGWAQu7hv1ISaGlco9duRbLX1FxP+bRYWFTEDP8m
         BAsgM8kWaJmOoGd0JtJZxLsKZ9tVNTLBpeMbEO7JVcjF/giXJXhbZWlh6QQL7kYD+rZj
         6NEpBB1RJE5xIFG3qRKDtcVbqX5Xbect/D91AKJv2YGBW00sORLjkmlZ0cy/Tu8pzV4S
         5cVRUuzCRpFAK5J+do1I4+bbqZd1t4mZksQ/PXY4hLt9UpQS6Z5X3+f8ActCXuZjPAKY
         aihw==
X-Gm-Message-State: AOUpUlGbeRQdmd54W1nwPAnaSvLRjp/Cv3SQiSLsfgszua/OTLnNavaa
	oq+UBclH4nU+fMd4cXAQ7eyEqciBh4Fobo8its/8c+7AuF9fYQ==
X-Google-Smtp-Source: AA+uWPx6Mknr5U1GY3rPR/f5CeFf9QWGVIVJMCDOxwf5/YmdWZ7zIO2/0x3r7+VT1lQ/KrCw4a+LBPStNxXNFc0vcq8=
X-Received: by 2002:a6b:9554:: with SMTP id x81-v6mr2273936iod.93.1533829380282;
 Thu, 09 Aug 2018 08:43:00 -0700 (PDT)
MIME-Version: 1.0
From: Cedric Buissart <cbuissar@redhat.com>
Date: Thu, 9 Aug 2018 17:42:39 +0200
Message-ID: <CAKG8Do5TnCQtc=o7Z1mkk94_gM9LbFywkrt218a0NpeL1a=9wA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="0000000000005bb1fb0573027bc1"
Subject: [oss-security] cobbler CVE-2018-10931: CobblerXMLRPCInterface exports internal only
 functions over XMLRPC

--0000000000005bb1fb0573027bc1
Content-Type: text/plain; charset="UTF-8"

Cobbler is a Linux installation server that allows for rapid setup of
network
installation environments. It is used in products like Red Hat Enterprise
Satellite 5 and Spacewalk.  Upstream project is at :
https://cobbler.github.io/


While diagnosing the following 2 flaws :
https://movermeyer.com/2018-08-02-privilege-escalation-exploits-in-cobblers-api/

Another flaw has been found: cobbler exposes all functions from its
CobblerXMLRPCInterface class over XMLRPC. However, python renames the __*
function with _<classname>__<functionname>.  A remote, unauthenticated
attacker
could use this flaw by calling the real name of any __* function and gain
high
privileges within cobbler or upload files to arbitrary location in the
context
of the daemon.  This is identified as CVE-2018-10931

All versions of cobbler (at least since 2.0.7) are affected.

To reproduce the issue: use the reproducers from the report above and call
any
__<name> function as _CobblerXMLRPCInterface__<name>

The patch for this specific vulnerability (i.e.: it does *not* fix the
vulnerability reported by movermeyer.com) :

---
 cobbler/remote.py | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/cobbler/remote.py b/cobbler/remote.py
index 94a18e7..ea0e354 100644
--- a/cobbler/remote.py
+++ b/cobbler/remote.py
@@ -1752,6 +1752,9 @@ class ProxiedXMLRPCInterface:

     def _dispatch(self, method, params, **rest):

+        if method.startswith('_'):
+            raise CX("forbidden method")
+
         if not hasattr(self.proxied, method):
             raise CX("unknown remote method")

---


Best regards,

-- 
Cedric Buissart,
Product Security

--0000000000005bb1fb0573027bc1--
