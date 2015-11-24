X-VM-v5-Data: ([nil nil nil nil nil nil t nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1007" "Tuesday" "24" "November" "2015" "09:19:33" "-0800" "David Jorm" "david.jorm@gmail.com" "<CAO33bZWXgXStp2aQfk8OB3J3U-O0TMpEAHCDXYdspAtGt+egQA@mail.gmail.com>" "26" "[oss-security] CVE request: DoS in ONOS when handling jumbo ethernet frames" "^Cc:" nil nil "11" "2015112417:19:33" "[oss-security] CVE request: DoS in ONOS when handling jumbo ethernet frames" (number mark "  z     david.jorm@g Nov 24   26/1007  " thread-indent "\"[oss-security] CVE request: DoS in ONOS when handling jumbo ethernet frames\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 1001
X-Mozilla-Status2: 00000000
Received: (qmail 27957 invoked by uid 550); 24 Nov 2015 17:19:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27939 invoked from network); 24 Nov 2015 17:19:45 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:cc:content-type;
        bh=DHTIHmzCWoTo3meb636HsrU7zIv5mojamGe2eTAneps=;
        b=I6sG8uKaHn17SYqdfwEJ66kEzC+r6MLQ8Ads6dsHbei7Qf9sKMQ8dRa5syiDLHlAs+
         JPlhqHD+U4Tj4XMmmbFe8sOO/jJmBztZOwxC+8OcHJxmajxp+5KPXVa6rwSCUWn8pMuf
         QtgFCRJx3tKt/tUH8IrvPY5K21fMMkoh9/jpnj7ONAbf4U1jFwI30nIhhKGpIVthka4c
         M4avP6LGbpfCedOjO4TNZC7WrRLXwPRpxHlWdBr67favZLtGXDpxsMACvO+ovzqp8DQB
         Mli+J/rR3yb/LLpI9sVLMYvcav4gxq2QcKxRxVDAYKz557Odv8ClIxT7MrOwFOHA3ruA
         DbiA==
MIME-Version: 1.0
X-Received: by 10.60.42.97 with SMTP id n1mr20998821oel.10.1448385573533; Tue,
 24 Nov 2015 09:19:33 -0800 (PST)
Message-ID: <CAO33bZWXgXStp2aQfk8OB3J3U-O0TMpEAHCDXYdspAtGt+egQA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=089e014951fa9bc0af05254c8bd6
Cc: Kurt Seifried <kseifried@redhat.com>
Date: Tue, 24 Nov 2015 09:19:33 -0800
From: David Jorm <david.jorm@gmail.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request: DoS in ONOS when handling jumbo ethernet frames
To: oss-security@lists.openwall.com

--089e014951fa9bc0af05254c8bd6
Content-Type: text/plain; charset=UTF-8

It was found that ONOS would throw exceptions when handling jumbo ethernet
frames. The exceptions were not caught and handled, so a remote
unauthenticated attacker could use this flaw to perform a denial-of-service
attack against an ONOS system.

To exploit this issue, the attacker must be able to send a jumbo ethernet
frame to a switch controlled by ONOS. Only the connection between the
controller and the switch generating the packet-in message of the malicious
packet will be affected (disconnected). More details are available here:

https://jira.onosproject.org/browse/ONOS-3349

An advisory is now live with no CVE ID:

https://wiki.onosproject.org/display/ONOS/Security+advisories

Please assign a CVE ID to this issue. A request was sent to MITRE directly
9 days ago with no answer. We need a CVE ID within the next 24 hours.

Thanks
David Jorm on behalf of the ONOS security response team

--089e014951fa9bc0af05254c8bd6--
