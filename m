X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["227" "Monday" "30" "November" "2020" "16:10:35" "+0000" "Andrew Cooper" "andrew.cooper3@citrix.com" "<10f61e14-05f3-0294-8cda-e63764d98cbc@citrix.com>" "11" "Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change" nil nil nil "11" "2020113016:10:35" "[oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change" (number mark "U       andrew.coope Nov 30   11/227   " thread-indent "\"Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change\"\n") "<CAA8xKjWY2+xo57n8hsvG6yMyhs6nAH+S4NbCsEJLWEVff_aWzg@mail.gmail.com>" ("<E1khX2v-0002f4-3b@xenbits.xenproject.org>" "<CAA8xKjWY2+xo57n8hsvG6yMyhs6nAH+S4NbCsEJLWEVff_aWzg@mail.gmail.com>") nil nil nil nil nil nil nil "Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption from XSA-346 change" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 15568 invoked by uid 550); 30 Nov 2020 16:43:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 25704 invoked from network); 30 Nov 2020 16:12:54 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=citrix.com; s=securemail; t=1606752774;
  h=subject:to:cc:references:from:message-id:date:
   mime-version:in-reply-to:content-transfer-encoding;
  bh=wqpac+ZXvFw1ZF2F2HGgOYXyHv5dQoS1gJbo6VOVPi8=;
  b=ehy2KJEJC9HTqIGt4f+l4ndCrWIz5GISz33j6ntrwR1HnZNoPkOMoIM4
   G2+M3Etv1ALOR4YBRQ+8+Q46W8fiYZZkp6zviKDKwoCT/HNNXDSySxWBx
   ywYA2LlR2z8cK1TcIPtQKeATTZtBM8u6h9pjPHoHNgO30GIBPBo/z/Ynl
   g=;
Authentication-Results: esa5.hc3370-68.iphmx.com; dkim=none (message not signed) header.i=none
IronPort-SDR: RRsSWBnkNpbKylkUsEaWqll+sSpLu4/eGCXiDrUCHBqP8Ozyq8XAr/7IFzNt/wAjBECqPhyEPI
 Gc5HqvniTSBqcptvJtE9VcmZ7W9myGSPlJWmGL0dC+ceYzKxbYzgoj0S0LIt6XvNCWLrwId178
 /i5whk+BDBiGXwJO+1EBHN0qm4fxKhLb3Z+y3kfNSTAtdBvS1/ZLMwpcYraldDZ0lEgiDFLXfQ
 bAgBs7/ocPM3BqG1AX/cPIUMsA02qJdO3RAgPLa+QRCN06Xtxqetc5F2oM/Aa64pRwzfgYRqCY
 Bo4=
X-SBRS: None
X-MesageID: 32181387
X-Ironport-Server: esa5.hc3370-68.iphmx.com
X-Remote-IP: 162.221.158.21
X-Policy: $RELAYED
X-IronPort-AV: E=Sophos;i="5.78,382,1599537600"; 
   d="scan'208";a="32181387"
To: Mauro Matteo Cascella <mcascell@redhat.com>,
	<oss-security@lists.openwall.com>
CC: <xen-announce@lists.xen.org>, <xen-devel@lists.xen.org>,
	<xen-users@lists.xen.org>, Xen.org security team
	<security-team-members@xen.org>
References: <E1khX2v-0002f4-3b@xenbits.xenproject.org>
 <CAA8xKjWY2+xo57n8hsvG6yMyhs6nAH+S4NbCsEJLWEVff_aWzg@mail.gmail.com>
From: Andrew Cooper <andrew.cooper3@citrix.com>
Message-ID: <10f61e14-05f3-0294-8cda-e63764d98cbc@citrix.com>
Date: Mon, 30 Nov 2020 16:10:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAA8xKjWY2+xo57n8hsvG6yMyhs6nAH+S4NbCsEJLWEVff_aWzg@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Language: en-GB
X-ClientProxiedBy: AMSPEX02CAS01.citrite.net (10.69.22.112) To
 FTLPEX02CL04.citrite.net (10.13.108.177)
Subject: Re: [oss-security] Xen Security Advisory 355 v2 - stack corruption
 from XSA-346 change

On 30/11/2020 16:07, Mauro Matteo Cascella wrote:
> Hello,
>
> Has a CVE been assigned for this issue?
>
> Regards,

Some unknown 3rd party appears to have allocated a CVE and we're
currently trying to track down who.

~Andrew
