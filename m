X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1920" "Thursday" "27" "January" "2022" "12:16:28" "+0000" "Chris Boot" "lists@bootc.boo.tc" nil "50" "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil "1" nil nil (number mark "U       lists@bootc. Jan 27   50/1920  " thread-indent "\"Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)\"\n") nil nil nil nil nil nil nil nil nil "Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's pkexec (CVE-2021-4034)" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 14006 invoked by uid 550); 27 Jan 2022 13:00:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22001 invoked from network); 27 Jan 2022 12:16:47 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boo.tc; h=cc:cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm2; bh=cym2kMcId64R1m
	B3pQFWlj9AAfhjcvwmfJ5So21eTvA=; b=ftAeS8BkMx5qua9Ml+byul3KnSTwLM
	EMihYTwExYC/1Rq7zWAWRI56+TkQ83BiPd8hGl/hlhLxTALV6PXsuYmVjMeMT+IG
	+BUDVcQK6eiQs6aSWPRJwgwOLG5IAyC7mkBJn2QoRcUXyjQTc0lZs065qdqGPsia
	Tfd7/yuPMbmG74zCqZJ8t0KSHdjMTDxT4wdYkO1XKHO/zl/dwOXawXfmf3TDc1v0
	O/p1+9gfdwjH+Rsm1ut2ChVcR23Zgy4Y/B85bgMkV3pnrzz+A4UJCmPsJBCynjiF
	xJ4IhZS+ymsBC69djd/w++kEIh8QM6Rv89MGFZzuNBFdfrd+p95GsWwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; bh=cym2kMcId64R1mB3pQFWlj9AAfhjcvwmfJ5So21eT
	vA=; b=hiEizjgO58IQlb2AyKSEfGwAi4qnzTaEjunjaSe8t9c1eZS9r9Nw95y6n
	MYmX0aooVN8MQcpbBFIH4CsebIJkYNK+ygEsIFwssLBUVtdQmgg+voDOyHHFZw1K
	ujeC4p3d6wmpUc+BxKF48ITU2fZPytz7RD99ABv6G1S+wmtuOCXbpmCd6fLgmjGw
	mumS3UT9B1Po2uMyVeoFiF8Cm5h9Lsk76wBBhm08ZUT3/XsBvZKeWAAeum8lc06w
	PXyWupuhLCrvN6pFiXqoXUPwdPdRviDYegL171+doS8ahqtH1cqn39mHZColRiX+
	bmepK5Zw/uvJ+q4tMGD4do5T/hYig==
X-ME-Sender: <xms:Ho3yYRGgZukhyPxf97vhQS17GPII78F9zApyuH9iwjxjZ7pkAuns9g>
    <xme:Ho3yYWWJIyqgLK75lZk9S3-yFV_BzbDCyQPpCdwB1EiDizPbWzRaZHIqDpfyUKSCI
    vdrkGDo96Q-0dvbWQ>
X-ME-Received: <xmr:Ho3yYTKWDhXnYSgPXB69_bImGaa5vMKMl-Z8u7QVVMP6xCMPXtURm2ATRwwYqm8gB7Et-MUhTC0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrfeefgdefkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenfg
    hrlhcuvffnffculdehtddmnecujfgurhepkfffgggfuffvfhfhjggtgfesthejredttdef
    jeenucfhrhhomhepvehhrhhishcuuehoohhtuceolhhishhtshessghoohhttgdrsghooh
    drthgtqeenucggtffrrghtthgvrhhnpeelheegteeftdeikeeljefhffeukeffgfeuueff
    fefhtddugeeluefhjefhieejjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmh
    epmhgrihhlfhhrohhmpehlihhsthhssegsohhothgtrdgsohhordhttg
X-ME-Proxy: <xmx:Ho3yYXFLIikGXNfMC6-vQJd_kMWEXdzowsGiWgbRdBsqGg-VrSyeCg>
    <xmx:Ho3yYXVp0RlvA_VoX6nbyS1P_V2zhCnGbM1UmJoLgloUSqhQ1Fi35Q>
    <xmx:Ho3yYSOhq1GwfdOaoUgKjq1q-2nxfzxnT4jub7pgjG7cWxBFeNnzGA>
    <xmx:H43yYUhQMgoqaY9VCOAgvOPoxSYYtGBa22QkjOcR2xsBpZmGE6oD9Q>
Message-ID: <bb863600-2e0d-a977-ad49-875093bd2ad0@bootc.boo.tc>
Date: Thu, 27 Jan 2022 12:16:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-GB
To: oss-security@lists.openwall.com,
 Erik Auerswald <auerswal@unix-ag.uni-kl.de>
Cc: Roman Medina-Heigl Hernandez <roman@rs-labs.com>
References: <20220125175655.GA14958@localhost.localdomain>
 <F9283FD4-A0FC-4944-8659-530684BB33F8@gentoo.org>
 <56d94fb3-cb73-c541-b62b-4239a28afea1@rs-labs.com>
 <YfE/0ldFPlLtuka9@ryzen.bugs.fi> <20220126141121.GA4424@unix-ag.uni-kl.de>
From: Chris Boot <lists@bootc.boo.tc>
In-Reply-To: <20220126141121.GA4424@unix-ag.uni-kl.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] pwnkit: Local Privilege Escalation in polkit's
 pkexec (CVE-2021-4034)

On 26/01/2022 14:11, Erik Auerswald wrote:
> Hi,
> 
> On Wed, Jan 26, 2022 at 02:34:26PM +0200, Henri Salo wrote:
>> On Wed, Jan 26, 2022 at 12:18:07PM +0100, Roman Medina-Heigl Hernandez wrote:
>>> PS: Untested because my Debian machine doesn't contain pkexec,
>>> even though Qualy's advisory says it is by default on Debian.
>>
>> We had discussion off-list with Roman and this is the case only when
>> Debian is updated from previous release to bullseye. In clean installs
>> pkexec is installed.
> 
> I think this depends on how Debian is installed (e.g., keeping installer
> defaults for a desktop system, or using a custom package selection).
> 
> The "policykit-1" containing pkexec is "optional" and thus not present
> in all Debian installations:
> 
>      $ lsb_release -d ; apt-cache show policykit-1 | grep Priority
>      Description:    Debian GNU/Linux 10 (buster)
>      Priority: optional
>      Priority: optional
> 
>      $ lsb_release -d ; apt-cache show policykit-1 | grep Priority
>      Description:	Debian GNU/Linux 11 (bullseye)
>      Priority: optional
>      Priority: optional

It's not as simple as this, and also depends on a lot of factors.

If you have a graphical desktop environment installed, or a wifi card, 
you will almost certainly have policykit-1 and pkexec. If you have a 
GUI-less system it's less likely that you'll have it.

With that said, lots of different packages Recommend or Depend on 
policykit-1, including: firewalld, libvirt, NetworkManager, tuned, and 
realmd. It's also "suggested" by systemd and isc-dhcp-server, so there 
are reasons to have it even if you have nothing otherwise graphical 
installed.

It's effectively an alternative to sudo. If you have it installed and 
you try to e.g. 'systemctl restart $unit' without sudo / having a root 
shell, systemd will use polkit to try to elevate and let you do it.

Cheers,
Chris

-- 
Chris Boot
bootc@boo.tc
