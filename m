X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1661" "Tuesday" "18" "October" "2016" "13:19:26" "-0600" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty0yD+DmmeqC3dS2u=4+QNawqt6OJjyXRW2x1pqid=S5tQ@mail.gmail.com>" "45" "Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" nil nil nil "10" "2016101819:19:26" "[oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack" (number mark "U       kseifried@re Oct 18   45/1661  " thread-indent "\"Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to DoS amplification attack\"\n") "<e2b42449-584c-9d7f-070e-b65b3150d3bc@redhat.com>" ("<20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>" "<f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com>" "<e2b42449-584c-9d7f-070e-b65b3150d3bc@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22194 invoked by uid 550); 18 Oct 2016 19:19:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22176 invoked from network); 18 Oct 2016 19:19:38 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=o1q/qAeM20dopsSFfBlRe9ZQQj6jHc/qEtZt7EZ269c=;
        b=E01cj5sldZnm8fP5WAi95IujJuUmpeNwnN496o/+9BowoYbrBnSTZy8X6CcDmWbqqH
         XBnvGzl2xeFJHHb2yo/myCd9Hfk+I/IqaSOknEbymelZiRTtqo9K9OqozOVNyGLXAWA2
         K8wjVkvkClzmJLy5NOXegSBFCq/AoqGY5Y73S5lQIh+yWz8GVl1tudshL2dmOKPVrdvd
         3U3r2UMDWsFieKc+CRsbjpy+hYxm8T7e5dMJIxyso9IpGEE3tkvS5PKlX7C2+4pmXMS4
         q36KyzQGYYv37SJlUSbZvOAdrQ5T+WKsGzWi2MHvDnMcWsQsi84js/IraPvQZBDg/Dl9
         LJGQ==
X-Gm-Message-State: AA6/9RlPHX7Vww1ktVOYWAszr60rWYwZt/8SRCVOxbnZBumwRsDc126xAbNCTOfpMzkoG2s7KiHZbdmA1yok6V9u
X-Received: by 10.157.57.136 with SMTP id y8mr1199507otb.73.1476818366706;
 Tue, 18 Oct 2016 12:19:26 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <e2b42449-584c-9d7f-070e-b65b3150d3bc@redhat.com>
References: <20160613144048.9BBA942E034@smtpvbsrv1.mitre.org>
 <f24b7778-0446-c5d1-4905-e75a580fcbc4@redhat.com> <e2b42449-584c-9d7f-070e-b65b3150d3bc@redhat.com>
From: Kurt Seifried <kseifried@redhat.com>
Date: Tue, 18 Oct 2016 13:19:26 -0600
Message-ID: <CANO=Ty0yD+DmmeqC3dS2u=4+QNawqt6OJjyXRW2x1pqid=S5tQ@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Cc: Huzaifa Sidhpurwala <huzaifas@redhat.com>, CVE ID Requests <cve-assign@mitre.org>
Content-Type: multipart/alternative; boundary=001a11407770254a71053f28924a
Subject: Re: [oss-security] Re: CVE Request: IKEv1 protocol is vulnerable to
 DoS amplification attack

--001a11407770254a71053f28924a
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 12, 2016 at 1:46 PM, Paul Wouters <pwouters@redhat.com> wrote:

>
>
> I have tested openswan and strongswan and confirmed it contains the same
> amplification that is inherent in being IKEv1 compliant.
>
> Neither implementation has applied the hardening that libreswan has
> applied for this that was the original information that caused
> CVE-2016-5361 to be issued for libreswan.
>
> I believe MITRE needs to fix the inconsistency in the issuance of
> CVE-2016-5361, expand it to be about the IKEv1 protocol, and gather
> the other vendor information and patches, or issue additional vendor
> specific CVE's. I believe the first solution is better.
>
> Paul
>

So I had a chance to talk to Paul

Basically: the RFC doesn't define a specific way to handle this, as such a
CVE cannot be given to the RFC (currently CVEs will be given to
RFCs/protocols that say "do something bad" like using weak encryption
algorithms).

As such it was left up to all the IKE implementations themselves to
determine what to do with respect to retransmits.

I think it's safe to say an amplification of 1:10 or more qualifies as a
problem, I'm not sure what the exact amplification ratio to qualify for a
CVE is (1:3, 1:7?) but I think 1:10 or more should definitely qualify.

Thus a lot of other IKE implementations will be needing CVEs for this class
of problem (as well as other protocols).

--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a11407770254a71053f28924a--
