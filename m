X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1422" "Wednesday" "25" "November" "2015" "20:14:56" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty33EZoiT=Gr7Qe7RuUUAAa5NacFRcLZWNgadVAX9VEEmA@mail.gmail.com>" "39" "[oss-security] Re: CVE request: DoS in ONOS when handling jumbo ethernet frames" "^Cc:" nil nil "11" "2015112603:14:56" "[oss-security] Re: CVE request: DoS in ONOS when handling jumbo ethernet frames" (number mark "        kseifried@re Nov 25   39/1422  " thread-indent "\"[oss-security] Re: CVE request: DoS in ONOS when handling jumbo ethernet frames\"\n") "<CAO33bZWXgXStp2aQfk8OB3J3U-O0TMpEAHCDXYdspAtGt+egQA@mail.gmail.com>" ("<CAO33bZWXgXStp2aQfk8OB3J3U-O0TMpEAHCDXYdspAtGt+egQA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 18115 invoked by uid 550); 26 Nov 2015 03:15:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18097 invoked from network); 26 Nov 2015 03:15:08 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=QBkfs1TQ/u0r9w4Z8HjzJSScWe1Xm6CZ5slfhcp3w8M=;
        b=GrCRoG5IE3Ffh4KzW8BDGYEGkelVUvu3iWCAY4YaH7MfaVJyKQc4FLu/j5fa2pZM4g
         iLWVCyT87nRwLb9jRgpq/pyFbrUJpLdzWSM38gJzGqttYjr2Rj82mMovG/g0KBwD4Gzv
         ZwuBgG7hGVQsqKpdR+0znB3gKMARfAbYC1KzJPTFlwkexAohN2iEtepSPSUuayH2IMIE
         U1/K80YatqAF+btHoRRmOH6668JL6Z+O8sKL59CsGttcfDaxhv9sZrjmlyHtlDi56Trh
         VDYLyDcXf6/tydINpj6HWntMqcF26/bOweekRDNqwJM52EmF+MKDwFBpPfC498qWXCQ8
         Pyrw==
X-Gm-Message-State: ALoCoQnCxtIrKNI/ZFwfgh8q0Arp0UsnQxMb18jSVfKkHD2YeJLqSnkgSsmeH7Nv+yy6v5KjkDnD
MIME-Version: 1.0
X-Received: by 10.129.77.67 with SMTP id a64mr39227865ywb.47.1448507696622;
 Wed, 25 Nov 2015 19:14:56 -0800 (PST)
In-Reply-To: <CAO33bZWXgXStp2aQfk8OB3J3U-O0TMpEAHCDXYdspAtGt+egQA@mail.gmail.com>
References: <CAO33bZWXgXStp2aQfk8OB3J3U-O0TMpEAHCDXYdspAtGt+egQA@mail.gmail.com>
Message-ID: <CANO=Ty33EZoiT=Gr7Qe7RuUUAAa5NacFRcLZWNgadVAX9VEEmA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a1140c36cb66c2d052568faeb
Cc: oss-security <oss-security@lists.openwall.com>, CVE ID Requests <cve-assign@mitre.org>
Date: Wed, 25 Nov 2015 20:14:56 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Re: CVE request: DoS in ONOS when handling jumbo ethernet frames
To: David Jorm <david.jorm@gmail.com>

--001a1140c36cb66c2d052568faeb
Content-Type: text/plain; charset=UTF-8

On Tue, Nov 24, 2015 at 10:19 AM, David Jorm <david.jorm@gmail.com> wrote:

> It was found that ONOS would throw exceptions when handling jumbo ethernet
> frames. The exceptions were not caught and handled, so a remote
> unauthenticated attacker could use this flaw to perform a denial-of-service
> attack against an ONOS system.
>
> To exploit this issue, the attacker must be able to send a jumbo ethernet
> frame to a switch controlled by ONOS. Only the connection between the
> controller and the switch generating the packet-in message of the malicious
> packet will be affected (disconnected). More details are available here:
>
> https://jira.onosproject.org/browse/ONOS-3349
>
> An advisory is now live with no CVE ID:
>
> https://wiki.onosproject.org/display/ONOS/Security+advisories
>
> Please assign a CVE ID to this issue. A request was sent to MITRE
> directly 9 days ago with no answer. We need a CVE ID within the next 24
> hours.
>
> Thanks
> David Jorm on behalf of the ONOS security response team
>

Adding Mitre to CC to make sure we don't end up with a duplicate.

Please use CVE-2015-7516 for this issue. Happy Thanksgiving all!

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a1140c36cb66c2d052568faeb--
